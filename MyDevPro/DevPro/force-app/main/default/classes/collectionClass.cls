public class collectionClass {
    public void myList(){
        List<account> acList = new List<account>();
        List<account> upList = new List<account>();
        acList = [select id, name, accountnumber, billingstate from account];
        for(account acnt : acList){
            if(acnt.billingstate=='FL'){
                acnt.billingstate='CA';
                upList.add(acnt);
            }
        }
        system.debug('updated list-->' + upList);
        update upList;
        
    }

}