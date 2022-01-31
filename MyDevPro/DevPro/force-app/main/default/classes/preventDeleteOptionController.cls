public class preventDeleteOptionController {
    public static void ownerPermmission(List<Account>actlist){
        for(Account acc : actlist){
            //if the person is owner, give permission to delete the record
            if(acc.OwnerId != UserInfo.getUserId()){
                acc.AddError('Sorry You dont have Permission to Delete this Account! Contact your system admin');
            }
        }
    }
}