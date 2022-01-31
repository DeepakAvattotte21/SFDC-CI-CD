public class DuplicateAMLClass {
    //Step 1:  Create a new list of AML records
    public static void varDupliateAML(List<	AML_Case_Request__c>amlList){
        //Step 2: create a set to store the TP reference number
        Set<String> newTpnumSet = new Set<String>();
        Set<String> existingTpnumSet = new Set<String>();
        
        //Step 3: Add TP number to the set
        for(AML_Case_Request__c aml : amlList){
            if(aml.TP_Reference_Number__c != null){
                newTpnumSet.add(aml.TP_Reference_Number__c);
            }
        }
        
        //Step 4: Make a SQOL on Contact Object to get the Duplicate Records 
        List<AML_Case_Request__c> existingAMlList = [select Id, TP_Reference_Number__c  from AML_Case_Request__c where
                                                   TP_Reference_Number__c IN: newTpnumSet AND TP_Reference_Number__c!= null ];
        for(AML_Case_Request__c aml: existingAMlList){
            existingTpnumSet.add(aml.TP_Reference_Number__c);
        }
        
        for(AML_Case_Request__c aml: amlList){
            if(existingTpnumSet.contains(aml.TP_Reference_Number__c)){
                aml.TP_Reference_Number__c.AddError('Duplicate TP Number Not allowed');
                
            }
            else{
                existingTpnumSet.add(aml.TP_Reference_Number__c);
            }
        }
    }

}