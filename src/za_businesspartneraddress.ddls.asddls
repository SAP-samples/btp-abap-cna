/********** GENERATED on 11/25/2021 at 20:47:55 by CB9980000000**************/
 @OData.entitySet.name: 'A_BusinessPartnerAddress' 
 @OData.entityType.name: 'A_BusinessPartnerAddressType' 
 define root abstract entity ZA_BUSINESSPARTNERADDRESS { 
 key BusinessPartner : abap.char( 10 ) ; 
 key AddressID : abap.char( 10 ) ; 
 @Odata.property.valueControl: 'ValidityStartDate_vc' 
 ValidityStartDate : tzntstmpl ; 
 ValidityStartDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ValidityEndDate_vc' 
 ValidityEndDate : tzntstmpl ; 
 ValidityEndDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AuthorizationGroup_vc' 
 AuthorizationGroup : abap.char( 4 ) ; 
 AuthorizationGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AddressUUID_vc' 
 AddressUUID : sysuuid_x16 ; 
 AddressUUID_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AdditionalStreetPrefixName_vc' 
 AdditionalStreetPrefixName : abap.char( 40 ) ; 
 AdditionalStreetPrefixName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AdditionalStreetSuffixName_vc' 
 AdditionalStreetSuffixName : abap.char( 40 ) ; 
 AdditionalStreetSuffixName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AddressTimeZone_vc' 
 AddressTimeZone : abap.char( 6 ) ; 
 AddressTimeZone_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CareOfName_vc' 
 CareOfName : abap.char( 40 ) ; 
 CareOfName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CityCode_vc' 
 CityCode : abap.char( 12 ) ; 
 CityCode_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CityName_vc' 
 CityName : abap.char( 40 ) ; 
 CityName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CompanyPostalCode_vc' 
 CompanyPostalCode : abap.char( 10 ) ; 
 CompanyPostalCode_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Country_vc' 
 Country : abap.char( 3 ) ; 
 Country_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'County_vc' 
 County : abap.char( 40 ) ; 
 County_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'DeliveryServiceNumber_vc' 
 DeliveryServiceNumber : abap.char( 10 ) ; 
 DeliveryServiceNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'DeliveryServiceTypeCode_vc' 
 DeliveryServiceTypeCode : abap.char( 4 ) ; 
 DeliveryServiceTypeCode_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'District_vc' 
 District : abap.char( 40 ) ; 
 District_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'FormOfAddress_vc' 
 FormOfAddress : abap.char( 4 ) ; 
 FormOfAddress_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'FullName_vc' 
 FullName : abap.char( 80 ) ; 
 FullName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'HomeCityName_vc' 
 HomeCityName : abap.char( 40 ) ; 
 HomeCityName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'HouseNumber_vc' 
 HouseNumber : abap.char( 10 ) ; 
 HouseNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'HouseNumberSupplementText_vc' 
 HouseNumberSupplementText : abap.char( 10 ) ; 
 HouseNumberSupplementText_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Language_vc' 
 Language : abap.char( 2 ) ; 
 Language_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'POBox_vc' 
 POBox : abap.char( 10 ) ; 
 POBox_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'POBoxDeviatingCityName_vc' 
 POBoxDeviatingCityName : abap.char( 40 ) ; 
 POBoxDeviatingCityName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'POBoxDeviatingCountry_vc' 
 POBoxDeviatingCountry : abap.char( 3 ) ; 
 POBoxDeviatingCountry_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'POBoxDeviatingRegion_vc' 
 POBoxDeviatingRegion : abap.char( 3 ) ; 
 POBoxDeviatingRegion_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'POBoxIsWithoutNumber_vc' 
 POBoxIsWithoutNumber : abap_boolean ; 
 POBoxIsWithoutNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'POBoxLobbyName_vc' 
 POBoxLobbyName : abap.char( 40 ) ; 
 POBoxLobbyName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'POBoxPostalCode_vc' 
 POBoxPostalCode : abap.char( 10 ) ; 
 POBoxPostalCode_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Person_vc' 
 Person : abap.char( 10 ) ; 
 Person_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PostalCode_vc' 
 PostalCode : abap.char( 10 ) ; 
 PostalCode_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PrfrdCommMediumType_vc' 
 PrfrdCommMediumType : abap.char( 3 ) ; 
 PrfrdCommMediumType_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Region_vc' 
 Region : abap.char( 3 ) ; 
 Region_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'StreetName_vc' 
 StreetName : abap.char( 60 ) ; 
 StreetName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'StreetPrefixName_vc' 
 StreetPrefixName : abap.char( 40 ) ; 
 StreetPrefixName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'StreetSuffixName_vc' 
 StreetSuffixName : abap.char( 40 ) ; 
 StreetSuffixName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'TaxJurisdiction_vc' 
 TaxJurisdiction : abap.char( 15 ) ; 
 TaxJurisdiction_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'TransportZone_vc' 
 TransportZone : abap.char( 10 ) ; 
 TransportZone_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AddressIDByExternalSystem_vc' 
 AddressIDByExternalSystem : abap.char( 20 ) ; 
 AddressIDByExternalSystem_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CountyCode_vc' 
 CountyCode : abap.char( 8 ) ; 
 CountyCode_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'TownshipCode_vc' 
 TownshipCode : abap.char( 8 ) ; 
 TownshipCode_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'TownshipName_vc' 
 TownshipName : abap.char( 40 ) ; 
 TownshipName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 @OData.property.name: 'to_AddressUsage' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _AddressUsage : association [0..*] to ZA_BUPAADDRESSUSAGE on 1 = 1; 
 @OData.property.name: 'to_EmailAddress' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _EmailAddress1 : association [0..*] to ZA_ADDRESSEMAILADDRESS on 1 = 1; 
 @OData.property.name: 'to_FaxNumber' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _FaxNumber1 : association [0..*] to ZA_ADDRESSFAXNUMBER on 1 = 1; 
 @OData.property.name: 'to_MobilePhoneNumber' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _MobilePhoneNumber1 : association [0..*] to ZA_ADDRESSPHONENUMBER on 1 = 1; 
 @OData.property.name: 'to_PhoneNumber' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _PhoneNumber1 : association [0..*] to ZA_ADDRESSPHONENUMBER on 1 = 1; 
 @OData.property.name: 'to_URLAddress' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _URLAddress1 : association [0..*] to ZA_ADDRESSHOMEPAGEURL on 1 = 1; 
 } 
