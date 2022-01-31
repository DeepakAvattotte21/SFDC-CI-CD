trigger DupEmailTrigger on Service_Registration__c (before insert, before update) {
    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)){
        EmailDuplicateClass.varEmailDupMethod(Trigger.new);
    }
}