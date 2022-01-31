Public class MobileDiscountClass{
    public static void varMobileDiscount(List<Mobile__c>mbList){
        //fetching the mobile data into a list
        for(Mobile__c mbl: mbList){
            //first condition : give 5% discount for the samsung Phones
            if(mbl.Brand__c == 'Samsung'){
                //discounted_price = original_price - (original_price * discount / 100)
                mbl.Price__c = mbl.Price__c - (mbl.Price__c * 5/100);
                mbl.Discount_Status__c = 'Congrats!!!! You have got 5% Discount. Thanks for your Purchase!!';
            }
            //second condition: Give 15% of discount for the Apple phones
            if(mbl.Brand__c == 'Apple'){
                mbl.Price__c = mbl.Price__c - (mbl.Price__c * 15/100);
                mbl.Discount_Status__c = 'Congrats!!!! You have got 15% Discount. Thanks for your Purchase!!';
            }
        }
    }
}