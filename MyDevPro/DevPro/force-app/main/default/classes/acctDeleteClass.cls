public class acctDeleteClass {
    public static void deleteFunction(List<Account>acList){
        for(Account ac : acList){
            if(ac.OwnerId != UserInfo.getUserId()){
                ac.addError('You dont have any permission to delete, Please contact System Admin.');
            }
        }
    }

}