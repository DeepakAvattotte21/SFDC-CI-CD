trigger CompCapacityTrigger on Computer__c(Before insert, Before update){
CompCapacityClass.VarCompCapacityCheck(Trigger.New);
}