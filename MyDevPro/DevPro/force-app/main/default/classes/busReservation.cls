public class busReservation{
    public static void reservationmethod(){
        integer totalSeats = 52;
        integer reservedSeats = 30;
        integer remainingSeats;
        remainingSeats = totalSeats - reservedSeats;
        system.debug('Available seats ='   +remainingSeats);
    }
}