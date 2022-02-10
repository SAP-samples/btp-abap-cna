/********** GENERATED on 11/25/2021 at 20:47:37 by CB9980000000**************/
 @OData.entitySet.name: 'A_AddressEmailAddress' 
 @OData.entityType.name: 'A_AddressEmailAddressType' 
 define root abstract entity ZA_ADDRESSEMAILADDRESS { 
 key AddressID : abap.char( 10 ) ; 
 key Person : abap.char( 10 ) ; 
 key OrdinalNumber : abap.numc( 3 ) ; 
 @Odata.property.valueControl: 'IsDefaultEmailAddress_vc' 
 IsDefaultEmailAddress : abap_boolean ; 
 IsDefaultEmailAddress_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'EmailAddress_vc' 
 EmailAddress : abap.char( 241 ) ; 
 EmailAddress_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SearchEmailAddress_vc' 
 SearchEmailAddress : abap.char( 20 ) ; 
 SearchEmailAddress_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AddressCommunicationRemarkT_vc' 
 AddressCommunicationRemarkText : abap.char( 50 ) ; 
 AddressCommunicationRemarkT_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
