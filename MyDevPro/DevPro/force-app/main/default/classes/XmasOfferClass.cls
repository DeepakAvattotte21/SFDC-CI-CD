public class XmasOfferClass {
    public static void varOnSaleOffers(List<Mobile__c>mbList){
        //fetching the mobile data into the list
        for(Mobile__c mbl: mbList){
            //Give 10% off for samsung and 20% for Apple phones
            if(mbl.Brand__c == 'Samsung'){
                mbl.Price__c = mbl.Price__c - (mbl.Price__c * 10/100);
                mbl.Discount_Status__c = 'Thanks for your purchase!! You have got 10% Xmas Sale';
            }
            else if(mbl.Brand__c == 'Apple'){
                mbl.Price__c = mbl.Price__c - (mbl.Price__c - 20/100);
                mbl.Discount_Status__c = 'Thanks for your purchase!! You have got 10% Xmas Sale';
            }
        }
    }
    
    //Off Sales after christmas
    public static void varNormalSales(List<Mobile__c>mbList){
        //fetching the data into a list
        for(Mobile__c m : mbList){
            //Give 5% off for samsung
            if(m.Brand__c == 'Samsung'){
                m.Price__c = m.Price__c - (m.Price__c * 5/100);
                m.Discount_Status__c = 'You have got 5% offer!! Enjoy';
            }
            else if(m.Brand__c == 'Apple'){
                m.Discount_Status__c = 'Thanks for your Purchase. Have a wonderful Day';
            }
        }
    }

}