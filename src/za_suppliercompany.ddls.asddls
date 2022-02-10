/********** GENERATED on 11/25/2021 at 20:50:13 by CB9980000000**************/
 @OData.entitySet.name: 'A_SupplierCompany' 
 @OData.entityType.name: 'A_SupplierCompanyType' 

/*+[hideWarning] { "IDS" : [ "CARDINALITY_CHECK" ] }*/
 define root abstract entity ZA_SUPPLIERCOMPANY { 
 key Supplier : abap.char( 10 ) ; 
 key CompanyCode : abap.char( 4 ) ; 
 @Odata.property.valueControl: 'AuthorizationGroup_vc' 
 AuthorizationGroup : abap.char( 4 ) ; 
 AuthorizationGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CompanyCodeName_vc' 
 CompanyCodeName : abap.char( 25 ) ; 
 CompanyCodeName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PaymentBlockingReason_vc' 
 PaymentBlockingReason : abap.char( 1 ) ; 
 PaymentBlockingReason_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SupplierIsBlockedForPosting_vc' 
 SupplierIsBlockedForPosting : abap_boolean ; 
 SupplierIsBlockedForPosting_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AccountingClerk_vc' 
 AccountingClerk : abap.char( 2 ) ; 
 AccountingClerk_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AccountingClerkFaxNumber_vc' 
 AccountingClerkFaxNumber : abap.char( 31 ) ; 
 AccountingClerkFaxNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AccountingClerkPhoneNumber_vc' 
 AccountingClerkPhoneNumber : abap.char( 30 ) ; 
 AccountingClerkPhoneNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SupplierClerk_vc' 
 SupplierClerk : abap.char( 15 ) ; 
 SupplierClerk_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SupplierClerkURL_vc' 
 SupplierClerkURL : abap.char( 130 ) ; 
 SupplierClerkURL_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PaymentMethodsList_vc' 
 PaymentMethodsList : abap.char( 10 ) ; 
 PaymentMethodsList_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PaymentTerms_vc' 
 PaymentTerms : abap.char( 4 ) ; 
 PaymentTerms_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ClearCustomerSupplier_vc' 
 ClearCustomerSupplier : abap_boolean ; 
 ClearCustomerSupplier_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IsToBeLocallyProcessed_vc' 
 IsToBeLocallyProcessed : abap_boolean ; 
 IsToBeLocallyProcessed_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ItemIsToBePaidSeparately_vc' 
 ItemIsToBePaidSeparately : abap_boolean ; 
 ItemIsToBePaidSeparately_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PaymentIsToBeSentByEDI_vc' 
 PaymentIsToBeSentByEDI : abap_boolean ; 
 PaymentIsToBeSentByEDI_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'HouseBank_vc' 
 HouseBank : abap.char( 5 ) ; 
 HouseBank_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CheckPaidDurationInDays_vc' 
 CheckPaidDurationInDays : abap.dec( 3, 0 ) ; 
 CheckPaidDurationInDays_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Currency_vc' 
 @Semantics.currencyCode: true 
 Currency : abap.cuky ; 
 Currency_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BillOfExchLmtAmtInCoCodeCrc_vc' 
 @Semantics.amount.currencyCode: 'Currency' 
 BillOfExchLmtAmtInCoCodeCrcy : abap.curr( 14, 3 ) ; 
 BillOfExchLmtAmtInCoCodeCrc_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SupplierClerkIDBySupplier_vc' 
 SupplierClerkIDBySupplier : abap.char( 12 ) ; 
 SupplierClerkIDBySupplier_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ReconciliationAccount_vc' 
 ReconciliationAccount : abap.char( 10 ) ; 
 ReconciliationAccount_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'InterestCalculationCode_vc' 
 InterestCalculationCode : abap.char( 2 ) ; 
 InterestCalculationCode_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'InterestCalculationDate_vc' 
 InterestCalculationDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 InterestCalculationDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IntrstCalcFrequencyInMonths_vc' 
 IntrstCalcFrequencyInMonths : abap.numc( 2 ) ; 
 IntrstCalcFrequencyInMonths_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SupplierHeadOffice_vc' 
 SupplierHeadOffice : abap.char( 10 ) ; 
 SupplierHeadOffice_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AlternativePayee_vc' 
 AlternativePayee : abap.char( 10 ) ; 
 AlternativePayee_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'LayoutSortingRule_vc' 
 LayoutSortingRule : abap.char( 3 ) ; 
 LayoutSortingRule_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'APARToleranceGroup_vc' 
 APARToleranceGroup : abap.char( 4 ) ; 
 APARToleranceGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SupplierCertificationDate_vc' 
 SupplierCertificationDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 SupplierCertificationDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SupplierAccountNote_vc' 
 SupplierAccountNote : abap.char( 30 ) ; 
 SupplierAccountNote_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'WithholdingTaxCountry_vc' 
 WithholdingTaxCountry : abap.char( 3 ) ; 
 WithholdingTaxCountry_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'DeletionIndicator_vc' 
 DeletionIndicator : abap_boolean ; 
 DeletionIndicator_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CashPlanningGroup_vc' 
 CashPlanningGroup : abap.char( 10 ) ; 
 CashPlanningGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IsToBeCheckedForDuplicates_vc' 
 IsToBeCheckedForDuplicates : abap_boolean ; 
 IsToBeCheckedForDuplicates_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MinorityGroup_vc' 
 MinorityGroup : abap.char( 3 ) ; 
 MinorityGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SupplierAccountGroup_vc' 
 SupplierAccountGroup : abap.char( 4 ) ; 
 SupplierAccountGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 @OData.property.name: 'to_CompanyText' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _CompanyText1 : association [0..*] to ZA_SUPPLIERCOMPANYTEXT on 1 = 1; 
 @OData.property.name: 'to_Supplier' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _Supplier1 : association [1] to ZA_SUPPLIER on 1 = 1; 
 @OData.property.name: 'to_SupplierDunning' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _SupplierDunning : association [0..*] to ZA_SUPPLIERDUNNING on 1 = 1; 
 @OData.property.name: 'to_SupplierWithHoldingTax' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _SupplierWithHoldingTax : association [0..*] to ZA_SUPPLIERWITHHOLDINGTAX on 1 = 1; 
 } 
