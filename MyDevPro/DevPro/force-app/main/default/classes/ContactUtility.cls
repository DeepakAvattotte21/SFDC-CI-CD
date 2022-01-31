public class ContactUtility {
    public static void ViewContacts(){
        List<Contact> ListOfContacts = [SELECT FirstName, LastName FROM Contact];
        for(Contact con : ListOfContacts){
            String fullname = 'First Name:' + con.FirstName + ',Last Name:' + con.LastName;
            system.debug(fullname);
        }
    }

}