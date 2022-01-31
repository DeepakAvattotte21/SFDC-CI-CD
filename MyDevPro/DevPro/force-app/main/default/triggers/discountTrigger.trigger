trigger discountTrigger on Property_Broker__c (before insert, before update) {
    propertyTypeClass.propertyDiscount(Trigger.New);

}