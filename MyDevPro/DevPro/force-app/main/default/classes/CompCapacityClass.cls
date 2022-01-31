public class CompCapacityClass {
    public static void VarCompCapacityCheck(List<Computer__c> VarCompListNew){
        for(Computer__c VarC : VarCompListNew){
            if(VarC.RAM__c < 4 && VarC.Processor__c < 2 && VarC.Hard_Disk__c < 50){
                VarC.Capacity__c = 'Low Capacity';
                }
               }
              }
             }