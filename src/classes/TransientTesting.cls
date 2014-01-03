public with sharing class TransientTesting {
	public static void validMap(){
        Map<integer, List<integer>> mapListInt = new Map<integer, List<integer>>();
		List<integer> lstInteger;
		for (integer i=1; i<=10; i++) {
			lstInteger = new list<integer>();
			for(integer j=1; j<=i; j++){
				lstInteger.add(j);
			}
			mapListInt.put(i, lstInteger);
		}
		system.debug('mapListInt.keySet():-->' + mapListInt.keySet());
		system.debug('mapListInt.values():-->' + mapListInt.values());
		system.debug('mapListInt:-->' + mapListInt);
    }

}