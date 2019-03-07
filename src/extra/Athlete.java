package extra;
	
	public class Athlete {

	     static int nextBibNumber;
	     static String raceLocation = "New York";
	     static String raceStartTime = "9.00am";

	     String name;
	     int speed;
	     int bibNumber ;

	Athlete (String name, int speed){
	     this.name = name;
	     this.speed = speed;
	     bibNumber = ++nextBibNumber;
	}

	public static void main(String[] args) {
	     //create two athletes      //print their names, bibNumbers, and the location of their race. }
		System.out.println(raceLocation);
		Athlete athlete = new Athlete("Bob", 12);
		System.out.println(athlete.name);
		System.out.println(athlete.bibNumber);
		
		
		Athlete athlete1 = new Athlete("Joe", 12);
		System.out.println(athlete1.name);
		System.out.println(athlete1.bibNumber);
	} 

}
