public class NewAccounts {
    public static void sObjectsInsert(){
        Account store = new Account();
        store.Name = 'The Tea Factory';
        store.AccountNumber = '4522322';
        store.Phone = '055-4545';
        insert store;
        
    }

}