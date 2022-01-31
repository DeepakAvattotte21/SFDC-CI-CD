public class PropertyUtility {
    public static void newListedProperties(){
        List<Property__c> newPropList = [SELECT Name, 	Broker__r.Email__c, Days_On_Market__c FROM Property__c 
                                        WHERE Date_Listed__c = LAST_N_DAYS:30 ];
        for(Property__c pro : newPropList){
            string propEmail = (pro.Name + ' : ' + pro.Broker__r.Email__c);
            system.debug(propEmail);
            
        }
    }

}