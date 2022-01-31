public class Demo3 {
    public void mainValueMethod(){
        String websiteurl = 'www.rafters.com';
        
        System.debug('Before value call' + websiteurl);
        passByValueCall(websiteurl);
        System.debug('After value call' + websiteurl);
    }
    
    private void passByValueCall(String websiteurlValue){
        websiteurlValue = 'www.raftertech.co.nz';
    }
    
    public void mainReferenceMethod(){
        Account a =  new Account();
        a.Name = 'Test Account';
        a.Website = 'www.rafter.com';
        
        System.debug('Before reference call' + a);
        passByReference(a);
        System.debug('After ref call' + a);
    }
    
    private void passByReference(Account a){
        a.Website = 'www.rafterstec.co.nz';
    }

}