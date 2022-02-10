/********** GENERATED on 11/25/2021 at 20:48:28 by CB9980000000**************/
 @OData.entitySet.name: 'A_SupplierWithHoldingTax' 
 @OData.entityType.name: 'A_SupplierWithHoldingTaxType' 
 define root abstract entity ZA_SUPPLIERWITHHOLDINGTAX { 
 key Supplier : abap.char( 10 ) ; 
 key CompanyCode : abap.char( 4 ) ; 
 key WithholdingTaxType : abap.char( 2 ) ; 
 @Odata.property.valueControl: 'ExemptionDateBegin_vc' 
 ExemptionDateBegin : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 ExemptionDateBegin_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ExemptionDateEnd_vc' 
 ExemptionDateEnd : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 ExemptionDateEnd_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ExemptionReason_vc' 
 ExemptionReason : abap.char( 2 ) ; 
 ExemptionReason_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IsWithholdingTaxSubject_vc' 
 IsWithholdingTaxSubject : abap_boolean ; 
 IsWithholdingTaxSubject_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RecipientType_vc' 
 RecipientType : abap.char( 2 ) ; 
 RecipientType_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'WithholdingTaxCertificate_vc' 
 WithholdingTaxCertificate : abap.char( 25 ) ; 
 WithholdingTaxCertificate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'WithholdingTaxCode_vc' 
 WithholdingTaxCode : abap.char( 2 ) ; 
 WithholdingTaxCode_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'WithholdingTaxExmptPercent_vc' 
 WithholdingTaxExmptPercent : abap.dec( 5, 2 ) ; 
 WithholdingTaxExmptPercent_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'WithholdingTaxNumber_vc' 
 WithholdingTaxNumber : abap.char( 16 ) ; 
 WithholdingTaxNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AuthorizationGroup_vc' 
 AuthorizationGroup : abap.char( 4 ) ; 
 AuthorizationGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
