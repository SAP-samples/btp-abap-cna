/********** GENERATED on 11/25/2021 at 20:48:24 by CB9980000000**************/
 @OData.entitySet.name: 'A_SupplierPurchasingOrg' 
 @OData.entityType.name: 'A_SupplierPurchasingOrgType' 
 define root abstract entity ZA_SUPPLIERPURCHASINGORG { 
 key Supplier : abap.char( 10 ) ; 
 key PurchasingOrganization : abap.char( 4 ) ; 
 @Odata.property.valueControl: 'CalculationSchemaGroupCode_vc' 
 CalculationSchemaGroupCode : abap.char( 2 ) ; 
 CalculationSchemaGroupCode_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'DeletionIndicator_vc' 
 DeletionIndicator : abap_boolean ; 
 DeletionIndicator_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IncotermsClassification_vc' 
 IncotermsClassification : abap.char( 3 ) ; 
 IncotermsClassification_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IncotermsTransferLocation_vc' 
 IncotermsTransferLocation : abap.char( 28 ) ; 
 IncotermsTransferLocation_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IncotermsVersion_vc' 
 IncotermsVersion : abap.char( 4 ) ; 
 IncotermsVersion_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IncotermsLocation1_vc' 
 IncotermsLocation1 : abap.char( 70 ) ; 
 IncotermsLocation1_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IncotermsLocation2_vc' 
 IncotermsLocation2 : abap.char( 70 ) ; 
 IncotermsLocation2_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'InvoiceIsGoodsReceiptBased_vc' 
 InvoiceIsGoodsReceiptBased : abap_boolean ; 
 InvoiceIsGoodsReceiptBased_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MaterialPlannedDeliveryDurn_vc' 
 MaterialPlannedDeliveryDurn : abap.dec( 3, 0 ) ; 
 MaterialPlannedDeliveryDurn_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MinimumOrderAmount_vc' 
 @Semantics.amount.currencyCode: 'PurchaseOrderCurrency' 
 MinimumOrderAmount : abap.curr( 14, 3 ) ; 
 MinimumOrderAmount_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PaymentTerms_vc' 
 PaymentTerms : abap.char( 4 ) ; 
 PaymentTerms_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PricingDateControl_vc' 
 PricingDateControl : abap.char( 1 ) ; 
 PricingDateControl_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PurOrdAutoGenerationIsAllow_vc' 
 PurOrdAutoGenerationIsAllowed : abap_boolean ; 
 PurOrdAutoGenerationIsAllow_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PurchaseOrderCurrency_vc' 
 @Semantics.currencyCode: true 
 PurchaseOrderCurrency : abap.cuky ; 
 PurchaseOrderCurrency_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PurchasingGroup_vc' 
 PurchasingGroup : abap.char( 3 ) ; 
 PurchasingGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PurchasingIsBlockedForSuppl_vc' 
 PurchasingIsBlockedForSupplier : abap_boolean ; 
 PurchasingIsBlockedForSuppl_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ShippingCondition_vc' 
 ShippingCondition : abap.char( 2 ) ; 
 ShippingCondition_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SupplierABCClassificationCo_vc' 
 SupplierABCClassificationCode : abap.char( 1 ) ; 
 SupplierABCClassificationCo_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SupplierPhoneNumber_vc' 
 SupplierPhoneNumber : abap.char( 16 ) ; 
 SupplierPhoneNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SupplierRespSalesPersonName_vc' 
 SupplierRespSalesPersonName : abap.char( 30 ) ; 
 SupplierRespSalesPersonName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SupplierConfirmationControl_vc' 
 SupplierConfirmationControlKey : abap.char( 4 ) ; 
 SupplierConfirmationControl_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IsOrderAcknRqd_vc' 
 IsOrderAcknRqd : abap_boolean ; 
 IsOrderAcknRqd_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AuthorizationGroup_vc' 
 AuthorizationGroup : abap.char( 4 ) ; 
 AuthorizationGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SupplierAccountGroup_vc' 
 SupplierAccountGroup : abap.char( 4 ) ; 
 SupplierAccountGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 @OData.property.name: 'to_PartnerFunction' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _PartnerFunction1 : association [0..*] to ZA_SUPPLIERPARTNERFUNC on 1 = 1; 
 @OData.property.name: 'to_PurchasingOrgText' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _PurchasingOrgText : association [0..*] to ZA_SUPPLIERPURCHASINGORGTEXT on 1 = 1; 
 } 
