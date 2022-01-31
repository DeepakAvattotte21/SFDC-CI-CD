trigger preventDuplicateTrigger on AML_Case_Request__c (before insert, before update, after insert, after update) {
    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)){
        PreventAMLDuplicateClass.preventDuplicateMethod(trigger.new);
    }
    
    if(Trigger.isAfter && (Trigger.isInsert || Trigger.isUpdate)){
         PreventAMLDuplicateClass.preventDuplicateMethod(trigger.new);
    }
}