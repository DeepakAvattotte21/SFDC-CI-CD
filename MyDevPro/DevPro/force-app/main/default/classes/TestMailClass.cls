/**
 * @description       : 
 * @author            : Deepak Rajan
 * @group             : 
 * @last modified on  : 07-14-2021
 * @last modified by  : Deepak Rajan
 * Modifications Log 
 * Ver   Date         Author         Modification
 * 1.0   07-14-2021   Deepak Rajan   Initial Version
**/
public with sharing class TestMailClass {
    private final Contact con;
    public TestMailClass(ApexPages.StandardController controller)
    {
        this.con=(Contact)controller.getRecord();
    }

    public void SendEmail(){
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setTargetObjectId(con.Id);
        mail.setTemplateId('F00X2w000000lWzu');
        Messaging.SendEmail(new Messaging.SingleEmailMessage[] {mail});
    }
}