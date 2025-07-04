using {SalesOrder as Service  } from '../sr_salesOrder';

annotate Service.SalesOrderItem WITH {
    DESCRIPTION @title : 'Description';
    DISCOUNTDATE @title : 'Discount Date';
    NAME @title : 'Product name';
    RELEASEDATE @title : 'Release Date';
    PRICE @title : 'Price' @Measures.ISOCurrency : CURRENCY ;
    CURRENCY @Common.IsCurrency : true;
}

annotate Service.SalesOrderItem with @(
UI.LineItem : [
 {
    $Type : 'UI.DataField',
    Value : NAME,

 },
 {
     $Type : 'UI.DataField',
     Value : DESCRIPTION ,
 },
 {
     $Type : 'UI.DataField',
     Value : DISCOUNTDATE,
 },
 {
     $Type : 'UI.DataField',
     Value :  RELEASEDATE,

 },
 {
     $Type : 'UI.DataField',
     Value :  PRICE,
 },
]

);






