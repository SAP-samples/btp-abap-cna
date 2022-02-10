<!--- Register repository https://api.reuse.software/register, then add REUSE badge:
[![REUSE status](https://api.reuse.software/badge/github.com/SAP-samples/REPO-NAME)](https://api.reuse.software/info/github.com/SAP-samples/REPO-NAME)
-->

# S/4HANA Cloud side-by-side Bonus Calculation Extension (RAP Application)

## Description
This is a reference application to demonstrate the cloud native capabilities of the ABAP RESTfull Application Programming Model (RAP) leveraging all available runtimes from SAP Business Technology Platform (Cloud Foundry, ABAP and Kyma) and some additional services such as Destination and Event Mesh.

## Solution Architecture
![Bonus Calculation Architecture](https://i.imgur.com/AMuy3M9.jpeg "Bonus Calculation Architecture")

## Requirements
* S/4HANA Cloud landscape
* Eclipse IDE (2021-06 or 2021-09)
* ABAP Development Tools for Eclipse (ADT)
* abapGit plug-in for Eclipse
* SAP Business Technology Platform subaccount (with Cloud Foundry, ABAP Environment and Kyma Runtime enabled)
* Event Mesh service entitlement

## Download and Installation
* Open Eclipse IDE
* Connect to Cloud Project to BTP ABAP Environment
* Link this Git Repo to the abapGit in Eclipse, checking the "Pull after link" option
* Activate all artifacts from the packge into which you pulled the code in your ABAP Environment
* Open the service binding: Z_SB_BONUS_CALCULATION_SA and click "Publish"
* Right clikc the BonusCalculation entity and select Open "Open Fiori Elements App Preview"

## Known Issues
N/A

## How to obtain support
[Create an issue](https://github.com/SAP-samples/btp-abap-cna/issues) in this repository if you find a bug or have questions about the content.
 
For additional support, [ask a question in SAP Community](https://answers.sap.com/questions/ask.html).

## Contributing
If you wish to contribute code, offer fixes or improvements, please send a pull request. Due to legal reasons, contributors will be asked to accept a DCO when they create the first pull request to this project. This happens in an automated fashion during the submission process. SAP uses [the standard DCO text of the Linux Foundation](https://developercertificate.org/).

## License
Copyright (c) 2022 SAP SE or an SAP affiliate company. All rights reserved. This project is licensed under the Apache Software License, version 2.0 except as noted otherwise in the [LICENSE](LICENSES/Apache-2.0.txt) file.
