trigger ClosedOpportunityTrigger on Opportunity (before insert, before update) {
    if(trigger.isInsert == True && trigger.isBefore == True){
        opportunitySetClass.oppStatus(Trigger.new);
    }
    if(trigger.isUpdate == True && trigger.isBefore == True){
        opportunitySetClass.oppStatus(Trigger.new);
}
}