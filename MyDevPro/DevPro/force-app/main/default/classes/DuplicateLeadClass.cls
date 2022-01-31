public class DuplicateLeadClass {
    public static void varLeadDuplicate(List<Lead>ldList){ // create a new list of lead object
       
        Set<String> existingEmailSet = new Set<String>();
        Set<String> emailSet = new Set<String>();
        //add a new email into the list
        for(Lead ld : ldList){
            if(ld.Email !=Null){
                emailSet.add(ld.Email);
            }
        }
        List<Lead> existingLeadList = [select Id, Email, Owner.Email from Lead Where Email IN: emailSet AND Email!=null];
  
        
        for(Lead ld: existingLeadList){
            existingEmailSet.add(ld.Email);
        }
       
        for(Lead ld: ldList){
            if(existingEmailSet.contains(ld.Email)){
                ld.Email.AddError('Duplicate Email not allowed');
                
            }
            else{
                existingEmailSet.add(ld.Email);
            }
        }
        List<Messaging.Email> dupEmailList = new List<Messaging.Email>();
        for(Lead ld: ldList){
            if(existingEmailSet.contains(ld.Email)){
                Messaging.SingleEmailMessage dupmsg = new Messaging.SingleEmailMessage();
                dupmsg.setToAddresses(new String[] {ld.Email});
                dupmsg.setSubject('Duplicate Record Found');
                String body = 'Please Verify Your record, There is a duplicate record found on the same name';
                dupmsg.setHtmlBody(body);
                dupEmailList.add(dupmsg);
            }
            
        }
        Messaging.sendEmail(dupEmailList);
    }

}