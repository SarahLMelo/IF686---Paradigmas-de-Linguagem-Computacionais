public class Main {
    public static void main(String[] args) {
        Robot r1 = new Robot("C-3PO", "Tatooine", 1);
        Robot r2 = new Robot("R2D2", "Naabo", 1);
        Adult h1 = new Adult("Leia Organa", "Alderaan", 1, "Leader");
        Child h2 = new Child("Ben", " Chandrila", 1, "Light Saber");

        r1.greet(r2);
        r1.greet(h1);

        h1.addKid(h2);
        h2.greet(r1);

        h2.printFriendsNames();
        h2.changeToy("Darth Vaider's mask");
    }
}