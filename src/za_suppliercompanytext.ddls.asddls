/********** GENERATED on 11/25/2021 at 20:48:20 by CB9980000000**************/
 @OData.entitySet.name: 'A_SupplierCompanyText' 
 @OData.entityType.name: 'A_SupplierCompanyTextType' 
 define root abstract entity ZA_SUPPLIERCOMPANYTEXT { 
 key Supplier : abap.char( 10 ) ; 
 key CompanyCode : abap.char( 4 ) ; 
 key Language : abap.char( 2 ) ; 
 key LongTextID : abap.char( 4 ) ; 
 @Odata.property.valueControl: 'LongText_vc' 
 LongText : abap.string( 0 ) ; 
 LongText_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
