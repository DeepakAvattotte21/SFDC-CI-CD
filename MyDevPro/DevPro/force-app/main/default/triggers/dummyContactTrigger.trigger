trigger dummyContactTrigger on Account (before Update) {
    if(Trigger.isBefore == True && Trigger.isUpdate == True){
        actWithDummyContactClass.dummyContact(trigger.new);
    }
}