public class opportunitySetClass {
    public static void oppStatus(List<Opportunity>opList){
        List<Task> tList = new List<Task>();
        for(Opportunity op : opList){
            if(op.StageName == 'Closed Won'){
                tList.add(new Task(Subject='Follow Up Test Task',
                                   WhatId = op.Id,
                                   Status = 'Closed Won'));
                                  
                
            }
            
           
        }
         insert tList;
    }

}