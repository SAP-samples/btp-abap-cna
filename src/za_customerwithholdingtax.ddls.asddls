/********** GENERATED on 11/25/2021 at 20:48:15 by CB9980000000**************/
 @OData.entitySet.name: 'A_CustomerWithHoldingTax' 
 @OData.entityType.name: 'A_CustomerWithHoldingTaxType' 
 define root abstract entity ZA_CUSTOMERWITHHOLDINGTAX { 
 key Customer : abap.char( 10 ) ; 
 key CompanyCode : abap.char( 4 ) ; 
 key WithholdingTaxType : abap.char( 2 ) ; 
 @Odata.property.valueControl: 'WithholdingTaxCode_vc' 
 WithholdingTaxCode : abap.char( 2 ) ; 
 WithholdingTaxCode_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'WithholdingTaxAgent_vc' 
 WithholdingTaxAgent : abap_boolean ; 
 WithholdingTaxAgent_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ObligationDateBegin_vc' 
 ObligationDateBegin : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 ObligationDateBegin_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ObligationDateEnd_vc' 
 ObligationDateEnd : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 ObligationDateEnd_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'WithholdingTaxNumber_vc' 
 WithholdingTaxNumber : abap.char( 16 ) ; 
 WithholdingTaxNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'WithholdingTaxCertificate_vc' 
 WithholdingTaxCertificate : abap.char( 25 ) ; 
 WithholdingTaxCertificate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'WithholdingTaxExmptPercent_vc' 
 WithholdingTaxExmptPercent : abap.dec( 5, 2 ) ; 
 WithholdingTaxExmptPercent_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ExemptionDateBegin_vc' 
 ExemptionDateBegin : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 ExemptionDateBegin_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ExemptionDateEnd_vc' 
 ExemptionDateEnd : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 ExemptionDateEnd_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ExemptionReason_vc' 
 ExemptionReason : abap.char( 2 ) ; 
 ExemptionReason_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AuthorizationGroup_vc' 
 AuthorizationGroup : abap.char( 4 ) ; 
 AuthorizationGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
