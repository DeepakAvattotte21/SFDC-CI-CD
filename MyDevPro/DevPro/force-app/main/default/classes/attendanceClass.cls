public class attendanceClass{
    public static void myClassAttendance(){
        Map<String, Integer>attendanceMap = new Map<String, Integer>{'A' => 2, 'B' => 4, 'C'=> 8, 'D'=> 12};
        attendanceMap.put('Z', 28);
        system.debug('The attendance register is : '   +attendanceMap);
    }
}