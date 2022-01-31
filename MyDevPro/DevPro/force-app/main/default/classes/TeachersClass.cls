public class TeachersClass {
    
    public void teachersmethod(){
        Teacher__c tchr = new Teacher__c();
        tchr.Name = 'Chirutha';
        tchr.Teachers_Email__c = 'chirutha@gmail.com';
        insert tchr;
    }

}