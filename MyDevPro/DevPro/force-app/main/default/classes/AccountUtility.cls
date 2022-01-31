public class AccountUtility {
    public static void viewAnnualRevenue(){
        List<account> accountsList = new List<account>();
        accountsList = [SELECT name, annualrevenue from account];
        for(account acnt :accountsList){
            String acctRev = 'name ' + acnt.name + ': AnnualRevenue ' + acnt.annualrevenue;
            system.debug(acctRev);
            
        }
        }
}