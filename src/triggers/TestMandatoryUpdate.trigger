trigger TestMandatoryUpdate on Account (after insert) {
    for(Account acct : trigger.new){
        Account updateAcct = [select Id, Mandatory_Field__c from account where id=:acct.Id];
        updateAcct.Mandatory_Field__c = '';
        //update updateAcct;
    }

}