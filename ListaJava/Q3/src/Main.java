public class Main {
    public static void main(String[] args) {
        Triangle triangle = new Triangle(1, 1, 1);
        Square square = new Square(1);
        Trapezium trapezium = new Trapezium(2, 1, 1, 1);

        triangle.printValues();
        System.out.println("Perimeter: "+ triangle.calculatePerimeter());
        System.out.println("Area: "+ triangle.calculateArea());
        System.out.println("-----------------------------------------------------");

        square.printValues();
        System.out.println("Perimeter: "+ square.calculatePerimeter());
        System.out.println("Area: "+ square.calculateArea());
        System.out.println("-----------------------------------------------------");

        trapezium.printValues();
        System.out.println("Perimeter: "+ trapezium.calculatePerimeter());
        System.out.println("Area: "+ trapezium.calculateArea());
        System.out.println("-----------------------------------------------------");
    }
}
