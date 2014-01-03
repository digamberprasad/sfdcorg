@isTest
private class BigMachinecls_Test {

    static testmethod void testBigMachinecls() {
        double dU = BigMachinecls.getU('N', 'N', 'N', double.valueOf('5.0'), '10.0');
        double dMacDet = BigMachinecls.getMachineDetail('tataTek', 'xyz', 5.0, 'test');
        system.debug('dU:-->' + dU);
        system.debug('dMacDet:-->' + dMacDet);
        system.assertequals(5.0,dMacDet,'dMacDet failure in test');
    }
}