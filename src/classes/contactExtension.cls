public class contactExtension {
    private final Contact c; //User sobject
    private Account oneopp {get;set;}
    public List<Opportunity> listOpportunity {get;set;}
    public List<Quote> listQuotes {get;set;}    
    public string optionacc{get;set;}
    public string optioncon{get;set;}
    private string accountid {get;set;}
    Boolean showSecvar = false;
    Boolean showListvar = false;
    
    //initializes the private member variable u by using the getRecord method from the standard controller
    public contactExtension(ApexPages.StandardController stdController) {
        this.c = (Contact)stdController.getRecord();
    }
    
    //builds a picklist of account names based on their account id
    public List<selectOption> getaccts() {
        List<selectOption> accts = new List<selectOption>();
            accts.add(new selectOption('', '- None -'));
            for (Account account : [SELECT Id, Name FROM Account]) {
            accts.add(new selectOption(account.id, account.Name));
        }
        return accts; //return the picklist options
    }
    
    public List<selectOption> getconts() {
        List<selectOption> conts = new List<selectOption>();
            conts.add(new selectOption('', '- None -'));
            for (Contact contact : [SELECT Id, Name FROM Contact where AccountId = :optionacc]) {
            conts.add(new selectOption(contact.id, contact.Name));
        }
        return conts; //return the picklist options
    }     
    
    //select von Auswahlliste Account    
    public pagereference selectionAcc(){
        ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.Info,'No Empty 1!!'+optionacc));     
        //showSection();
        optionacc = accountid;    
        return null;
    }
    
    //select von Auswahlliste Contact
    public pagereference selectionCon(){
        ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.Info,'No Empty 2!!'+optionacc));
        //showSection();
        optioncon = accountid;
        return null;
    }    

    public List<selectOption> getopps() {
        List<selectOption> opps= new List<selectOption>();
            opps.add(new selectOption('', '- None -'));
            for (Opportunity opportunity : [SELECT Id, Name FROM Opportunity where AccountId = :optionacc]) {
            opps.add(new selectOption(Opportunity.Id, Opportunity.Name));
        }
        return opps; //return the picklist options
    }

    public pagereference showlistopps(){
        ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.Info,'No Empty 2!!'+optionacc));
        oneopp = [SELECT Id, Name FROM Account WHERE name  = 'AMEH' LIMIT 1];
        listOpportunity = [SELECT ID,Name,StageName,Probability FROM Opportunity WHERE AccountId =:optionacc LIMIT 50000];
        showInfList();
        return null;
    }    

    public pagereference showlistqoutes(){
        ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.Info,'No Empty 3!!'+optionacc));
        listQuotes = [SELECT QuoteNumber, Name, Discount FROM Quote LIMIT 50000];
        showInfList();
        return null;
    }     
    public void showSection() {showSecvar = true;}
    public Boolean getSectionshow(){return showSecvar;}  
    
    public void showInfList(){showListvar = true;}
    public Boolean getInfListshow(){return showListvar;}   
}