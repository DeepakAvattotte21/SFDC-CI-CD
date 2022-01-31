public class Flower {
    public static integer wilt(integer NumberOfPetals){
        if (NumberOfPetals >= 1){
            NumberOfPetals--;
        }
        return NumberOfPetals;
    }
    
    public static void grow(integer height, integer Maxheight){
        height = height+2;
        if(height >= maxheight){
            pollinate();
        }
    }
    public static void pollinate(){
        system.debug('Pollinating...');
    }

}