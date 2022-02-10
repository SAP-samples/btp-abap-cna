/********** GENERATED on 11/25/2021 at 20:48:05 by CB9980000000**************/
 @OData.entitySet.name: 'A_CustomerDunning' 
 @OData.entityType.name: 'A_CustomerDunningType' 
 define root abstract entity ZA_CUSTOMERDUNNING { 
 key Customer : abap.char( 10 ) ; 
 key CompanyCode : abap.char( 4 ) ; 
 key DunningArea : abap.char( 2 ) ; 
 @Odata.property.valueControl: 'DunningBlock_vc' 
 DunningBlock : abap.char( 1 ) ; 
 DunningBlock_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'DunningLevel_vc' 
 DunningLevel : abap.numc( 1 ) ; 
 DunningLevel_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'DunningProcedure_vc' 
 DunningProcedure : abap.char( 4 ) ; 
 DunningProcedure_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'DunningRecipient_vc' 
 DunningRecipient : abap.char( 10 ) ; 
 DunningRecipient_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'LastDunnedOn_vc' 
 LastDunnedOn : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 LastDunnedOn_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'LegDunningProcedureOn_vc' 
 LegDunningProcedureOn : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 LegDunningProcedureOn_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'DunningClerk_vc' 
 DunningClerk : abap.char( 2 ) ; 
 DunningClerk_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AuthorizationGroup_vc' 
 AuthorizationGroup : abap.char( 4 ) ; 
 AuthorizationGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerAccountGroup_vc' 
 CustomerAccountGroup : abap.char( 4 ) ; 
 CustomerAccountGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
