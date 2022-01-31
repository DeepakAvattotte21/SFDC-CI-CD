trigger AvoidDuplicateVacancies on Vacancy__c (before insert, before update, after update, after insert) {
    for(Vacancy__c vac:Trigger.new){
        system.debug('vacancy name is' + vac.name);
        Integer RecordCount = [select count() from Vacancy__c where name = : vac.name];
        if(RecordCount>0){
            vac.name.AddError('The vacancy alredy posted, Please check the site');
        }
        
    }

}