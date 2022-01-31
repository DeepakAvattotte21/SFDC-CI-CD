public class StudentDetailClass {
    public static void VarStudentSelection(List<Student__c>VarStudentListNew){
        for(Student__c VarS : VarStudentListNew){
            if(VarS.Age__c < 30 && VarS.Experience__c > 8){
                VarS.Status__c = 'Selected';
                }
               }
              }
             }