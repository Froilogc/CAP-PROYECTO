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

        UI.HeaderInfo                : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Item',
        TypeNamePlural: 'Items',

        Title         : {
            $Type: 'UI.DataField',
            Value: ID

        },

        Description   : {
            $Type: 'UI.DataField',
            Value: NAME
        }

    },

    
    UI.FieldGroup #ITEMDETAIL : {
        $Type: 'UI.FieldGroupType',
        Data : [
              {
                $Type: 'UI.DataField',
                Value: POS,
                Label : 'Position',
                
            },
            {
                $Type: 'UI.DataField',
                Value: NAME
            },
            {
                $Type: 'UI.DataField',
                Value: DESCRIPTION
            },
            {
                $Type: 'UI.DataField',
                Value: PRICE
            }
        ]
    },

 UI.Facets : [
  {
$Type : 'UI.ReferenceFacet',
Target : '@UI.FieldGroup#ITEMDETAIL',

 }
],

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






