public class propertyTypeClass {
    public static void propertyDiscount(List<Property_Broker__c>pbList){
        for(Property_Broker__c pb : pbList){
            if(pb.Type__c == 'Row House'){
                pb.Price__c = (pb.Price__c - 0.05);
                pb.Discount_Status__c = 'Congratulations!! You have got 5% Discount!!';
                system.debug('The output is' + pbList);
            }
        }
    }

}