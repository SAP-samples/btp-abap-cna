/********** GENERATED on 11/25/2021 at 20:48:04 by CB9980000000**************/
 @OData.entitySet.name: 'A_CustomerCompanyText' 
 @OData.entityType.name: 'A_CustomerCompanyTextType' 
 define root abstract entity ZA_CUSTOMERCOMPANYTEXT { 
 key Customer : abap.char( 10 ) ; 
 key CompanyCode : abap.char( 4 ) ; 
 key Language : abap.char( 2 ) ; 
 key LongTextID : abap.char( 4 ) ; 
 @Odata.property.valueControl: 'LongText_vc' 
 LongText : abap.string( 0 ) ; 
 LongText_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
