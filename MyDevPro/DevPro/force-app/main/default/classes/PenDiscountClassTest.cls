@isTest
class PenDiscountClassTest {
    static testMethod void TestFunction1(){
        Parker_Pen__c VarPen = new Parker_Pen__c();
        VarPen.Name = 'Parker Blue';
        VarPen.Price__c = 250;
        insert VarPen;
        
        Parker_Pen__c VarPen2 = New Parker_Pen__c();
        VarPen2 = [SELECT Price__c FROM Parker_Pen__c WHERE id =: VarPen.Id];
        system.assertEquals(230, VarPen2.Price__c);
    }
    static testMethod void TestFunction2(){
        Parker_Pen__c VarPen = new Parker_Pen__c();
        VarPen.Name = 'Parker Blue';
        VarPen.Price__c = 300;
        update VarPen;
        
        Parker_Pen__c VarPen2 = New Parker_Pen__c();
        VarPen2 = [SELECT Price__c FROM Parker_Pen__c WHERE id =: VarPen.Id];
        system.assertEquals(280, VarPen2.Price__c);
    }
    static testMethod void TestFunction3(){
        Parker_Pen__c VarPen = new Parker_Pen__c();
        VarPen.Name = 'Parker Blue';
        VarPen.Price__c = 60;
        insert VarPen;
        
        VarPen.Name = 'Parker Black';
        VarPen.Price__c = 65;
        update VarPen;
        
        
        
        Parker_Pen__c VarPen2 = New Parker_Pen__c();
        VarPen2 = [SELECT Price__c FROM Parker_Pen__c WHERE id =: VarPen.Id];
        system.assertEquals(55, VarPen2.Price__c);
    }
    static testMethod void TestFunction4(){
        Parker_Pen__c VarPen = new Parker_Pen__c();
        VarPen.Name = 'Parker Blue';
        VarPen.Price__c = 40;
            
        insert VarPen;
        
        Parker_Pen__c VarPen2 = New Parker_Pen__c();
        VarPen2 = [SELECT Price__c FROM Parker_Pen__c WHERE id =: VarPen.Id];
        system.assertEquals(45, VarPen2.Price__c);
    }
    static testMethod void TestFunction5(){
        Parker_Pen__c VarPen = new Parker_Pen__c();
        VarPen.Name = 'Parker Blue';
        VarPen.Price__c = 15;
            
        insert VarPen;
        
        Parker_Pen__c VarPen2 = New Parker_Pen__c();
        VarPen2 = [SELECT Price__c FROM Parker_Pen__c WHERE id =: VarPen.Id];
        system.assertEquals(15, VarPen2.Price__c);
    }

}