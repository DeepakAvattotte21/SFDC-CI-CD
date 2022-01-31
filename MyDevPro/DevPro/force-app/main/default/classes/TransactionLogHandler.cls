public class TransactionLogHandler {
    public static void doHandlerException(system.Exception ex, String ProcessName){
        Error_Log__c transactionLog = new Error_Log__c(
            Log_Details__c = ex.getStackTraceString() + '<br/> <strong> Message is </strong>' + 
       		ex.getMessage() + '<br/> ' + ex.getCause() + '<br/>' + ex.getTypeName() + '<br/>' + ex.getLineNumber(),
        	Log_Date_Time__c = System.now(),
        	Process_Name__c = ProcessName
        );
        
        if(Schema.SObjectType.Error_Log__c.isCreateable()){
            insert transactionLog;
        }
    }

}