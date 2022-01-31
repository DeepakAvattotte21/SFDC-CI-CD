trigger DiwaliOfferTrigger on Deal_Detail__c(Before Insert){
    DiwaliOfferClass.applyOffonLCD(trigger.New);
   }