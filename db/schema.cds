namespace com.cap6882;

entity  SalesOrderHeader {
    ID : UUID;
    EMAIL : String(30);
    FIRSTNAME : String(30);
    LASTNAME : String(30);
    COUNTRY : String(30);
    CREATION : Date;
    DELIVERYDATE: Date;
    orderstatus : Integer;
    imageurl : String;
    

    
}

entity  SalesOrderItem {
    ID : UUID;
    NAME : String(40);
    DESCRIPTION : String(40);
    RELEASEDATE : Date;
    DISCOUNTDATE: Date;
    PRICE : Decimal(12,2);
       
}


entity  SalesOrderItems {
    ID : UUID;
    NAME : String(40);
    DESCRIPTION : String(40);
    RELEASEDATE : Date;
    DISCOUNTDATE: Date;
    PRICE : Decimal(12,2);
       
}