trigger duplicateEmailTrigger on Case (before insert) {
    DuplicateCaseController.duplicateCaseMethod(Trigger.new);
}