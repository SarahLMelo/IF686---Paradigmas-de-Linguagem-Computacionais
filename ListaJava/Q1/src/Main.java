public class Main {
    public static void main(String[] args) {
        //Criando os times

        Robot[] titulares2 = new Robot[6];
        titulares2[0] = new Robot("Virgil", 1, 0, 0);
        titulares2[1] = new Robot("Beatrice", 2, 0, 0);
        titulares2[2] = new Robot("Charon", 3, 0, 0);
        titulares2[3] = new Robot("Dante", 4, 0, 0);
        titulares2[4] = new Robot("Achilles", 5, 0, 0);
        titulares2[5] = new Robot("Socrates", 6, 0, 0);

        Robot[] reserva2 = new Robot[6];
        reserva2[0] = new Robot("Heracles");
        reserva2[1] = new Robot("Megara");
        reserva2[2] = new Robot("Teseu");
        reserva2[3] = new Robot("Hipolita");
        reserva2[4] = new Robot("Quirion");
        reserva2[5] = new Robot("Euristeu");

        Team time1 = new Team();
        Team time2 = new Team(titulares2, reserva2);

        time1.addReserva(new Robot("Clitemnestra"));
        time1.addReserva(new Robot("Castor"));
        time1.addTitular(new Robot("Pollux", 1, 0, 0));
        time1.addTitular(new Robot("Helena", 2, 1, 1));


        //Substituindo no time 1
        time1.substitute(new Robot("Helena", 2, 1, 1), new Robot("Castor"));

        //Substituindo no time 2
        time2.substitute(reserva2[3]);

        System.out.println("Time 1:");
        time1.printTeam();
        System.out.println("Time 2:");
        time2.printTeam();
    }
}