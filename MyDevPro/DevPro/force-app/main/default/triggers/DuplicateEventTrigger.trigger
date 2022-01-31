trigger DuplicateEventTrigger on Duplicate_Event__e (after insert) {
    for(Duplicate_Event__e ev : trigger.new){
        List<Messaging.SingleEmailMessage> mails = new List<Messaging.SingleEmailMessage>();
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        List<String>SentTo = new List<String>();
        sentTo.add('dpkjrn2130@gmail.com');
        mail.setToAddresses(sentTo);
        mail.setSubject('Duplicate Records Found');
        string body = ev.Customer_Name__c;
        mail.setHtmlBody(body);
        mails.add(mail);
        Messaging.sendEmail(mails);
    }
	
}