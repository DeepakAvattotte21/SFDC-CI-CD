/**Class for array that the values are stored
 inside the array.**/
public with sharing class ArrayTest {
    public Account[] acc {get; set;}
    //set the values inside the constructor
    public ArrayTest() {
        Account acc1 = new Account(name='Bhishma', industry= 'Banking');
        Account acc2 = new Account(name='Karnan', industry='Finance');
        Account acc3 = new Account(name='Balraman', industry='Banking');
        acc = new Account[]{acc1,acc2,acc3};
    }
}