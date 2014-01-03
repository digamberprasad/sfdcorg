trigger createTicket2 on Case (after insert, before update) {
  
    //create new case if it does not exist
    for(Case c : Trigger.new){
        if(trigger.isInsert){
            Tickets__c tik = new Tickets__c(
                case__c = c.id,
                subject__c = c.subject //,
                /*
                origin__c = c.Origin,
                type__c = c.Type,
                Case_Record__c = c.Record_Type_Umbrella__c,
                new_problem__c = c.New_Problem__c,
                problem_area__c = c.problem_area__c,
                SAP_Return_Order_Number__c = c.SAP_Return_Order_Number__c*/
                );
            insert tik;
        }
        
        List<Case> openCases = [SELECT c.subject, c.origin , c.LastModifiedDate, c.createddate  FROM Case c
                                WHERE (c.Type ='Out of Box Failure') 
                                FOR UPDATE];
      
        if(trigger.isupdate)
        {
            for(Case c1 : openCases)
            {   
                list<Tickets__c> t= [select id, subject__c from tickets__c where case__c=: c1.id ];
                // if (c1.LastModifiedDate != null && c1.LastModifiedDate > c1.CreatedDate)
                {
                //     c1.subject=t.subject__c;
       
                    for (tickets__c t1: t )
                    {   /*    
                        if(shouldIRun.canIRun()==false )
                            FutureGroup.FutureMethod(c1.id, t1.id);
                         */
                    }
                }
            }
     
        }
 
       
    }
}