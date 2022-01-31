public class stdSelectionClass {
    public static void selectionMethod(List<Student__c> stdList){
        for(Student__c std : stdList){
            if(std.Age__c < 30 && std.Experience__c > 8){
                std.Status__c = 'Selected';
            }
            else{
                std.Status__c = 'Sorry! Your profile is unsuccessful this time.';
            }
            
        }
    }

}