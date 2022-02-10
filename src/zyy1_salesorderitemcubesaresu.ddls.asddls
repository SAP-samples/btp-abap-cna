/********** GENERATED on 11/29/2021 at 15:06:47 by CB9980000000**************/
 @OData.entitySet.name: 'YY1_SALESORDERITEMCUBE_SAResults' 
 @OData.entityType.name: 'YY1_SALESORDERITEMCUBE_SAResult' 

/*+[hideWarning] { "IDS" : [ "CARDINALITY_CHECK" ] }*/
 define root abstract entity ZYY1_SALESORDERITEMCUBESARESU { 
 key ID : abap.string( 0 ) ; 
 @Odata.property.valueControl: 'SalesOrder_vc' 
 SalesOrder : abap.char( 10 ) ; 
 SalesOrder_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SalesOrderItem_vc' 
 SalesOrderItem : abap.numc( 6 ) ; 
 SalesOrderItem_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BusinessPartner_vc' 
 BusinessPartner : abap.char( 10 ) ; 
 BusinessPartner_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SalesOrder_1_vc' 
 SalesOrder_1 : abap.char( 10 ) ; 
 SalesOrder_1_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SalesOrderItem_1_vc' 
 SalesOrderItem_1 : abap.numc( 6 ) ; 
 SalesOrderItem_1_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CreationDate_vc' 
 CreationDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 CreationDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'NetAmountInDisplayCurrency_vc' 
 @Semantics.amount.currencyCode: 'DisplayCurrency' 
 NetAmountInDisplayCurrency : abap.curr( 20, 3 ) ; 
 NetAmountInDisplayCurrency_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'DisplayCurrency_vc' 
 @Semantics.currencyCode: true 
 DisplayCurrency : abap.cuky ; 
 DisplayCurrency_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'OverallSDProcessStatus_vc' 
 OverallSDProcessStatus : abap.char( 1 ) ; 
 OverallSDProcessStatus_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ExchangeRateType_vc' 
 ExchangeRateType : abap.char( 4 ) ; 
 ExchangeRateType_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 @OData.property.name: 'Parameters' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _Parameters : association [1] to ZYY1_SALESORDERITEMCUBESA on 1 = 1; 
 } 
