trigger EventTrigger on Event (before insert, before update) {
    Set<Id> setWhoId = new Set<Id>();
    Map<Id, Contact> mapContact = new Map<Id, Contact>();
    for(Event ev : trigger.new){
        if(String.valueOf(ev.WhoId).startsWith('003')){
            setWhoId.add(ev.WhoId);
        }
    }
    
    if(setWhoId.size() > 0){
        List<Contact> lstContact = [Select Id, Is_Prospect__c from Contact where Id in :setWhoId];
        for(Contact c : lstContact){
            mapContact.put(c.Id, c);
        }
    }
    
    for(Event ev : trigger.new){
        if(String.valueOf(ev.WhoId).startsWith('003')){
            if(mapContact.containsKey(ev.WhoId)){
                if(!mapContact.get(ev.WhoId).Is_Prospect__c && (ev.Type__c == 'Introductory Call' || ev.Type__c == 'Introductory Email')){
                    ev.addError('Invalid event Type');
                }else if(mapContact.get(ev.WhoId).Is_Prospect__c && (ev.Type__c != 'Introductory Call' && ev.Type__c != 'Introductory Email')){
                    ev.addError('Invalid event Type');
                }
            }
        }
    }

}