public class PenDiscountClass {
    public static void VarDiscountFunction(List<Parker_Pen__c> NewPenList){
        for(Parker_Pen__c VarPen : NewPenList){
            if(VarPen.Price__c >= 100){
                VarPen.Price__c = VarPen.Price__c - 20;
                VarPen.Discount_Info__c = 'Congrats!! You have got 20$ Reduction.!!!';
            }
            else if(VarPen.Price__c > 50 && VarPen.Price__c < 100){
                VarPen.Price__c = VarPen.Price__c - 10;
                VarPen.Discount_Info__c = 'Congrats!! You have got 10$ Reduction.!!!';
            }
            else if(VarPen.Price__c > 25 && VarPen.Price__c < 50){
                VarPen.Price__c = VarPen.Price__c - 5;
                VarPen.Discount_Info__c = 'Congrats!! You have got 5$ Reduction.!!!';
            
            
        }
            else if(VarPen.Price__c > 10 && VarPen.Price__c < 25){
                VarPen.Discount_Info__c = 'Sorry Better luck next time.!!!';
                 
   		 }
        }
    }

}