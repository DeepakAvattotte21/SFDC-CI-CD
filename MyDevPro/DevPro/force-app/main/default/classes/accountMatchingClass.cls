public class accountMatchingClass {
    public static void accountMatching(List<Account>acList){
        for(Account ac : acList){
            if(ac.Match_Billing_Address__c == True){
                ac.ShippingPostalCode = ac.BillingPostalCode;
            }
        }
    }

}