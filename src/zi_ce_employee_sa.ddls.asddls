@EndUserText.label: 'Data definition for employee entity'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_CQ_EMPLOYEE_SA'

@UI: {
headerInfo: {
  typeName: 'Employee',
  typeNamePlural: 'Employees',
  title: { type: #STANDARD, value: 'BusinessPartner' }
},
presentationVariant: [ { sortOrder: [ { by: 'BusinessPartner', direction: #DESC } ] } ]
}

define custom entity ZI_CE_Employee_SA
{
      @OData.property.name    : 'BusinessPartner'
      @EndUserText            : { label: 'ID', quickInfo: 'Business Partner' }
      @UI.lineItem            : [ { position: 1, label: 'ID' } ]
      @UI.selectionField      : [ { position: 1 } ]
  key BusinessPartner         : abap.char( 10 );

      @OData.property.name    : 'FirstName'
      @EndUserText            : { label: 'First Name', quickInfo: 'First Name' }
      @UI.lineItem            : [ { position: 2, label: 'First Name' } ]
      @UI.selectionField      : [ { position: 2 } ]
      FirstName               : abap.sstring( 40 );

      @OData.property.name    : 'LastName'
      @EndUserText            : { label: 'Last Name', quickInfo: 'Last Name' }
      @UI.lineItem            : [ { position: 3, label: 'Last Name' } ]
      @UI.selectionField      : [ { position: 3 } ]
      LastName                : abap.sstring( 40 );

      @OData.property.name    : 'BusinessPartnerFullName'
      @UI                     : {
        hidden                : true,
        lineItem              : [ { position: 4, label: 'Full Name' } ]
      }
      @EndUserText            : { label: 'Full Name', quickInfo: 'Full Name' }
      BusinessPartnerFullName : abap.sstring( 81 );
}
