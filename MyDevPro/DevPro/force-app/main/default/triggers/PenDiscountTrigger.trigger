trigger PenDiscountTrigger on Parker_Pen__c (before insert, before update) {
    if(trigger.isInsert == True){
        PenDiscountClass.VarDiscountFunction(Trigger.New);
    }
    
    if(trigger.isUpdate == True){
        PenDiscountClass.VarDiscountFunction(Trigger.New);
        
    }

}