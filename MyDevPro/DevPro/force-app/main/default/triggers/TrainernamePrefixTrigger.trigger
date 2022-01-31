trigger TrainernamePrefixTrigger on Trainer__c (before insert) {
    for(Trainer__c t : Trigger.New){
        t.Name = 'Mr.' + t.Name;
    }

}