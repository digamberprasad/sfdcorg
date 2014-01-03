public with sharing class BigMachinecls { 

    public static double getU(String BB, String Rolls, String Foo, double qty, String teks){


        double UQty = 0.0;

        If ( (BB == null || BB == 'N') && (Rolls == null || Rolls == 'N') && (Foo == null || Foo == 'N') ){

            UQty = qty /double.valueof(teks);

            System.debug('@@@@@ inside getU method U : - Quantity - ' + UQty);


        }
        return UQty;

    }//End of getU() method

    public static double getMachineDetail( String machine1, String machineGroup, decimal qty, String checks){

        double MachineDetailQuantity = 0;

        If ( machine1.contains('tata') && (machine1.contains('Tek') || 
            machine1.contains('X1')) && !machine1.contains('23HP') && 
            !machine1.contains('125HP') && !machineGroup.contains('MECH_ALEN')){


            MachineDetailQuantity = qty;

            System.debug('@@@@@ inside getMachineDetail Qty : ' + MachineDetailQuantity );


        }
        return MachineDetailQuantity;

    } // end of getMachineDetailQuantity method 
}