trigger duplicateNameTrigger on Parker_Pen__c (before insert) {
    for(Parker_Pen__c pp : Trigger.New){
        List<Parker_Pen__c> penList = [SELECT Id, Name FROM Parker_Pen__c 
                                       WHERE Name =: pp.Name];
        if(penList.Size() > 0){
            pp.Name.AddError('The Name is already Taken');
        }
    }

}