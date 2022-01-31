@isTest
public class FormsClassTest {
    public static testMethod void unitTest_GetMethod(){
        RestRequest request = new RestRequest();
        request.requestURI = '/services/apexrest/v1/formsmanagement/';
        request.httpMethod = 'GET';
        request.addHeader('Content-Type', 'application/json');
        request.addHeader('Accept','application/json');
        set<Id>caseId = new set<id>();
        FormsByAirClass.InvokeFormsByairApi('test');
    }
    public static testMethod void unitTest_PostMethod(){
        RestRequest request = new RestRequest();
        request.requestURI = '/services/apexrest/v1/formsmanagement/';
        request.httpMethod = 'POST';
        request.addHeader('Content-Type', 'application/json');
        request.addHeader('Accept','application/json');
        set<Id>caseId = new set<id>();
        FormsByAirClass.doPostCaseDetails(caseId);
        
    }
}