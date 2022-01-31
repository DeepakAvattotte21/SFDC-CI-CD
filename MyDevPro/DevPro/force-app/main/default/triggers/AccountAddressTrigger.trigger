trigger AccountAddressTrigger on Account (before insert, before update) {
    if(trigger.isInsert == True && trigger.isBefore == True){
        accountMatchingClass.accountMatching(Trigger.new);
        PreventDeleteOptionController.ownerPermmission(Trigger.new);
        
    }
    if(trigger.isUpdate == True && trigger.isBefore == True){
         accountMatchingClass.accountMatching(Trigger.new);
        
    }

}