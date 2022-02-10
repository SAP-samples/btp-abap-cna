/********** GENERATED on 11/25/2021 at 20:48:17 by CB9980000000**************/
 @OData.entitySet.name: 'A_Supplier' 
 @OData.entityType.name: 'A_SupplierType' 
 define root abstract entity ZA_SUPPLIER { 
 key Supplier : abap.char( 10 ) ; 
 @Odata.property.valueControl: 'AlternativePayeeAccountNumb_vc' 
 AlternativePayeeAccountNumber : abap.char( 10 ) ; 
 AlternativePayeeAccountNumb_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AuthorizationGroup_vc' 
 AuthorizationGroup : abap.char( 4 ) ; 
 AuthorizationGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CreatedByUser_vc' 
 CreatedByUser : abap.char( 12 ) ; 
 CreatedByUser_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CreationDate_vc' 
 CreationDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 CreationDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Customer_vc' 
 Customer : abap.char( 10 ) ; 
 Customer_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PaymentIsBlockedForSupplier_vc' 
 PaymentIsBlockedForSupplier : abap_boolean ; 
 PaymentIsBlockedForSupplier_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PostingIsBlocked_vc' 
 PostingIsBlocked : abap_boolean ; 
 PostingIsBlocked_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PurchasingIsBlocked_vc' 
 PurchasingIsBlocked : abap_boolean ; 
 PurchasingIsBlocked_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SupplierAccountGroup_vc' 
 SupplierAccountGroup : abap.char( 4 ) ; 
 SupplierAccountGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SupplierFullName_vc' 
 SupplierFullName : abap.char( 220 ) ; 
 SupplierFullName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SupplierName_vc' 
 SupplierName : abap.char( 80 ) ; 
 SupplierName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'VATRegistration_vc' 
 VATRegistration : abap.char( 20 ) ; 
 VATRegistration_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BirthDate_vc' 
 BirthDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 BirthDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ConcatenatedInternationalLo_vc' 
 ConcatenatedInternationalLocNo : abap.char( 20 ) ; 
 ConcatenatedInternationalLo_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'DeletionIndicator_vc' 
 DeletionIndicator : abap_boolean ; 
 DeletionIndicator_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'FiscalAddress_vc' 
 FiscalAddress : abap.char( 10 ) ; 
 FiscalAddress_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Industry_vc' 
 Industry : abap.char( 4 ) ; 
 Industry_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'InternationalLocationNumber_vc' 
 InternationalLocationNumber1 : abap.numc( 7 ) ; 
 InternationalLocationNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'InternationalLocationNumber_v1' 
 InternationalLocationNumber2 : abap.numc( 5 ) ; 
 InternationalLocationNumber_v1 : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'InternationalLocationNumber_v2' 
 InternationalLocationNumber3 : abap.numc( 1 ) ; 
 InternationalLocationNumber_v2 : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IsNaturalPerson_vc' 
 IsNaturalPerson : abap.char( 1 ) ; 
 IsNaturalPerson_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ResponsibleType_vc' 
 ResponsibleType : abap.char( 2 ) ; 
 ResponsibleType_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SuplrQltyInProcmtCertfnVali_vc' 
 SuplrQltyInProcmtCertfnValidTo : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 SuplrQltyInProcmtCertfnVali_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SuplrQualityManagementSyste_vc' 
 SuplrQualityManagementSystem : abap.char( 4 ) ; 
 SuplrQualityManagementSyste_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SupplierCorporateGroup_vc' 
 SupplierCorporateGroup : abap.char( 10 ) ; 
 SupplierCorporateGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SupplierProcurementBlock_vc' 
 SupplierProcurementBlock : abap.char( 2 ) ; 
 SupplierProcurementBlock_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
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
 @Odata.property.valueControl: 'TaxNumberResponsible_vc' 
 TaxNumberResponsible : abap.char( 18 ) ; 
 TaxNumberResponsible_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'TaxNumberType_vc' 
 TaxNumberType : abap.char( 2 ) ; 
 TaxNumberType_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SuplrProofOfDelivRlvtCode_vc' 
 SuplrProofOfDelivRlvtCode : abap.char( 1 ) ; 
 SuplrProofOfDelivRlvtCode_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BR_TaxIsSplit_vc' 
 BR_TaxIsSplit : abap_boolean ; 
 BR_TaxIsSplit_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'DataExchangeInstructionKey_vc' 
 DataExchangeInstructionKey : abap.char( 2 ) ; 
 DataExchangeInstructionKey_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 @OData.property.name: 'to_SupplierCompany' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _SupplierCompany : association [0..*] to ZA_SUPPLIERCOMPANY on 1 = 1; 
 @OData.property.name: 'to_SupplierPurchasingOrg' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _SupplierPurchasingOrg : association [0..*] to ZA_SUPPLIERPURCHASINGORG on 1 = 1; 
 @OData.property.name: 'to_SupplierText' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _SupplierText : association [0..*] to ZA_SUPPLIERTEXT on 1 = 1; 
 } 
