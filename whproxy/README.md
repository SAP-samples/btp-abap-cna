[![License: Apache2](https://img.shields.io/badge/License-Apache2-green.svg)](https://opensource.org/licenses/Apache-2.0)


# Proxy to call SAP BTP ABAP environment web API
[![Read full details here](https://blogs.sap.com/TBD.jog)](https://blogs.sap.com/BTPABAP/TBD.html)

## Description  
This application reads the sales order ID from SAP BTP Event Mesh webhook and calls an exposed BTP ABAP Environment web API

## Requirements
* TBD

## Deployment
Clone or download this repository:
```bash
git clone https://github.com/mendesthi/ABAPProxy.git
```
From its root folder, open the terminal, login to your SCP account and push it.
```bash
cf push --random-route
```
Set the environment variables for the ABAP web API, the S4HC host and Base64 User:Password.
```bash
cf set-env whproxy S4HCTENANT https://<yourS4HC>-api.s4hana.ondemand.com/sap/opu/odata/sap/API_SALES_ORDER_SRV
cf set-env whproxy USERPW <your_b64_userpw>
cf set-env whproxy ABAPTENANT https://<yourABAPTenant>.abap.eu10.hana.ondemand.com/sap/opu/odata/sap/ZAPI_CE_BONUS_CALC_SA
```
For details on how to deploy apps on SCP CF check this tutorial: [Get Started with SAP Cloud Platform Trial](https://developers.sap.com/tutorials/cp-trial-quick-onboarding.html)

## Support and Contributions
This repository is provided "as-is". No warranty or support is available. Feel free to open issues.

## License
Copyright (c) 2020 SAP SE or an SAP affiliate company. All rights reserved. This project is licensed under the Apache Software License, version 2.0 except as noted otherwise in the [LICENSE](LICENSES/Apache-2.0.txt) file.

