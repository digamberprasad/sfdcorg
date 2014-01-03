global class CallWebService {
	
	webService static String webServiceMethod(Id contactID){
		
		//String name		= 'Digamber Prasad';
		//LoginResult 								= login('digamber.prasad@inforte.com', 'digamber1234');
		VMWareTestWebService cls					= new VMWareTestWebService();
		VMWareTestWebService.TestWebService cls1	= new VMWareTestWebService.TestWebService();
		String name									= cls1.testWebMethod(contactID);
		return name;
		
	}

}