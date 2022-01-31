public class stdClass {
    
    public id stdMethod(String stName, Integer stMark){
        Student__c st = new Student__c();
        st.Name = stName;
        st.Mark_Percentage__c = stMark;
        insert st;
        
        return st.id;
        
        
    }

}