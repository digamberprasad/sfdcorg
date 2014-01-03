trigger myTrgr on Account (before insert) {
    List<Account> LstAcc1 = new List<Account> ();
    for (Account A : trigger.new){
        A.AnnualRevenue=10000;
        LstAcc1.add(A);
    }
    //update LstAcc1;
}