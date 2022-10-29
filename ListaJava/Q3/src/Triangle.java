import java.lang.Math;

public class Triangle {
    private double side1, side2, side3;

    public Triangle(double side1, double side2, double side3){
        this.side1 = side1;
        this.side2 = side2;
        this.side3 = side3;
    }

    public double calculatePerimeter(){
        return side1 + side2 + side3;
    }

    public double calculateArea(){
        double p = calculatePerimeter(); //Perimeter

        return Math.sqrt(p*(p-side1)*(p-side2)*(p-side3)); //Heron's Formula
    }

    public void printValues(){
        System.out.println("Side : "+side1);
        System.out.println("Side : "+side2);
        System.out.println("Side : "+side3);
    }

}
