/********** GENERATED on 11/25/2021 at 20:48:03 by CB9980000000**************/
 @OData.entitySet.name: 'A_CustomerCompany' 
 @OData.entityType.name: 'A_CustomerCompanyType' 
 define root abstract entity ZA_CUSTOMERCOMPANY { 
 key Customer : abap.char( 10 ) ; 
 key CompanyCode : abap.char( 4 ) ; 
 @Odata.property.valueControl: 'APARToleranceGroup_vc' 
 APARToleranceGroup : abap.char( 4 ) ; 
 APARToleranceGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AccountByCustomer_vc' 
 AccountByCustomer : abap.char( 12 ) ; 
 AccountByCustomer_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AccountingClerk_vc' 
 AccountingClerk : abap.char( 2 ) ; 
 AccountingClerk_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AccountingClerkFaxNumber_vc' 
 AccountingClerkFaxNumber : abap.char( 31 ) ; 
 AccountingClerkFaxNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AccountingClerkInternetAddr_vc' 
 AccountingClerkInternetAddress : abap.char( 130 ) ; 
 AccountingClerkInternetAddr_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AccountingClerkPhoneNumber_vc' 
 AccountingClerkPhoneNumber : abap.char( 30 ) ; 
 AccountingClerkPhoneNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AlternativePayerAccount_vc' 
 AlternativePayerAccount : abap.char( 10 ) ; 
 AlternativePayerAccount_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AuthorizationGroup_vc' 
 AuthorizationGroup : abap.char( 4 ) ; 
 AuthorizationGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CollectiveInvoiceVariant_vc' 
 CollectiveInvoiceVariant : abap.char( 1 ) ; 
 CollectiveInvoiceVariant_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerAccountNote_vc' 
 CustomerAccountNote : abap.char( 30 ) ; 
 CustomerAccountNote_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerHeadOffice_vc' 
 CustomerHeadOffice : abap.char( 10 ) ; 
 CustomerHeadOffice_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerSupplierClearingIsU_vc' 
 CustomerSupplierClearingIsUsed : abap_boolean ; 
 CustomerSupplierClearingIsU_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'HouseBank_vc' 
 HouseBank : abap.char( 5 ) ; 
 HouseBank_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'InterestCalculationCode_vc' 
 InterestCalculationCode : abap.char( 2 ) ; 
 InterestCalculationCode_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'InterestCalculationDate_vc' 
 InterestCalculationDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 InterestCalculationDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IntrstCalcFrequencyInMonths_vc' 
 IntrstCalcFrequencyInMonths : abap.numc( 2 ) ; 
 IntrstCalcFrequencyInMonths_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IsToBeLocallyProcessed_vc' 
 IsToBeLocallyProcessed : abap_boolean ; 
 IsToBeLocallyProcessed_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ItemIsToBePaidSeparately_vc' 
 ItemIsToBePaidSeparately : abap_boolean ; 
 ItemIsToBePaidSeparately_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'LayoutSortingRule_vc' 
 LayoutSortingRule : abap.char( 3 ) ; 
 LayoutSortingRule_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PaymentBlockingReason_vc' 
 PaymentBlockingReason : abap.char( 1 ) ; 
 PaymentBlockingReason_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PaymentMethodsList_vc' 
 PaymentMethodsList : abap.char( 10 ) ; 
 PaymentMethodsList_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PaymentTerms_vc' 
 PaymentTerms : abap.char( 4 ) ; 
 PaymentTerms_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PaytAdviceIsSentbyEDI_vc' 
 PaytAdviceIsSentbyEDI : abap_boolean ; 
 PaytAdviceIsSentbyEDI_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PhysicalInventoryBlockInd_vc' 
 PhysicalInventoryBlockInd : abap_boolean ; 
 PhysicalInventoryBlockInd_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ReconciliationAccount_vc' 
 ReconciliationAccount : abap.char( 10 ) ; 
 ReconciliationAccount_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RecordPaymentHistoryIndicat_vc' 
 RecordPaymentHistoryIndicator : abap_boolean ; 
 RecordPaymentHistoryIndicat_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'UserAtCustomer_vc' 
 UserAtCustomer : abap.char( 15 ) ; 
 UserAtCustomer_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'DeletionIndicator_vc' 
 DeletionIndicator : abap_boolean ; 
 DeletionIndicator_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CashPlanningGroup_vc' 
 CashPlanningGroup : abap.char( 10 ) ; 
 CashPlanningGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'KnownOrNegotiatedLeave_vc' 
 KnownOrNegotiatedLeave : abap.char( 4 ) ; 
 KnownOrNegotiatedLeave_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ValueAdjustmentKey_vc' 
 ValueAdjustmentKey : abap.char( 2 ) ; 
 ValueAdjustmentKey_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerAccountGroup_vc' 
 CustomerAccountGroup : abap.char( 4 ) ; 
 CustomerAccountGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 @OData.property.name: 'to_CompanyText' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _CompanyText : association [0..*] to ZA_CUSTOMERCOMPANYTEXT on 1 = 1; 
 @OData.property.name: 'to_CustomerDunning' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _CustomerDunning : association [0..*] to ZA_CUSTOMERDUNNING on 1 = 1; 
 @OData.property.name: 'to_WithHoldingTax' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _WithHoldingTax : association [0..*] to ZA_CUSTOMERWITHHOLDINGTAX on 1 = 1; 
 } 
