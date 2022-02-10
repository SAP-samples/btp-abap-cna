/********** GENERATED on 11/29/2021 at 15:06:41 by CB9980000000**************/
 @OData.entitySet.name: 'YY1_SALESORDERITEMCUBE_SA' 
 @OData.entityType.name: 'YY1_SALESORDERITEMCUBE_SAParameters' 
 define root abstract entity ZYY1_SALESORDERITEMCUBESA { 
 key P_ExchangeRateType : abap.char( 4 ) ; 
 key P_DisplayCurrency : abap.char( 5 ) ; 
 
 @OData.property.name: 'Results' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _Results : association [0..*] to ZYY1_SALESORDERITEMCUBESARESU on 1 = 1; 
 } 
