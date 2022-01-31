/**
 * @description       : 
 * @author            : Deepak Rajan
 * @group             : 
 * @last modified on  : 07-08-2021
 * @last modified by  : Deepak Rajan
 * Modifications Log 
 * Ver   Date         Author         Modification
 * 1.0   07-08-2021   Deepak Rajan   Initial Version
**/
global class EmailDemoRecieve implements Messaging.InboundEmailHandler {
    //The Messaging.InboundEmailHandler Interface defines a single method handleInboundEmail
    //The message contents are available through the email argument, and the enevelope stores the to and from address.
    global Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email, Messaging.Inboundenvelope enevelope){

        Contact con;
        Case c;
        String[] Name;

        //create an InboundEmailResult object for returning the result of the Apex email Service
        Messaging.InboundEmailResult result = new Messaging.InboundEmailResult();

        try{
            //Check if contact, with same email address as the email address from which email came is present.
            //If Yes, assign the contact to the contact variable ('con')
            if([select COUNT() from Contact where Email = 
            :email.fromAddress]!=0){
                con = [select Id from Contact where Email = 
                :email.fromAddress][0];
        
            }

            //If there is no such contact, then create a new contact

            else{
                con = new Contact();
                //If fromAddress is present then assign this name to contactName.
                if(email.fromAddress!= null && email.fromAddress!= ''){
                    Name = email.fromAddress.split(' ',2);
                    con.firstName = Name[0];
                    con.lastName = Name[1];
                }
                //assign the fromAddress (sender's email address) to contactEmail
                con.Email = email.fromAddress;

                //insert the newly created contact
                insert con;
                system.debug('The new contact is:'  +con);
            }

            //create new case
            c =  new Case();
            
            //Assign the contactId to the case subject

            if(email.Subject!= Null && email.Subject != ''){
                c.subject = email.Subject;
            }
            else{
                c.subject = 'No Subject Provided';
            }

            //Assign the body of email recieved to case description
            if(email.plainTextBody!= Null && email.plainTextBody!= ''){
                c.description = email.plainTextBody;
            }
            else{
                c.description = 'No Description Provided';
            }

            //Insert newly created Case
            insert c;

            //set the success value of result to 'TRUE' and return result
            result.success = true;
            return result;
        }

        // In Case if any exception occurs
        catch(Exception e){
            //set the success value of result to 'FALSE'
            result.success = false;

            //Enter the message
            //Thye Email sender will receive this message in an email
            result.message = 'Oops, I failed';

            //Return the result.
            return result;
        }
    }
}