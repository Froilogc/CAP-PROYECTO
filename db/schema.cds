namespace com.cap6882;

entity  SalesOrderHeader {
   key ID : UUID;
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

entity  SalesOrderItem {
   key ID : UUID;
    POS: Int16;
    NAME : String(40);
    DESCRIPTION : String(40);
    RELEASEDATE : Date;
    DISCOUNTDATE: Date;
    PRICE : Decimal(12,2);
    SalesOrder : Association to SalesOrderHeader;
       
}

entity Status{
    KEY ID : UUID;
    CODE : String(2);
    DESCRIPTION : String(20);
}

