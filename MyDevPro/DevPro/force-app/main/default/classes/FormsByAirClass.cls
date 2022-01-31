/**
 * @description       : 
 * @author            : Deepak Rajan
 * @group             : 
 * @last modified on  : 08-17-2021
 * @last modified by  : Deepak Rajan
**/
public class FormsByAirClass {
    public static FormResponseWrapper InvokeFormsByairApi(String documentId){
    //public static List<FormResponseWrapper> FormsByDocumentId(String documentId){
        // Create the list of wrapper class.
        //List<FormResponseWrapper> formDocsList = new List<FormResponseWrapper>(); 
        // Set the endpont and API KEY from the target app.
        //String endpoint = 'https://tallpoppy.formsbyair.com/forms/requests/';
        String endpoint = 'https://formsbyair.com/api/v1/Documents/';

        String Api_Key = '8zvDYdjb7xCzbKx3d9Qss-YAHrLQdb5pa6Tc1nbMLm-q_bJ8YMcN2Uwzx5Do9STPdVs6_6LcWRkCWEw587Bl09Z38XjqCM_K--U7yJrSnwGCx5K9RcIxVjy1twirzVolnACMAVQAUeyDISH1ZY5tOOPTuXk_u-bZ7sKubaDAHEP-KJ1O19WIZWDAyp4uEXAq0TW2MiEVD8twNsS4uxC1n8WFEDVMOmpFz2tC0SvHpD6EX1xaTM_XAoMSAtFDdMdQU978SLmubpa4a7wbk3dvQu8d2wqUz0awUNZmQDLKWtubiuIazvB8Yi4G6Y2jxt9v9qmvuXDv_1k-sjdDub2Mnvn5weLEy6QDuLIJ-hXsEi-wSFtZ';
        if(String.isNotBlank(documentId)){
            endpoint = endpoint+documentId;
        }
        // Create a apexcallout to fetch the Document Id from FormsByAir.
        Http h = new Http();
        Httprequest hreq = new Httprequest();
        hreq.setMethod('GET');
        hreq.setEndpoint(endpoint);
        hreq.setHeader('Authorization', 'Bearer '+Api_Key);
        hreq.setHeader('content-type', 'application/json');
        HttpResponse hresp = h.send(hreq);
        FormResponseWrapper fresp = (FormResponseWrapper)JSON.deserialize(hresp.getBody(), FormResponseWrapper.class);
        
        
        return fresp;
    }
    //Create a apexcallout to Post the Case details into FormsByAir
    @future(callout=true)
    public static void doPostCaseDetails(Set<Id>caseId){
        
        List<Case> thiscase = [select Id, Document_ID__c, TP_Reference_Number__c from Case where Id IN:caseId];
        List<Case> casetoupdate = new List<Case>();
        for(Case cs : thiscase){
            
        
        
        String endpoint = 'https://formsbyair.com/api/v1/Documents/request/';
        String Api_Key = '8zvDYdjb7xCzbKx3d9Qss-YAHrLQdb5pa6Tc1nbMLm-q_bJ8YMcN2Uwzx5Do9STPdVs6_6LcWRkCWEw587Bl09Z38XjqCM_K--U7yJrSnwGCx5K9RcIxVjy1twirzVolnACMAVQAUeyDISH1ZY5tOOPTuXk_u-bZ7sKubaDAHEP-KJ1O19WIZWDAyp4uEXAq0TW2MiEVD8twNsS4uxC1n8WFEDVMOmpFz2tC0SvHpD6EX1xaTM_XAoMSAtFDdMdQU978SLmubpa4a7wbk3dvQu8d2wqUz0awUNZmQDLKWtubiuIazvB8Yi4G6Y2jxt9v9qmvuXDv_1k-sjdDub2Mnvn5weLEy6QDuLIJ-hXsEi-wSFtZ';
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endpoint);
        request.setMethod('POST');
        request.setHeader('Authorization', 'Bearer '+Api_Key);
        request.setHeader('content-type', 'application/json');
        request.setBody('{"FormId":"22de7f81-bb67-4361-b686-343d6d1232c3","Submit":false,"Prefill":[{"Tag":"CaseId","Data":"'+cs.TP_Reference_Number__c+'"}]}');
        HttpResponse hresp = http.send(request);
        system.debug('******hresponse' +hresp.getBody());
        if(hresp.getStatusCode() == 201){
            Map<String, Object> DocInfo = (Map<String, Object>)JSON.deserializeUntyped(hresp.getBody());
            for(String fieldName: DocInfo.keySet()){
                
                //thiscase.put('Document_ID__c', (String)DocInfo.get(fieldName));
                system.debug('res' +(String)DocInfo.get(fieldName));
                cs.Document_ID__c = (String)DocInfo.get(fieldName);
                casetoupdate.add(cs);
                
               
            }
        }
        }
          update casetoupdate;  
        
        
    }

    //Create a wrapper class to get the output details.
    Public class FormResponseWrapper{
        public String FormId;
        public String FormName;
    	public String DocumentID;
        public String Name;
		public String Id;
        public String Value;
        

	
	}
}