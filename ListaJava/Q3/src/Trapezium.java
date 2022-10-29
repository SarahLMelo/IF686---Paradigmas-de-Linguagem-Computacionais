public class Trapezium {
    private double base1, base2, side1, side2;

    public Trapezium(double biggerBase, double smallerBase, double side1, double side2){
        base1 = biggerBase;
        base2 = smallerBase;
        this.side1 = side1;
        this.side2 = side2;
    }

    public double calculatePerimeter(){
        return base1 + base2 + side1 + side2;
    }

    public double calculateArea(){
        Triangle triangle = new Triangle(base1 - base2, side1, side2);
        double height = 2*triangle.calculateArea()/(base1 - base2);

        return ((base1 + base2)*height)/2;
    }

    public void printValues(){
        System.out.println("Bigger Base: "+base1);
        System.out.println("Smaller Base: "+base2);
        System.out.println("Side : "+side1);
        System.out.println("Side : "+side2);
    }
}
