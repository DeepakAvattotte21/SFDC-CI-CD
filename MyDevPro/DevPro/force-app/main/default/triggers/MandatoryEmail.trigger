trigger MandatoryEmail on Teacher__c (before insert, before update) {
    for(Teacher__c tea : Trigger.new)
    {
        if(tea.Teachers_Email__c == null)
        {
            tea.Teachers_Email__c.AddError('The field is madatory! Please enter the teachers email');
        } 
    }
        

}