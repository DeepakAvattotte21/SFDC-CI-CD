public class actWithDummyContactClass {
    public static void dummyContact(List<Account>acList){
        List<Contact>conList = New List<Contact>();
        for(Account ac : acList){
            
            if(ac.NumberOfEmployees > 100){
                Contact c = New Contact();
                c.FirstName = 'Deepak';
                c.LastName = 'Avattotte';
                c.AccountId = ac.Id;
                conList.add(c);
                
            }
            insert conList;
        }
    }

}