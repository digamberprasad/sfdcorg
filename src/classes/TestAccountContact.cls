/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an organization are executed whenever Apex code is deployed
 * to a production organization to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production organization. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the organization size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@isTest
private class TestAccountContact {

    static testMethod void testAccountContactOppty() {
        // TO DO: implement unit test
        Account acct = new Account(Name = 'Test Account', Rating = 'Hot', 
        							Ownership = 'Public', AnnualRevenue = 1000);
        insert acct;
        
        Contact cont = new Contact(FirstName = 'Test', LastName = 'Contact', 
        							AccountId = acct.Id, LeadSource = 'Other', 	
        							Level__c = 'Primary');
        insert cont;
        
        Opportunity oppty = new Opportunity(Name = 'TestOppty1', AccountId = acct.Id, 
        										Contact__c = cont.Id, 
        										CloseDate = System.today(), 
        										StageName = 'Qualification');
        insert oppty;
    }
}