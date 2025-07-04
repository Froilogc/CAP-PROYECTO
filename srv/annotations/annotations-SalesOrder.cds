using {SalesOrder as Service  } from '../sr_salesOrder';

annotate Service.SalesOrderHeader WITH {
    FIRSTNAME @title : 'Name';
    LASTNAME @title : 'Last Name';
    COUNTRY @title : 'Country';
    CREATION @title : 'Creation Date';
    DELIVERYDATE @title : 'Delivery Date';
    EMAIL @title : 'Email';
    orderstatus @title : 'Order Status';
}

annotate Service.SalesOrderHeader with @(
UI.LineItem : [
 {
    $Type : 'UI.DataField',
    Value : FIRSTNAME

 },
 {
     $Type : 'UI.DataField',
     Value : LASTNAME,
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
    
},
]

);






