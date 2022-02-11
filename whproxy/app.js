"use strict";
//require('dotenv').config({path: __dirname + '/.env'});
const express = require("express");
const cors = require("cors");
const bodyParser = require("body-parser");
var axios = require("axios").default;

var app = express();

const USERPW = process.env.USERPW;
const ABAPTENANT = process.env.ABAPTENANT;
const S4HCTENANT = process.env.S4HCTENANT;

//support json encoded bodies
app.use(bodyParser.json());
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
);

app.use(cors());

//Parse JSON bodies (as sent by API clients)
app.use(express.json());

//End-point to SAP BTP Event Mesh's webhook
app.post("/calc", function (req, res) {
  console.log("Sales Order: " + req.body.data.SalesOrder);

  //1st - Renew X-CSRF-Token
  var options = {
    method: "GET",
    url: ABAPTENANT + "/$metadata",
    headers: {
      "x-csrf-token": "fetch",
      Authorization: "Basic " + USERPW,
    },
  };

  axios
    .request(options)
    .then(function (response) {
      var csrfToken = response.headers["x-csrf-token"];
      var sapSessID = response.headers["set-cookie"];
      
      //2nd - Get the Employee code from S4 Sales Order
      var options = {
        method: "GET",
        url: S4HCTENANT + "/A_SalesOrder('" + req.body.data.SalesOrder + "')",
        params: {
          $format: "json",
          $select: "CreatedByUser"
        },
        headers: {
          "Content-Type": "application/json",
          Authorization: "Basic " + USERPW,
        },
      };

      axios
        .request(options)
        .then(function (response) {
          var employeeID = response.data.d.CreatedByUser.substring(2);
          console.log("Employee ID: " + employeeID);

          //3rd - call ABAP RAP endpoint
          var axios = require("axios").default;
          var options = {
            method: "POST",
            url: ABAPTENANT + "/calculate_bonus_event?ID='" + employeeID + "'",
            headers: {
              cookie: sapSessID[1].split(";", 1).toString() +  "; sap-usercontext=sap-client=100",
              "x-csrf-token": csrfToken,
              "If-Match": "*",
              Accept: "application/json",
              Authorization: "Basic " + USERPW,
            },
          };

          axios
            .request(options)
            .then(function (response) {
              res.set("content-type", "application/json");
              res.status(response.status).send(response.data);
            })
            .catch(function (error) {
              console.error(error);
            });
        })
        .catch(function (error) {
          console.error(error);
        });
    })
    .catch(function (error) {
      console.error(error);
    });
});

var port = process.env.PORT || 30000;
app.listen(port, function () {
  console.log("Listening on port " + port);
});