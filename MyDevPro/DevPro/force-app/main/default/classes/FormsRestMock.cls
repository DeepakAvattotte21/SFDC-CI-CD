public class FormsRestMock implements HttpCalloutMock {
    public HTTPResponse respond(HttpRequest request){
        HTTPResponse resp = new HTTPResponse();
        resp.setHeader('Content-Type', 'application/json');
		resp.setStatusCode(200);
		resp.setBody('{"endpoint":"https://ctrlfsystems85-dev-ed.my.salesforce.com/services/apexrest/AccountServices/","access_token":"Fake_Response_Token","id":"a0045678908uy76"}');
        return resp;
    }
}