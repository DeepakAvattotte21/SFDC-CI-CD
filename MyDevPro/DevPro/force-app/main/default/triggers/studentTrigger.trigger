trigger studentTrigger on Student__c (before insert) {
    StudentSelectionController.varStudentSelection(Trigger.new);
}