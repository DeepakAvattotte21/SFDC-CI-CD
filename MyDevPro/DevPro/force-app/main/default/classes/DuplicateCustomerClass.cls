public class DuplicateCustomerClass {
    public static void varDupCustomerMethod(List<Customer__c> cusList){  // Create a list of customer
        //Step 1: Create a set and Store the new and existing Id Number
        Set<String> newIdSet = new Set<String>();
        Set<String> existingIdSet = new Set<String>();
        
        //Add the Id number into the list
        for(Customer__c cus : cusList){
            if(cus.ID_Number__c != null){
                if(cus.RecordTypeId != null){
                    newIdSet.add(cus.ID_Number__c);
                }
            }
        }
        
        //get the customer data from existing list to know the dupliacte records
        List<Customer__c> existingCusList = [select Id, ID_Number__c, Name, RecordTypeId from Customer__c Where ID_Number__c IN: newIdSet AND 
                                            Id_Number__c != null];
        
        for(Customer__c cus : existingCUsList){  // add exisiting Id number to the existingid set
            existingIdSet.add(cus.ID_Number__c + ':' + cus.RecordTypeId);
        }
        
        for(Customer__c cus : cusList){ 
            //Check the condition if there is any duplicate record with same id number 
            String searchKey = cus.ID_Number__c + ':' + cus.RecordTypeId;
            if(existingIdSet.contains(searchKey)){
                cus.ID_Number__c.addError('Duplicate Id Number Not Allowed');
            }
        }
    }
    
    
}