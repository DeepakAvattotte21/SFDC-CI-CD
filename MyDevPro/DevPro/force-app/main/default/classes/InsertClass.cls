/**
 * @description       : 
 * @author            : Deepak Rajan
 * @group             : 
 * @last modified on  : 07-19-2021
 * @last modified by  : Deepak Rajan
 * Modifications Log 
 * Ver   Date         Author         Modification
 * 1.0   07-19-2021   Deepak Rajan   Initial Version
**/
public with sharing class InsertClass {
    
    public static void varUpdateMethod(){
        //create a new account
        Account ac = new Account(name = 'RaftersTech Pvt Ltd.');
        insert ac;
        //update some fields in the newly created account.
        Account ac1 = [SELECT Id, Name, BillingCity, Industry, Phone FROM Account WHERE
                      Id = :ac.Id];
        ac1.BillingCity = 'Kochi';
        ac1.Phone = '9562406700';
        ac1.Industry = 'Engineering';
        update ac1;
        system.debug('The updated account is = ' +ac1);
    }
}