public class StudentSelectionController {
    public static void varStudentSelection(List<Student__c>stdList){
        for(Student__c std: stdList){
            if(std.Experience__c > 8 && std.Age__c < 30){
                std.Status__c = 'Selected';
            }
        }
    }
    
}