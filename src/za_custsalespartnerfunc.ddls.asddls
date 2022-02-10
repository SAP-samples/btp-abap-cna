/********** GENERATED on 11/25/2021 at 20:48:16 by CB9980000000**************/
 @OData.entitySet.name: 'A_CustSalesPartnerFunc' 
 @OData.entityType.name: 'A_CustSalesPartnerFuncType' 
 define root abstract entity ZA_CUSTSALESPARTNERFUNC { 
 key Customer : abap.char( 10 ) ; 
 key SalesOrganization : abap.char( 4 ) ; 
 key DistributionChannel : abap.char( 2 ) ; 
 key Division : abap.char( 2 ) ; 
 key PartnerCounter : abap.numc( 3 ) ; 
 key PartnerFunction : abap.char( 2 ) ; 
 @Odata.property.valueControl: 'BPCustomerNumber_vc' 
 BPCustomerNumber : abap.char( 10 ) ; 
 BPCustomerNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerPartnerDescription_vc' 
 CustomerPartnerDescription : abap.char( 30 ) ; 
 CustomerPartnerDescription_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'DefaultPartner_vc' 
 DefaultPartner : abap_boolean ; 
 DefaultPartner_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Supplier_vc' 
 Supplier : abap.char( 10 ) ; 
 Supplier_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PersonnelNumber_vc' 
 PersonnelNumber : abap.numc( 8 ) ; 
 PersonnelNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ContactPerson_vc' 
 ContactPerson : abap.numc( 10 ) ; 
 ContactPerson_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AuthorizationGroup_vc' 
 AuthorizationGroup : abap.char( 4 ) ; 
 AuthorizationGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
