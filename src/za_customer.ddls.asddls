/********** GENERATED on 11/25/2021 at 20:48:01 by CB9980000000**************/
 @OData.entitySet.name: 'A_Customer' 
 @OData.entityType.name: 'A_CustomerType' 
 define root abstract entity ZA_CUSTOMER { 
 key Customer : abap.char( 10 ) ; 
 @Odata.property.valueControl: 'AuthorizationGroup_vc' 
 AuthorizationGroup : abap.char( 4 ) ; 
 AuthorizationGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BillingIsBlockedForCustomer_vc' 
 BillingIsBlockedForCustomer : abap.char( 2 ) ; 
 BillingIsBlockedForCustomer_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CreatedByUser_vc' 
 CreatedByUser : abap.char( 12 ) ; 
 CreatedByUser_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CreationDate_vc' 
 CreationDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 CreationDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerAccountGroup_vc' 
 CustomerAccountGroup : abap.char( 4 ) ; 
 CustomerAccountGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerClassification_vc' 
 CustomerClassification : abap.char( 2 ) ; 
 CustomerClassification_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerFullName_vc' 
 CustomerFullName : abap.char( 220 ) ; 
 CustomerFullName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerName_vc' 
 CustomerName : abap.char( 80 ) ; 
 CustomerName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'DeliveryIsBlocked_vc' 
 DeliveryIsBlocked : abap.char( 2 ) ; 
 DeliveryIsBlocked_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'NFPartnerIsNaturalPerson_vc' 
 NFPartnerIsNaturalPerson : abap.char( 1 ) ; 
 NFPartnerIsNaturalPerson_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'OrderIsBlockedForCustomer_vc' 
 OrderIsBlockedForCustomer : abap.char( 2 ) ; 
 OrderIsBlockedForCustomer_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PostingIsBlocked_vc' 
 PostingIsBlocked : abap_boolean ; 
 PostingIsBlocked_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Supplier_vc' 
 Supplier : abap.char( 10 ) ; 
 Supplier_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerCorporateGroup_vc' 
 CustomerCorporateGroup : abap.char( 10 ) ; 
 CustomerCorporateGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'FiscalAddress_vc' 
 FiscalAddress : abap.char( 10 ) ; 
 FiscalAddress_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Industry_vc' 
 Industry : abap.char( 4 ) ; 
 Industry_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IndustryCode1_vc' 
 IndustryCode1 : abap.char( 10 ) ; 
 IndustryCode1_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IndustryCode2_vc' 
 IndustryCode2 : abap.char( 10 ) ; 
 IndustryCode2_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IndustryCode3_vc' 
 IndustryCode3 : abap.char( 10 ) ; 
 IndustryCode3_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IndustryCode4_vc' 
 IndustryCode4 : abap.char( 10 ) ; 
 IndustryCode4_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IndustryCode5_vc' 
 IndustryCode5 : abap.char( 10 ) ; 
 IndustryCode5_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'InternationalLocationNumber_vc' 
 InternationalLocationNumber1 : abap.numc( 7 ) ; 
 InternationalLocationNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'NielsenRegion_vc' 
 NielsenRegion : abap.char( 2 ) ; 
 NielsenRegion_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ResponsibleType_vc' 
 ResponsibleType : abap.char( 2 ) ; 
 ResponsibleType_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'TaxNumber1_vc' 
 TaxNumber1 : abap.char( 16 ) ; 
 TaxNumber1_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'TaxNumber2_vc' 
 TaxNumber2 : abap.char( 11 ) ; 
 TaxNumber2_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'TaxNumber3_vc' 
 TaxNumber3 : abap.char( 18 ) ; 
 TaxNumber3_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'TaxNumber4_vc' 
 TaxNumber4 : abap.char( 18 ) ; 
 TaxNumber4_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'TaxNumber5_vc' 
 TaxNumber5 : abap.char( 60 ) ; 
 TaxNumber5_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'TaxNumberType_vc' 
 TaxNumberType : abap.char( 2 ) ; 
 TaxNumberType_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'VATRegistration_vc' 
 VATRegistration : abap.char( 20 ) ; 
 VATRegistration_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'DeletionIndicator_vc' 
 DeletionIndicator : abap_boolean ; 
 DeletionIndicator_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ExpressTrainStationName_vc' 
 ExpressTrainStationName : abap.char( 25 ) ; 
 ExpressTrainStationName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'TrainStationName_vc' 
 TrainStationName : abap.char( 25 ) ; 
 TrainStationName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CityCode_vc' 
 CityCode : abap.char( 4 ) ; 
 CityCode_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'County_vc' 
 County : abap.char( 3 ) ; 
 County_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'YY1_shipment_cus_vc' 
 YY1_shipment_cus : abap.char( 3 ) ; 
 YY1_shipment_cus_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 @OData.property.name: 'to_CustomerCompany' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _CustomerCompany : association [0..*] to ZA_CUSTOMERCOMPANY on 1 = 1; 
 @OData.property.name: 'to_CustomerSalesArea' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _CustomerSalesArea : association [0..*] to ZA_CUSTOMERSALESAREA on 1 = 1; 
 @OData.property.name: 'to_CustomerTaxGrouping' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _CustomerTaxGrouping : association [0..*] to ZA_CUSTOMERTAXGROUPING on 1 = 1; 
 @OData.property.name: 'to_CustomerText' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _CustomerText : association [0..*] to ZA_CUSTOMERTEXT on 1 = 1; 
 @OData.property.name: 'to_CustomerUnloadingPoint' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _CustomerUnloadingPoint : association [0..*] to ZA_CUSTOMERUNLOADINGPOINT on 1 = 1; 
 } 
