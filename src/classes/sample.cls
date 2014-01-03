public with sharing class sample {
    public Integer numberOfRowToRemove1 { get; set; }
    public List<Account> list1 { get; set; }
    public List<Account> list2 { get; set; }
    public string temp{get;set;}
    String[] multipleStatus = new String[]{};
    public string status{ set; }

    public sample()
    {
        list1 = [select id,name,accountnumber from Account];
        list2 = [select id,name,accountnumber from Account];
    }

    public void find()
    {
        system.debug('Inside find...');
        system.debug('temp:-->' + temp);
        //system.debug('Status:-->' + status);
        system.debug('multipleStatus :-->' + multipleStatus );
        //if(temp=='complete')
        //{
            list2.add(0,list1.get(numberOfRowToRemove1));
            list1.remove(numberOfRowToRemove1);

        //}

    }
    
    public List<SelectOption> getStatus() {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('None','---None---'));
        options.add(new SelectOption('Complete','Complete'));
        options.add(new SelectOption('Open','Open'));
        return options;
    }
    
    public String[] getMultipleStatus () {
        return multipleStatus ;
    }
    
    public void setMultipleStatus (String[] multipleStatus ) {
        this.multipleStatus = multipleStatus ;
    }
    
}