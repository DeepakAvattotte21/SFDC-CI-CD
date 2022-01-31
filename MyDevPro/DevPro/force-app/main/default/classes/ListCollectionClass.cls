public class ListCollectionClass {
    public static void VarCollection(){
       List<String> strList =  new List<String>();
       strList.add('Notebook');
       strList.add('Textbook');
       strList.add('Drawing book');
       strList.add('Online book');
       System.debug(strList);
        
       strList.sort();
       System.debug(strList);
       
        
    }

}