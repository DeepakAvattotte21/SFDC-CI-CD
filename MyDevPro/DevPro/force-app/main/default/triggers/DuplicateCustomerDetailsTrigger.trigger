trigger DuplicateCustomerDetailsTrigger on Customer__c (after insert, after update) {
    if(Trigger.isInsert && Trigger.isUpdate){
        List<Duplicate_Event__e> dupEvent = new List<Duplicate_Event__e>();
        for(CUstomer__c cus : Trigger.new){
            Duplicate_Event__e dpeve = new Duplicate_Event__e();
            dupEvent.add(dpeve);
        }
        insert dupEvent;
    } 
    
}