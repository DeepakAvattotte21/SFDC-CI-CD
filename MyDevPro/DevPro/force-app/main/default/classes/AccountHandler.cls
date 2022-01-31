//The Apex class must be called AccountHandler and be in the public scope
public class AccountHandler {
    //The Apex class must have a public static method called insertNewAccount
    //The method must accept an incoming string as a parameter, which will be used to create the Account name
    public static Account insertNewAccount(String acName){
      	//The method must insert the account into the system and then return the record
      	Account ac = new Account();
        ac.Name = acName;
        try{
            insert ac;
        }catch(DmlException e){
            
            system.debug('the excpetion is' + e.getMessage());
            return null;
        }
        return ac;
}
}