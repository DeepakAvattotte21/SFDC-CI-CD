public class CaseController {
    public static Integer getCaseList(){
        List<Case>clist = [SELECT Id FROM Case WHERE Status = 'New'];
        if(clist.isEmpty()){
            return 0;
        }else{
            return clist.size();
          
        }
    }

}