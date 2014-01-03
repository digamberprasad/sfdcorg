public with sharing class MyController {
	private final List<Account> accounts;
	private final Integer totalAccount;
	
	public MyController() {
		accounts = [SELECT Id, Name, Site FROM Account limit 10000];
		totalAccount = [Select count() from Account];//assuming total account <= 1million
	}
	
	public List<Account> getAccounts() {
		return accounts;
	}
	
	public Integer getTotalAccount(){
		return totalAccount;
	}
}