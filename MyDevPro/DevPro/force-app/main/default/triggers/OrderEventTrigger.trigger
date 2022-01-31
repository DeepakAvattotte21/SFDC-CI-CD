trigger OrderEventTrigger on Order_Event__e (after insert) {
	//List the task that hold the events
	List<Task> tasks = new List<Task>();
    
    //get queue id for task owner
    Group queue = [select Id from Group where Name = 'Regional Dispatch' AND type = 'Queue'];
    
    for(Order_Event__e event :Trigger.new){
        if(event.Has_Shipped__c == true){
            Task ts = new Task();
            ts.Priority = 'Medium';
            ts.Subject = 'Follow up on shipped order '+ event.Order_Number__c;
            ts.OwnerId = event.CreatedById;
            tasks.add(ts);
        }
    }
    insert tasks;
}