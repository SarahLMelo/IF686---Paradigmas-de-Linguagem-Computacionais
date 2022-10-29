public class Square {
    private double side;

    public Square(double side){
        this.side = side;
    }

    public double calculatePerimeter(){ return 4*side; }
    public double calculateArea(){ return side*side; }

    public void printValues(){ System.out.println("Side : "+side); }
}
