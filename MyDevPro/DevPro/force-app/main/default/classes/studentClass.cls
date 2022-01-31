public class studentClass {
    public void studentMethod(){
        Student__c stds = new Student__c();
        stds.Name = 'Deepak Raj';
        stds.Mark_Percentage__c = 85;
        insert stds;
    }

}