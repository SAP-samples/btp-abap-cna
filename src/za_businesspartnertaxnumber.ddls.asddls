/********** GENERATED on 11/25/2021 at 20:48:00 by CB9980000000**************/
 @OData.entitySet.name: 'A_BusinessPartnerTaxNumber' 
 @OData.entityType.name: 'A_BusinessPartnerTaxNumberType' 
 define root abstract entity ZA_BUSINESSPARTNERTAXNUMBER { 
 key BusinessPartner : abap.char( 10 ) ; 
 key BPTaxType : abap.char( 4 ) ; 
 @Odata.property.valueControl: 'BPTaxNumber_vc' 
 BPTaxNumber : abap.char( 20 ) ; 
 BPTaxNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BPTaxLongNumber_vc' 
 BPTaxLongNumber : abap.char( 60 ) ; 
 BPTaxLongNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AuthorizationGroup_vc' 
 AuthorizationGroup : abap.char( 4 ) ; 
 AuthorizationGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
