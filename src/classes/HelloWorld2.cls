global class HelloWorld2 {
    // The WebService keyword makes this a public WebService method
    WebService static String sayHelloWorld(String arg) {
        // This method returns a simple message
        return 'Hello ' + arg;
    }
 
    // The following is a simple test of the sayHelloWorld method
    static testMethod void testHelloWorld() {
      System.assertEquals('Hello to you!', sayHelloWorld('to you!'));
    }

}