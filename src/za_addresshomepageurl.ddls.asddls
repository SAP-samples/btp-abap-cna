/********** GENERATED on 11/25/2021 at 20:47:45 by CB9980000000**************/
 @OData.entitySet.name: 'A_AddressHomePageURL' 
 @OData.entityType.name: 'A_AddressHomePageURLType' 
 define root abstract entity ZA_ADDRESSHOMEPAGEURL { 
 key AddressID : abap.char( 10 ) ; 
 key Person : abap.char( 10 ) ; 
 key OrdinalNumber : abap.numc( 3 ) ; 
 key ValidityStartDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 key IsDefaultURLAddress : abap_boolean ; 
 @Odata.property.valueControl: 'SearchURLAddress_vc' 
 SearchURLAddress : abap.char( 50 ) ; 
 SearchURLAddress_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AddressCommunicationRemarkT_vc' 
 AddressCommunicationRemarkText : abap.char( 50 ) ; 
 AddressCommunicationRemarkT_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'URLFieldLength_vc' 
 URLFieldLength : abap.int2 ; 
 URLFieldLength_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'WebsiteURL_vc' 
 WebsiteURL : abap.string( 0 ) ; 
 WebsiteURL_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
