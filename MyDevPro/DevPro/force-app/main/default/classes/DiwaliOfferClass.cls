public class DiwaliOfferClass{
    public static void applyOffonLCD(List<Deal_Detail__c> VarDealListNew){
        for(Deal_Detail__c VarD : VarDealListNew){
            if(VarD.Product_Type__c == 'LCD'){
                VarD.Price__c = VarD.Price__c - (VarD.Price__c * 0.20);
                }
              }
            }
           }