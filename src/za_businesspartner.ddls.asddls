/********** GENERATED on 11/25/2021 at 20:50:05 by CB9980000000**************/
 @OData.entitySet.name: 'A_BusinessPartner' 
 @OData.entityType.name: 'A_BusinessPartnerType' 

/*+[hideWarning] { "IDS" : [ "CARDINALITY_CHECK" ] }*/
 define root abstract entity ZA_BUSINESSPARTNER { 
 key BusinessPartner : abap.char( 10 ) ; 
 @Odata.property.valueControl: 'Customer_vc' 
 Customer : abap.char( 10 ) ; 
 Customer_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Supplier_vc' 
 Supplier : abap.char( 10 ) ; 
 Supplier_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AcademicTitle_vc' 
 AcademicTitle : abap.char( 4 ) ; 
 AcademicTitle_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AuthorizationGroup_vc' 
 AuthorizationGroup : abap.char( 4 ) ; 
 AuthorizationGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BusinessPartnerCategory_vc' 
 BusinessPartnerCategory : abap.char( 1 ) ; 
 BusinessPartnerCategory_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BusinessPartnerFullName_vc' 
 BusinessPartnerFullName : abap.char( 81 ) ; 
 BusinessPartnerFullName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BusinessPartnerGrouping_vc' 
 BusinessPartnerGrouping : abap.char( 4 ) ; 
 BusinessPartnerGrouping_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BusinessPartnerName_vc' 
 BusinessPartnerName : abap.char( 81 ) ; 
 BusinessPartnerName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BusinessPartnerUUID_vc' 
 BusinessPartnerUUID : sysuuid_x16 ; 
 BusinessPartnerUUID_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CorrespondenceLanguage_vc' 
 CorrespondenceLanguage : abap.char( 2 ) ; 
 CorrespondenceLanguage_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CreatedByUser_vc' 
 CreatedByUser : abap.char( 12 ) ; 
 CreatedByUser_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CreationDate_vc' 
 CreationDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 CreationDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CreationTime_vc' 
 CreationTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 CreationTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'FirstName_vc' 
 FirstName : abap.char( 40 ) ; 
 FirstName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'FormOfAddress_vc' 
 FormOfAddress : abap.char( 4 ) ; 
 FormOfAddress_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Industry_vc' 
 Industry : abap.char( 10 ) ; 
 Industry_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'InternationalLocationNumber_vc' 
 InternationalLocationNumber1 : abap.numc( 7 ) ; 
 InternationalLocationNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'InternationalLocationNumber_v1' 
 InternationalLocationNumber2 : abap.numc( 5 ) ; 
 InternationalLocationNumber_v1 : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IsFemale_vc' 
 IsFemale : abap_boolean ; 
 IsFemale_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IsMale_vc' 
 IsMale : abap_boolean ; 
 IsMale_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IsNaturalPerson_vc' 
 IsNaturalPerson : abap.char( 1 ) ; 
 IsNaturalPerson_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IsSexUnknown_vc' 
 IsSexUnknown : abap_boolean ; 
 IsSexUnknown_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'GenderCodeName_vc' 
 GenderCodeName : abap.char( 1 ) ; 
 GenderCodeName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Language_vc' 
 Language : abap.char( 2 ) ; 
 Language_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'LastChangeDate_vc' 
 LastChangeDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 LastChangeDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'LastChangeTime_vc' 
 LastChangeTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 LastChangeTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'LastChangedByUser_vc' 
 LastChangedByUser : abap.char( 12 ) ; 
 LastChangedByUser_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'LastName_vc' 
 LastName : abap.char( 40 ) ; 
 LastName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'LegalForm_vc' 
 LegalForm : abap.char( 2 ) ; 
 LegalForm_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'OrganizationBPName1_vc' 
 OrganizationBPName1 : abap.char( 40 ) ; 
 OrganizationBPName1_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'OrganizationBPName2_vc' 
 OrganizationBPName2 : abap.char( 40 ) ; 
 OrganizationBPName2_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'OrganizationBPName3_vc' 
 OrganizationBPName3 : abap.char( 40 ) ; 
 OrganizationBPName3_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'OrganizationBPName4_vc' 
 OrganizationBPName4 : abap.char( 40 ) ; 
 OrganizationBPName4_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'OrganizationFoundationDate_vc' 
 OrganizationFoundationDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 OrganizationFoundationDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'OrganizationLiquidationDate_vc' 
 OrganizationLiquidationDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 OrganizationLiquidationDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SearchTerm1_vc' 
 SearchTerm1 : abap.char( 20 ) ; 
 SearchTerm1_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SearchTerm2_vc' 
 SearchTerm2 : abap.char( 20 ) ; 
 SearchTerm2_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AdditionalLastName_vc' 
 AdditionalLastName : abap.char( 40 ) ; 
 AdditionalLastName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BirthDate_vc' 
 BirthDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 BirthDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BusinessPartnerBirthDateSta_vc' 
 BusinessPartnerBirthDateStatus : abap.char( 1 ) ; 
 BusinessPartnerBirthDateSta_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BusinessPartnerBirthplaceNa_vc' 
 BusinessPartnerBirthplaceName : abap.char( 40 ) ; 
 BusinessPartnerBirthplaceNa_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BusinessPartnerDeathDate_vc' 
 BusinessPartnerDeathDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 BusinessPartnerDeathDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BusinessPartnerIsBlocked_vc' 
 BusinessPartnerIsBlocked : abap_boolean ; 
 BusinessPartnerIsBlocked_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BusinessPartnerType_vc' 
 BusinessPartnerType : abap.char( 4 ) ; 
 BusinessPartnerType_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ETag_vc' 
 ETag : abap.char( 26 ) ; 
 ETag_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'GroupBusinessPartnerName1_vc' 
 GroupBusinessPartnerName1 : abap.char( 40 ) ; 
 GroupBusinessPartnerName1_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'GroupBusinessPartnerName2_vc' 
 GroupBusinessPartnerName2 : abap.char( 40 ) ; 
 GroupBusinessPartnerName2_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IndependentAddressID_vc' 
 IndependentAddressID : abap.char( 10 ) ; 
 IndependentAddressID_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'InternationalLocationNumber_v2' 
 InternationalLocationNumber3 : abap.numc( 1 ) ; 
 InternationalLocationNumber_v2 : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MiddleName_vc' 
 MiddleName : abap.char( 40 ) ; 
 MiddleName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'NameCountry_vc' 
 NameCountry : abap.char( 3 ) ; 
 NameCountry_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'NameFormat_vc' 
 NameFormat : abap.char( 2 ) ; 
 NameFormat_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PersonFullName_vc' 
 PersonFullName : abap.char( 80 ) ; 
 PersonFullName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PersonNumber_vc' 
 PersonNumber : abap.char( 10 ) ; 
 PersonNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IsMarkedForArchiving_vc' 
 IsMarkedForArchiving : abap_boolean ; 
 IsMarkedForArchiving_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BusinessPartnerIDByExtSyste_vc' 
 BusinessPartnerIDByExtSystem : abap.char( 20 ) ; 
 BusinessPartnerIDByExtSyste_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'TradingPartner_vc' 
 TradingPartner : abap.char( 6 ) ; 
 TradingPartner_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'YY1_testextens_bus_vc' 
 YY1_testextens_bus : abap.char( 4 ) ; 
 YY1_testextens_bus_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 @OData.property.name: 'to_BuPaIdentification' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _BuPaIdentification : association [0..*] to ZA_BUPAIDENTIFICATION on 1 = 1; 
 @OData.property.name: 'to_BuPaIndustry' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _BuPaIndustry : association [0..*] to ZA_BUPAINDUSTRY on 1 = 1; 
 @OData.property.name: 'to_BusinessPartnerAddress' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _BusinessPartnerAddress : association [0..*] to ZA_BUSINESSPARTNERADDRESS on 1 = 1; 
 @OData.property.name: 'to_BusinessPartnerBank' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _BusinessPartnerBank : association [0..*] to ZA_BUSINESSPARTNERBANK on 1 = 1; 
 @OData.property.name: 'to_BusinessPartnerContact' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _BusinessPartnerContact : association [0..*] to ZA_BUSINESSPARTNERCONTACT on 1 = 1; 
 @OData.property.name: 'to_BusinessPartnerRole' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _BusinessPartnerRole : association [0..*] to ZA_BUSINESSPARTNERROLE on 1 = 1; 
 @OData.property.name: 'to_BusinessPartnerTax' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _BusinessPartnerTax : association [0..*] to ZA_BUSINESSPARTNERTAXNUMBER on 1 = 1; 
 @OData.property.name: 'to_Customer' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _Customer : association [1] to ZA_CUSTOMER on 1 = 1; 
 @OData.property.name: 'to_Supplier' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _Supplier : association [1] to ZA_SUPPLIER on 1 = 1; 
 } 
