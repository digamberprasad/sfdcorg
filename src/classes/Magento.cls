global class Magento
{
     global class RequestClass
    {
     webservice String errorMessage;
     //Account Releated Fields
      webservice String accName;
      webservice Integer accNumber; 
      webservice String bStreet;
      webservice String bCity;
      webservice String bState;
      webservice String bZip;
      webservice String bCountry;
      webservice Id  accId;     
  
    }

    global class ResponseClass
    {
     webservice String errorMessage;
       webservice String resId;
       webservice String resName; 
   
    } 
   
    webservice static ResponseClass behaviourOfWebService(RequestClass req)
     {
     
       ResponseClass res = new ResponseClass();
   List<Account> lstAccount = [Select Id from Account where Name =: req.accName];

    if(lstAccount.size() > 0)
    {
    res.errorMessage = 'Account already exists!';
    return res;
    }

     Account a = new Account();
    a.Name = req.accName;
    a.AccountNumber =String.valueOf(req.accNumber);
    a.BillingStreet = req.bStreet;
    a.BillingCity = req.bCity;
    a.BillingState= req.bState;
    a.BillingPostalCode=req.bZip;
     a.BillingCountry = req.bCountry; 
     insert a;
     a.Id =req.accId;
      
    // ResponseClass res = new ResponseClass();
        res.resId = a.Id;
        res.resName = a.Name;
        return res; 
       
          
     } 
     
     

}