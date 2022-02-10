/********** GENERATED on 11/25/2021 at 20:47:51 by CB9980000000**************/
 @OData.entitySet.name: 'A_BuPaIdentification' 
 @OData.entityType.name: 'A_BuPaIdentificationType' 
 define root abstract entity ZA_BUPAIDENTIFICATION { 
 key BusinessPartner : abap.char( 10 ) ; 
 key BPIdentificationType : abap.char( 6 ) ; 
 key BPIdentificationNumber : abap.char( 60 ) ; 
 @Odata.property.valueControl: 'BPIdnNmbrIssuingInstitute_vc' 
 BPIdnNmbrIssuingInstitute : abap.char( 40 ) ; 
 BPIdnNmbrIssuingInstitute_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BPIdentificationEntryDate_vc' 
 BPIdentificationEntryDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 BPIdentificationEntryDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Country_vc' 
 Country : abap.char( 3 ) ; 
 Country_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Region_vc' 
 Region : abap.char( 3 ) ; 
 Region_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ValidityStartDate_vc' 
 ValidityStartDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 ValidityStartDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ValidityEndDate_vc' 
 ValidityEndDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 ValidityEndDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AuthorizationGroup_vc' 
 AuthorizationGroup : abap.char( 4 ) ; 
 AuthorizationGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
