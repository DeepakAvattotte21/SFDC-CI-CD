public class ContactSearch {
    public static List<Contact> searchForContacts(String lastName, String PostalCode){
        Contact[] con = [SELECT Id, LastName, MailingPostalCode FROM Contact WHERE
                        LastName=:lastName AND MailingPostalCode=:PostalCode];
        
        return con;
        
    }
}