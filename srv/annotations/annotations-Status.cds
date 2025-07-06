using {SalesOrder as Service  } from '../sr_salesOrder';

annotate Service.Status WITH {
    @title : 'Status'
  CODE @Common : { 
    Text : name,
    TextArrangement : #TextOnly,
   }
}

