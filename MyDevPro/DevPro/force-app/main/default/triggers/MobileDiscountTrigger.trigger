trigger MobileDiscountTrigger on Mobile__c (before insert, before update) {
    if(Trigger.isInsert && Trigger.isBefore){
        XmasOfferClass.varOnSaleOffers(Trigger.new);
    }
    
    if(Trigger.isUpdate && Trigger.isBefore){
        XmasOfferClass.varNormalSales(Trigger.new);
    }
}