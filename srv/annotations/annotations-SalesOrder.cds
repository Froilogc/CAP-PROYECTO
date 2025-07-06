using {SalesOrder as Service  } from '../sr_salesOrder';

annotate Service.SalesOrderHeader WITH {
    FIRSTNAME @title : 'Name';
    LASTNAME @title : 'Last Name';
    COUNTRY @title : 'Country';
    CREATION @title : 'Creation Date';
    DELIVERYDATE @title : 'Delivery Date';
    EMAIL @title : 'Email';
    orderstatus @title : 'Order Status'; 
    orderstatus @Common : { 
        Text : orderstatus.name,
        TextArrangement: #TextOnly,
     }        
                
};



annotate Service.SalesOrderHeader with @(
UI.HeaderInfo : {
    $Type : 'UI.HeaderInfoType',
    TypeName : 'Sales Order',
    TypeNamePlural : 'Sales Orders',
},
UI.SelectionFields : [

    ID,
    orderstatus_CODE,
    FIRSTNAME,
    LASTNAME,
    DELIVERYDATE,
    CREATION,
],


UI.LineItem : [
 {
    $Type : 'UI.DataField',
    Value : FIRSTNAME,
  ![@HTML5.CssDefaults] : {
        $Type : 'HTML5.CssDefaultsType',
        width : '10rem',
    },

 },
 {
     $Type : 'UI.DataField',
     Value : LASTNAME,
    ![@HTML5.CssDefaults] : {
        $Type : 'HTML5.CssDefaultsType',
        width : '10rem',
    },
 },
 {
     $Type : 'UI.DataField',
     Value : COUNTRY,
 },
 {
     $Type : 'UI.DataField',
     Value : EMAIL,

 },
 {
     $Type : 'UI.DataField',
     Value : CREATION,
 },

 {
     $Type : 'UI.DataField',
     Value : DELIVERYDATE,
 },
{
    $Type : 'UI.DataField',
    Value : orderstatus_CODE,
    Criticality : orderstatus.Criticality,
    ![@HTML5.CssDefaults] : {
        $Type : 'HTML5.CssDefaultsType',
        width : '10rem',
    },
    
},
]

);






