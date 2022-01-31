public with sharing class SampleClassVF {
    public String FirstName{set;get;}
   	public String LastName{set;get;}
    public String FullName{set;get;}
    
    public void MyName(){
        FullName = LastName + FirstName;
        
    } 

}