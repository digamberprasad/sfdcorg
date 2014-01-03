trigger UserInactive on User (before update) {
    for(User u : trigger.new){
        u.Department = 'TestDepartment';
        if(u.Test_Manager__c != null)
            u.ManagerId = U.Test_Manager__c;
    }
}