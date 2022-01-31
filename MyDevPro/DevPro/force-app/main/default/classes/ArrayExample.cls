/**
 * @description       : 
 * @author            : Deepak Rajan
 * @group             : 
 * @last modified on  : 07-14-2021
 * @last modified by  : Deepak Rajan
 * Modifications Log 
 * Ver   Date         Author         Modification
 * 1.0   07-14-2021   Deepak Rajan   Initial Version
**/
public with sharing class ArrayExample {
    //Declaration of getter and setter method with array of string type.
    public string[] myval {get;set;}
    public string  name {get; set;}
    //Constructor declaration
    public ArrayExample() {
        name= 'DeepakTest';
        myval = new string[] {'Arjun', 'Nakul', 'Bheema'};

    }
}