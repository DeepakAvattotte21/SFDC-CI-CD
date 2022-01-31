public class MyTestAPClass {
    public static void varFirstMethod(){
        List<String>addList = new List<String>();
        addList.add('Test1');
        addList.add('Test2');
        system.debug('The List is:  ' +addList);
    }
    public static void varSecondList(){
        //Create a new list and add some values//
        List<Integer>myList = new List<integer>();
        myList.add(100);
        myList.add(500);
        system.debug('The first list is:   '+myList);
        //create a new list and copying the values from 1st list//
        List<Integer>myList1 =  new List<Integer>(myList);
        system.debug('The second List is:  '  +myList1);
    }
    public static void varSetToListMethod(){
        //create a new set and add values//
        Set<Integer>firstSet = new Set<Integer>();
        firstSet.add(2300);
        firstSet.add(5633);
        system.debug('The first Set is :   ' +firstSet);
        //Create a new list and copy the values from the Set//
        List<Integer>myList = new List<integer>(firstSet);
        system.debug('The new List is :   '+myList);
    }
    public static void varAddElementMethod(){
        List<Integer>myList =  new List<integer>();
        myList.add(78963);
        Integer MyNumber = myList.get(0);
        System.assertEquals(78963, myNumber);
    }
}