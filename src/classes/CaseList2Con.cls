public class CaseList2Con {
    // ApexPages.StandardSetController must be instantiated
    // for standard list controllers
    public ApexPages.StandardSetController setCon {
        get {
            if(setCon == null) {
                setCon = new ApexPages.StandardSetController(Database.getQueryLocator(
                            [SELECT CaseNumber, CreatedDate, Test_URL__c FROM Case]));
            }
            return setCon;
        }
        set;
    }
    // Initialize setCon and return a list of records
    public List<Case> getCases() {
        return (List<Case>) setCon.getRecords();
    }
}