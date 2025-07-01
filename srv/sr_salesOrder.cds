using{com.cap6882 as entities}  from '../db/schema';

service SalesOrder {
    entity SalesOrderHeader as projection on entities.SalesOrderHeader;
    entity SalesOrderItem as projection on entities.SalesOrderItem;
    entity Status as projection on entities.Status;

    

}
