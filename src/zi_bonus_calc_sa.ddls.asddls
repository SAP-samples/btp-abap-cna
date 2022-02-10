@AbapCatalog: { sqlViewName: 'ZV_BONUSCALCSA', compiler.compareFilter: true, preserveKey: true }
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data definition for bonus calculation'
@Search: { searchable: true }
@UI: {
 headerInfo: { typeName: 'Bonus Calculation', typeNamePlural: 'Bonus Calculations', title : { value: 'EmployeeName', type: #STANDARD } },
 presentationVariant: [ { sortOrder: [ { by: 'ID', direction: #DESC } ] } ] }

define root view ZI_BONUS_CALC_SA
  as select from zbonuscalcsa as Node

  association [0..*] to I_CurrencyText             as _TargetAmountText        on _TargetAmountText.Currency = $projection.TargetAmount_C
  association [0..*] to I_UnitOfMeasureText        as _BonusPercentageText     on _BonusPercentageText.UnitOfMeasure = $projection.BonusPercentage_U
  association [0..1] to ZI_BONUS_RELEASE_STATUS_SA as _ReleaseStatusText       on _ReleaseStatusText.code = $projection.releasestatus
  association [0..1] to I_Currency                 as _ActualRevenueAmount     on _ActualRevenueAmount.Currency = $projection.ActualRevenueAmount_C
  association [0..*] to I_CurrencyText             as _ActualRevenueAmountText on _ActualRevenueAmountText.Currency = $projection.ActualRevenueAmount_C
  association [0..1] to I_Currency                 as _BonusAmount             on _BonusAmount.Currency = $projection.BonusAmount_C
  association [0..*] to I_CurrencyText             as _BonusAmountText         on _BonusAmountText.Currency = $projection.BonusAmount_C

{
      @UI.facet: [
        { type: #COLLECTION, position: 1, id: 'BONUSCALC', label: 'Details'  },
        { type: #FIELDGROUP_REFERENCE, position: 1, id: 'Employee',  parentId: 'BONUSCALC', label: 'Employee', targetQualifier: 'Employee', exclude: false },
        { type: #FIELDGROUP_REFERENCE, position: 2, id: 'Bonus',     parentId: 'BONUSCALC', label: 'Bonus', targetQualifier: 'Bonus', exclude: false },
        { type: #FIELDGROUP_REFERENCE, position: 3, id: 'AdminData', parentId: 'BONUSCALC', label: 'Administrative Data', targetQualifier: 'AdminData', exclude: false } ]

      @EndUserText: { label: 'ID', quickInfo: 'ID' }
      @UI: {
        lineItem: [{ exclude: true }, { type: #FOR_ACTION, dataAction: 'calculate_bonus', label: 'Calculate Bonus' } ],
        identification: [{ position: 1, type: #FOR_ACTION, dataAction: 'calculate_bonus', label: 'Calculate Bonus' }],
        fieldGroup: [{ position: 1, qualifier: 'AdminData' }] }
  key Node.id                      as ID,

      //Employee
      @EndUserText: { label: 'Employee Name', quickInfo: 'Employee Name' }
      @Search: { defaultSearchElement: true, fuzzinessThreshold: 0.8 }
      @UI: { selectionField: [ { position: 2 } ], lineItem: [{ position: 2 }], fieldGroup: [{ position: 2, qualifier: 'Employee' }] }
      Node.employeename            as EmployeeName,

      @EndUserText: { label: 'Employee ID', quickInfo: 'Employee ID' }
      @Search: { defaultSearchElement: true, fuzzinessThreshold: 0.8 }
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_CE_EMPLOYEE_SA', element: 'BusinessPartner' }, label: 'Employees',
                                      additionalBinding: [ { localElement: 'EmployeeName',  element: 'BusinessPartnerFullName', usage: #RESULT } ] } ]
      @UI: { fieldGroup: [{ position: 1, qualifier: 'Employee' }] }
      Node.employeeid              as EmployeeID,

      //Bonus Data
      @EndUserText: { label: 'Target Revenue', quickInfo: 'Target Revenue' }
      @UI: { lineItem: [{ position: 3 } ], fieldGroup: [{ position: 1, qualifier: 'Bonus' }] }
      @Semantics: { amount.currencyCode: 'TargetAmount_C' }
      Node.targetamount_v          as TargetAmount_V,

      @EndUserText: { label: 'Target Revenue' }
      @Consumption.valueHelpDefinition: [{ entity : { name: 'I_Currency', element: 'Currency'  } }]
      @Semantics: { currencyCode: true }
      @ObjectModel: { text.association: '_TargetAmountText' }
      Node.targetamount_c          as TargetAmount_C,

      @EndUserText: { label: 'Actual Revenue', quickInfo: 'Actual Revenue' }
      @UI: { lineItem: [{ position: 4, criticality: 'PerformanceIndicator' }], fieldGroup: [{ position: 2, qualifier: 'Bonus', criticality: 'PerformanceIndicator'  }] }
      @Semantics: { amount.currencyCode: 'ActualRevenueAmount_C' }
      Node.actualrevenueamount_v   as ActualRevenueAmount_V,

      @EndUserText: { label: 'Actual Revenue' }
      @Consumption.valueHelpDefinition: [{ entity : { name: 'I_Currency', element: 'Currency' } }]
      @Semantics: { currencyCode: true }
      @ObjectModel: { text.association: '_ActualRevenueAmountText' }
      Node.actualrevenueamount_c   as ActualRevenueAmount_C,

      case
        when Node.actualrevenueamount_v is initial then 0
        when Node.actualrevenueamount_v = Node.targetamount_v then 2
        when Node.actualrevenueamount_v < Node.targetamount_v then 1
        else 3
      end                          as PerformanceIndicator,

      @EndUserText: { label: 'Bonus Rate', quickInfo: 'Bonus Rate' }
      @UI: { lineItem: [{ position: 5 }], fieldGroup: [{ position: 3, qualifier: 'Bonus' }] }
      @Semantics: { quantity.unitOfMeasure: 'BonusPercentage_U' }
      Node.bonuspercentage_v       as BonusPercentage_V,

      @EndUserText: { label: 'Bonus Rate' }
      @Consumption.valueHelpDefinition: [{ entity : { name: 'I_UnitOfMeasure', element: 'UnitOfMeasure'  } }]
      @Semantics: { unitOfMeasure: true }
      @ObjectModel: { text.association: '_BonusPercentageText' }
      Node.bonuspercentage_u       as BonusPercentage_U,


      @EndUserText: { label: 'Bonus', quickInfo: 'Bonus' }
      @UI: { lineItem: [{ position: 6 }], fieldGroup: [{ position: 4, qualifier: 'Bonus' }] }
      @Semantics: { amount.currencyCode: 'BonusAmount_C' }
      Node.bonusamount_v           as BonusAmount_V,

      @EndUserText: { label: 'Currency', quickInfo: 'Currency' }
      @Consumption.valueHelpDefinition: [{ entity : { name: 'I_Currency', element: 'Currency'  } }]
      @Semantics: { currencyCode: true }
      @ObjectModel: { text.association: '_BonusAmountText' }
      Node.bonusamount_c           as BonusAmount_C,

      //Administrative Data
      @EndUserText: { label: 'Valid From', quickInfo: 'Valid From' }
      @UI: { fieldGroup: [{ position: 2, qualifier: 'AdminData' }] }
      Node.validitystartdate       as ValidityStartDate,

      @EndUserText: { label: 'Valid Until', quickInfo: 'Valid Until' }
      @UI: { fieldGroup: [{ position: 3, qualifier: 'AdminData' }] }
      Node.validityenddate         as ValidityEndDate,

      @EndUserText: { label: 'Is Consistent', quickInfo: 'Is Consistent' }
      @UI: { fieldGroup: [{ position: 4, qualifier: 'AdminData' }] }
      Node.isconsistent            as IsConsistent,

      @EndUserText: { label: 'Release Status', quickInfo: 'Release Status' }
      @Search: { defaultSearchElement: true, fuzzinessThreshold: 0.8 }
      @UI: { textArrangement: #TEXT_ONLY, fieldGroup: [{ position: 4, qualifier: 'AdminData' }] }
      @Consumption.valueHelpDefinition: [{ entity : { name: 'ZI_BONUS_RELEASE_STATUS_SA', element: 'code' }, label : 'Release Status' }]
      @ObjectModel: { text: { element : [ '_ReleaseStatusText.description' ] } }
      Node.releasestatus,

      @UI.hidden: true
      Node.sap_createddatetime     as SAP_CreatedDateTime,
      @UI.hidden: true
      Node.sap_createdbyuser       as SAP_CreatedByUser,
      @UI.hidden: true
      Node.sap_lastchangeddatetime as SAP_LastChangedDateTime,
      @UI.hidden: true
      Node.sap_lastchangedbyuser   as SAP_LastChangedByUser,

      _TargetAmountText,
      _BonusPercentageText,
      _ReleaseStatusText,
      _ActualRevenueAmount,
      _ActualRevenueAmountText,
      _BonusAmount,
      _BonusAmountText
}
