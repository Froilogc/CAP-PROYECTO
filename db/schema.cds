namespace com.cap6882;

using {  
    cuid,
    managed,
    sap.common.CodeList
} from '@sap/cds/common';


entity  SalesOrderHeader : cuid, managed{
 
    EMAIL : String(30);
    FIRSTNAME : String(30);
    LASTNAME : String(30);
    COUNTRY : String(30);
    CREATION : Date;
    DELIVERYDATE: Date;
    orderstatus :  Association to Status;
    imageurl : String;
    toItems : Association to many SalesOrderItem on toItems.SalesOrder = $self;
    

    
}

entity  SalesOrderItem : cuid  {

    POS: Int16;
    NAME : String(40);
    DESCRIPTION : String(40);
    RELEASEDATE : Date;
    DISCOUNTDATE: Date;
    PRICE : Decimal(12,2);
    CURRENCY : String(2) default 'USD';
    SalesOrder : Association to SalesOrderHeader;
       
}

entity Status : CodeList { 
 
   key CODE : String(10) enum { 
    O = 'Open';
    P = 'In Process';
    C = 'Close';


   };
   Criticality : Integer;
}

