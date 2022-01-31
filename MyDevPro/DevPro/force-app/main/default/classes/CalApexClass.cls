//Declare the class
public class CalApexClass {
    //Declare the class level variables
    private static Integer VarSum;
    private static Integer VarMul;
    
    //function declaration for sum
    public static Integer MakeSum(Integer VarNum1, Integer VarNum2){
        VarSum = VarNum1 + VarNum2;
        return VarSum;
    }
    
    //function declaration for Mul
    public static Void MakeMul(Integer VarNumA, Integer VarNumB){
        VarMul = VarNumA * VarNumB;
        system.debug('The Answer is = '  +VarMul);
    }
   

}