/********** GENERATED on 11/25/2021 at 20:47:46 by CB9980000000**************/
 @OData.entitySet.name: 'A_AddressPhoneNumber' 
 @OData.entityType.name: 'A_AddressPhoneNumberType' 
 define root abstract entity ZA_ADDRESSPHONENUMBER { 
 key AddressID : abap.char( 10 ) ; 
 key Person : abap.char( 10 ) ; 
 key OrdinalNumber : abap.numc( 3 ) ; 
 @Odata.property.valueControl: 'DestinationLocationCountry_vc' 
 DestinationLocationCountry : abap.char( 3 ) ; 
 DestinationLocationCountry_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IsDefaultPhoneNumber_vc' 
 IsDefaultPhoneNumber : abap_boolean ; 
 IsDefaultPhoneNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PhoneNumber_vc' 
 PhoneNumber : abap.char( 30 ) ; 
 PhoneNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PhoneNumberExtension_vc' 
 PhoneNumberExtension : abap.char( 10 ) ; 
 PhoneNumberExtension_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'InternationalPhoneNumber_vc' 
 InternationalPhoneNumber : abap.char( 30 ) ; 
 InternationalPhoneNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PhoneNumberType_vc' 
 PhoneNumberType : abap.char( 1 ) ; 
 PhoneNumberType_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AddressCommunicationRemarkT_vc' 
 AddressCommunicationRemarkText : abap.char( 50 ) ; 
 AddressCommunicationRemarkT_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
