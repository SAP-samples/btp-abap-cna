/********** GENERATED on 11/25/2021 at 20:47:47 by CB9980000000**************/
 @OData.entitySet.name: 'A_BPContactToAddress' 
 @OData.entityType.name: 'A_BPContactToAddressType' 
 define root abstract entity ZA_BPCONTACTTOADDRESS { 
 key RelationshipNumber : abap.char( 12 ) ; 
 key BusinessPartnerCompany : abap.char( 10 ) ; 
 key BusinessPartnerPerson : abap.char( 10 ) ; 
 key ValidityEndDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 key AddressID : abap.char( 10 ) ; 
 @Odata.property.valueControl: 'AddressNumber_vc' 
 AddressNumber : abap.char( 10 ) ; 
 AddressNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
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
 @Odata.property.valueControl: 'AddressRepresentationCode_vc' 
 AddressRepresentationCode : abap.char( 1 ) ; 
 AddressRepresentationCode_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ContactRelationshipFunction_vc' 
 ContactRelationshipFunction : abap.char( 40 ) ; 
 ContactRelationshipFunction_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ContactRelationshipDepartme_vc' 
 ContactRelationshipDepartment : abap.char( 40 ) ; 
 ContactRelationshipDepartme_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Floor_vc' 
 Floor : abap.char( 10 ) ; 
 Floor_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ContactPersonBuilding_vc' 
 ContactPersonBuilding : abap.char( 10 ) ; 
 ContactPersonBuilding_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RoomNumber_vc' 
 RoomNumber : abap.char( 10 ) ; 
 RoomNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ContactPersonPrfrdCommMediu_vc' 
 ContactPersonPrfrdCommMedium : abap.char( 3 ) ; 
 ContactPersonPrfrdCommMediu_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CorrespondenceShortName_vc' 
 CorrespondenceShortName : abap.char( 10 ) ; 
 CorrespondenceShortName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'InhouseMail_vc' 
 InhouseMail : abap.char( 10 ) ; 
 InhouseMail_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 @OData.property.name: 'to_EmailAddress' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _EmailAddress : association [0..*] to ZA_ADDRESSEMAILADDRESS on 1 = 1; 
 @OData.property.name: 'to_FaxNumber' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _FaxNumber : association [0..*] to ZA_ADDRESSFAXNUMBER on 1 = 1; 
 @OData.property.name: 'to_MobilePhoneNumber' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _MobilePhoneNumber : association [0..*] to ZA_ADDRESSPHONENUMBER on 1 = 1; 
 @OData.property.name: 'to_PhoneNumber' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _PhoneNumber : association [0..*] to ZA_ADDRESSPHONENUMBER on 1 = 1; 
 @OData.property.name: 'to_URLAddress' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _URLAddress : association [0..*] to ZA_ADDRESSHOMEPAGEURL on 1 = 1; 
 } 
