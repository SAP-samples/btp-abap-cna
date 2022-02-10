/********** GENERATED on 11/25/2021 at 20:48:23 by CB9980000000**************/
 @OData.entitySet.name: 'A_SupplierPartnerFunc' 
 @OData.entityType.name: 'A_SupplierPartnerFuncType' 
 define root abstract entity ZA_SUPPLIERPARTNERFUNC { 
 key Supplier : abap.char( 10 ) ; 
 key PurchasingOrganization : abap.char( 4 ) ; 
 key SupplierSubrange : abap.char( 6 ) ; 
 key Plant : abap.char( 4 ) ; 
 key PartnerFunction : abap.char( 2 ) ; 
 key PartnerCounter : abap.numc( 3 ) ; 
 @Odata.property.valueControl: 'DefaultPartner_vc' 
 DefaultPartner : abap_boolean ; 
 DefaultPartner_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CreationDate_vc' 
 CreationDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 CreationDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CreatedByUser_vc' 
 CreatedByUser : abap.char( 12 ) ; 
 CreatedByUser_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ReferenceSupplier_vc' 
 ReferenceSupplier : abap.char( 10 ) ; 
 ReferenceSupplier_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AuthorizationGroup_vc' 
 AuthorizationGroup : abap.char( 4 ) ; 
 AuthorizationGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
