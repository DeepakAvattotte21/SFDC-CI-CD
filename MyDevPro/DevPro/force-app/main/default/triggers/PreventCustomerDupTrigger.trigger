trigger PreventCustomerDupTrigger on Customer__c (before insert, before update) {
    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)){
        DuplicateCustomerClass.varDupCustomerMethod(Trigger.new);
    }
}