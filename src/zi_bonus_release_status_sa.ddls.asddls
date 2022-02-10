@AbapCatalog.sqlViewName: 'ZI_REL_STAT_SA'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.resultSet.sizeCategory:#XS 
@EndUserText.label: 'Data definition for release status'
@Search.searchable: true
define view ZI_BONUS_RELEASE_STATUS_SA as select from zrel_stat_sa {
     @Search.defaultSearchElement: true
     @ObjectModel.text.element:['Description']
     @EndUserText.label: 'Code'
     @EndUserText.quickInfo: 'Code'
    key code,
     @Semantics.text: true
     @EndUserText.label: 'Description'
     @EndUserText.quickInfo: 'Description'
     description
}
