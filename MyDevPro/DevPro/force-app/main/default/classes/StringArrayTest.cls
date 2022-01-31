//The Apex class must be called StringArrayTest and be in the public scope
public class StringArrayTest {
    //The Apex class must have a public static method called generateStringArray
    //The generateStringArray method must return an array (or list) of strings
    //The method must accept an incoming Integer as a parameter, which will be used to determine the number of returned strings
    //The method must return a string value in the format Test n where n is the index of the current string in the array
    public static String[] generateStringArray(Integer length){
        List<String> myList = new List<String>();
            for(Integer i=0; i<length; i++){
                myList.add('Test ' + i);
                system.debug('The List is '+ myList);
            }
            return myList;
    }
}