trigger DuplicateAMLrigger on AML_Case_Request__c (before insert, before update, after undelete) {
    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)){
        DuplicateAMLClass.varDupliateAML(Trigger.new);
    }
    if(Trigger.isAfter && Trigger.isUndelete){
        DuplicateAMLClass.varDupliateAML(Trigger.new);
    }
}