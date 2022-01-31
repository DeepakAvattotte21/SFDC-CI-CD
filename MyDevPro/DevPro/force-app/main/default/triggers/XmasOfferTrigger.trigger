trigger XmasOfferTrigger on Mobile__c (before insert) {
    if(trigger.isInsert == True){
        XmasOfferClass.VarNewCustomer(Trigger.New);
    }
    if(trigger.isUpdate == True){
       XmasOfferClass.VarOldCustomer(Trigger.New) ;
    }

}