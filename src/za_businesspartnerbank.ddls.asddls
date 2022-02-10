/********** GENERATED on 11/25/2021 at 20:47:56 by CB9980000000**************/
 @OData.entitySet.name: 'A_BusinessPartnerBank' 
 @OData.entityType.name: 'A_BusinessPartnerBankType' 
 define root abstract entity ZA_BUSINESSPARTNERBANK { 
 key BusinessPartner : abap.char( 10 ) ; 
 key BankIdentification : abap.char( 4 ) ; 
 @Odata.property.valueControl: 'BankCountryKey_vc' 
 BankCountryKey : abap.char( 3 ) ; 
 BankCountryKey_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BankName_vc' 
 BankName : abap.char( 60 ) ; 
 BankName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BankNumber_vc' 
 BankNumber : abap.char( 15 ) ; 
 BankNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SWIFTCode_vc' 
 SWIFTCode : abap.char( 11 ) ; 
 SWIFTCode_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BankControlKey_vc' 
 BankControlKey : abap.char( 2 ) ; 
 BankControlKey_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BankAccountHolderName_vc' 
 BankAccountHolderName : abap.char( 60 ) ; 
 BankAccountHolderName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BankAccountName_vc' 
 BankAccountName : abap.char( 40 ) ; 
 BankAccountName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ValidityStartDate_vc' 
 ValidityStartDate : tzntstmpl ; 
 ValidityStartDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ValidityEndDate_vc' 
 ValidityEndDate : tzntstmpl ; 
 ValidityEndDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IBAN_vc' 
 IBAN : abap.char( 34 ) ; 
 IBAN_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IBANValidityStartDate_vc' 
 IBANValidityStartDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 IBANValidityStartDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BankAccount_vc' 
 BankAccount : abap.char( 18 ) ; 
 BankAccount_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BankAccountReferenceText_vc' 
 BankAccountReferenceText : abap.char( 20 ) ; 
 BankAccountReferenceText_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CollectionAuthInd_vc' 
 CollectionAuthInd : abap_boolean ; 
 CollectionAuthInd_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CityName_vc' 
 CityName : abap.char( 35 ) ; 
 CityName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AuthorizationGroup_vc' 
 AuthorizationGroup : abap.char( 4 ) ; 
 AuthorizationGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
