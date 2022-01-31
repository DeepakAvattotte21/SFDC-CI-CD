trigger DuplicateLeadTrigger on Lead (before insert, before update, after undelete) {
    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)){
        DuplicateLeadClass.varLeadDuplicate(Trigger.New);
    }
    
    if(Trigger.isAfter && Trigger.isUndelete){
        DuplicateLeadClass.varLeadDuplicate(Trigger.New);
    }
}