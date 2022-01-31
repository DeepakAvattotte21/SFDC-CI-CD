//create a class
public class DuplicateCaseController {
    //create the method
    public static void duplicateCaseMethod(List<Case>caseList){
        //create a set to store emails
        Set<String>existingMail = new Set<String>();
        //add the mail to caselist
        for(Case c : caseList){
            existingMail.add(c.Email__c);
        }
        //create a list to add the case emails and query the existing list
        list<Case>clist = new List<Case>();
        //query the list and check the emails in existing set
        clist = [select Id, Email__c from Case where Email__c IN: existingMail];
        //iterating the case list and check whether any duplicate email found.
        for(Case cs: clist){
            if(clist.size()> 0){
                cs.Email__c.addError('Duplicate Request Found');
            }
        }
    }
}