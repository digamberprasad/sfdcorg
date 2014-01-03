public class MyHelloWorld{
    //This method updates the hello field on a list of accounts
    
    public static void addHelloWorld(Account[] accs){
        for(Account a : accs){
            if(a.Hello__c != 'World')
                a.Hello__C    = 'World';
        }
    }
}