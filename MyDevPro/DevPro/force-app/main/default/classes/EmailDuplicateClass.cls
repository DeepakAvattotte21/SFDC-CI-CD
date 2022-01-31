public class EmailDuplicateClass {
    public static void varEmailDupMethod(List<Service_Registration__c> srList){
        Set<String> newMails = new Set<String>();
        Set<String> existingMails = new Set<String>();
        
        for(Service_Registration__c sr : srList){
            if(sr.Email__c != null){
                if(sr.Contact_Number__c != null){
                    newMails.add(sr.Email__c);
                }
                 
                }
                
            }
        
        List<Service_Registration__c> existingSRList = [select Id, Name, Email__c, Contact_Number__c from Service_Registration__c
                                                       where Email__c IN:newMails AND Email__c != null];
        
        for(Service_Registration__c sr : existingSRList){
            existingMails.add(sr.Email__c + ':' + sr.Contact_Number__c);
        }
        
        for(Service_Registration__c sr : srList){
            string searchKey = sr.Email__c + ':' + sr.Contact_Number__c;
            if(existingMails.contains(searchKey)){
                sr.Email__c.addError('Duplicate Record not Allowed');
            }
        }
    }

}