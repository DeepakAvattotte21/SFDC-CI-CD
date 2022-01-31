//Write a Java program to print the values by overriding toString() method
/*Input:
Enter the name:
Test
Enter the age:
25
Output:
Name=>Test and Age=>25*/
public class PrintToString {
    
    public void toStringMethod(Integer age, String Name){
        System.debug('Age=>: '+ age + 'and' +  'Name=> ' +Name);
    }
}