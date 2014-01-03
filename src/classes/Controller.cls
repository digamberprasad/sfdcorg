public with sharing class Controller
 {
      public string acName {get; set;}
       public List<Account> acc {get;set;}
        public List<Account> search()
      {
               acc= new list<Account>();
               acc=[select name, phone, rating from account where name =: acName];
                return null;
             }
}