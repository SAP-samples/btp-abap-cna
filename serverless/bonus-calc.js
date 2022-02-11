module.exports = { 
    main: function (event, context) {
      let msg;
      try {
          msg = JSON.parse(event.data);
      } catch (e) {
          if (event.data) {
              msg = event.data
          } else {
              return "Looks like there is some issue with the data format. Expected data format: JSON/String";
          }
      }
  
      const result = {
        bonusamount : ((msg.actualrevenueamount > msg.targetamount) ? (( msg.actualrevenueamount - msg.targetamount ) * msg.bonuspercentage / 100) : 0)
      };
  
      return result;
    }
  }