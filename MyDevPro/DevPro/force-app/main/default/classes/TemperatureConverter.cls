public class TemperatureConverter {
    // Takes a Fahrenheit temperature and returns the Celsius equivalent.
    public static Decimal FahrenheitToCelsius(Decimal fh){
        // formula is (32°F − 32) × 5/9 = 0°C
		Decimal cs = (fh - 32)* 5/9;
        system.debug('34 fahrenheit is = '+cs +'Celcious');
        return cs.setScale(2);
    }

}