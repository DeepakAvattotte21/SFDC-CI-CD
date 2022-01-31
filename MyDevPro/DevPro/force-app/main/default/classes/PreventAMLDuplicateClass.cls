public class PreventAMLDuplicateClass {
    public static void preventDuplicateMethod(List<AML_Case_Request__c> amlList){
        Set<String>tpnumSet =  new Set<String>();
        amlList = [SELECT TP_Reference_Number__c FROM AML_Case_Request__c WHERE TP_Reference_Number__c IN:tpnumSet];
        for(AML_Case_Request__c aml : amlList){
            tpnumSet.add(aml.TP_Reference_Number__c);
        }
        for(AML_Case_Request__c ac : amlList){
          if(tpnumSet.contains(ac.TP_Reference_Number__c)){
            ac.TP_Reference_Number__c.addError('Duplicate Record');
        }  
        }
        
    }

}