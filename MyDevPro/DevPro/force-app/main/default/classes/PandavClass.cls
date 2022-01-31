/** Create a array class that will populate the pandavas names and 
 weapons they used in mahabarat**/

public with sharing class PandavClass {
    //Declare the Pandav Members array
    public String[] name {get;set;}
    public string[] weapons{get; set;}

    //Constructor declaration

    public PandavClass() {
        name = new string[]{'Yudhishtiran', 'Bheeman', 'Arjunan', 'Nakulan', 'Sahadevan'};
        weapons = new string[]{'Kuntham', 'Gadha', 'Dhanus', 'Vaal', 'Kodali'};
    }
}