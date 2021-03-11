/*

 metacube  assignment 

*/

import java.util.*;
class Circle 
{

  double radius;

 Circle( double radius )
  {
    this.radius = radius;    
  }

 public static double getArea( double radius )
  {
     return (3.14 * radius * radius);
  }
 

 public static double getPerimeter( double radius )
  {
    return (2*3.14*radius);
  }

}


class Triangle 
 {

  double length;
  double height;


  Triangle (double length , double height)
  {
    this.length = length; 
    this.height = height;   
  }

 public static double getArea( double length ,double height )
  {
     return  ( (length * height) / 2 );
     
  }

 

 public static double getPerimeter( double length , double height )
  {
    return (3*length);
  }

}


 class Square 
{

  double side;

 Square( double side )
  {
    this.side = side;    
  }

 public static double getArea( double side )
  {
     return (side*side);
  }
 

 public static double getPerimeter( double side )
  {
    return (4*side);
  }

}


 class Rectangle 
{

  double length;
  double breadth;

 Rectangle( double length , double breadth )
  {
    this.length = length; 
    this.breadth = breadth;    
  }

 public static double getArea( double length , double breadth )
  {
     return (length*breadth);
  }
 

 public static double getPerimeter( double length , double breadth )
  {
    return ( 2*(length+breadth) );
  }

}

class M3_1
 {
   public static void main(String args[])
   {
     Circle c1 = new Circle(7);
     Triangle t1 = new Triangle(5,6);
     Rectangle r1 = new Rectangle(5,7);
     Square s1 = new Square(5);

     System.out.print( "Area = " +c1.getArea(7) );
     System.out.println( "Perimeter "+c1.getPerimeter(7) ); 

     System.out.print( "Area = "+t1.getArea(5,6) );
     System.out.println( "perimeter " +t1.getPerimeter(5,6) );

     System.out.print( "Area "+r1.getArea(5,7) );
     System.out.println( "Perimeter " + r1.getPerimeter(5,7) );

     System.out.print( "Area "+s1.getArea(5) );
     System.out.println( "Perimeter "+s1.getPerimeter(5) );
   }
 }