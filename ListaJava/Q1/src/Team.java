public class Team {
    private Robot[] titular;
    private Robot[] reserva;
    private int titularSize;
    private int reservaSize;

    public Team(){
        titularSize = 0;
        reservaSize = 0;

        titular = new Robot[6];
        reserva = new Robot[6];
    }

    public Team(Robot[] titular, Robot[] reserva){
        titularSize = titular.length;
        reservaSize = reserva.length;

        this.titular = new Robot[6];
        for(int i = 0; i < titularSize; i++){
            this.titular[i] = titular[i];
        }
        this.reserva = new Robot[6];
        for(int i = 0; i < titularSize; i++){
            this.reserva[i] = reserva[i];
        }
    }

    public void addReserva(Robot reserva){
        if(reservaSize >= 6) return;

        this.reserva[reservaSize] = reserva;
        reservaSize++;
    }

    public void addTitular(Robot titular){
        if(titularSize >= 6) return;

        this.titular[titularSize] = titular;
        titularSize++;
    }

    public void substitute(Robot titular, Robot reserva){
        for(int i = 0; i < titularSize; i++){
            if(this.titular[i].getNome() == titular.getNome()){
                for(int j = i; j+1 < titularSize; j++){
                    this.titular[j] = this.titular[j+1];
                }

                this.titular[titularSize - 1] = titular;
                this.titular[titularSize - 1].changeName(reserva.getNome());

                break;
            }
        }

        for(int i = 0; i < reservaSize; i++){
            if(this.reserva[i].getNome() == reserva.getNome()){
               reserva.changeName(titular.getNome());
                break;
            }
        }
    }

    public void substitute(Robot reserva){ substitute(this.titular[0], reserva); }

    public void printTeam(){
        System.out.println("Titulares:");
        for(int i = 0; i < titularSize; i++){
            titular[i].printRobot();
            System.out.println();
        }

        System.out.println("Reservas:");
        for(int i = 0; i < reservaSize; i++){
            reserva[i].printRobot();
            System.out.println();
        }
        System.out.println("--------------------------------------");
    }
}
