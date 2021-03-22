/*

                              

                                ********  ASSIGNMENT  02  ********



    O/P

    7      // radius
    5      // base & height for triangle 
    10 
    5      // side  for  square
    3      // length  and  breadth  for  rectangle
    5

    153.86
    25.0
    25.0
    15.0

*/


import java.util.*;
class Area 
{

  
  /**
   * accepting  the  double  dimension  and returning  the  double
   */
   public static double getCircleArea(double radius)
   {
     return (3.14*radius*radius);
   }
 


   /**
    * accepting the lengtn and height double
    * returning the area
    */
   public static double getTriangleArea(double length,double height)
   {
     return ((length*height)/2);
   }

 
  /**
   * accepting  the side double for  square
   * returning the  double computed value
   */

  public static double getSquareArea(double side)
   {
     return (side*side);
   }
 


  /**
   * accepting  the  double length and breadth  value
   * returning  the double value after computation
   */
  public static double getRectangleArea(double length,double breadth)
  {
     return (length*breadth);
  }
 



   public static void main(String args[])
   {
     Scanner s = new Scanner(System.in);
     double radius = s.nextDouble();        // for circle

     double base = s.nextDouble();         //  for  triangle 
     double height = s.nextDouble();

     double side = s.nextDouble();         // for  square

     double length  = s.nextDouble();      // for  rectangle
     double breadth = s.nextDouble();


     System.out.println(getCircleArea(radius));
     System.out.println(getTriangleArea(base,height));
     System.out.println(getSquareArea(side));
     System.out.println(getRectangleArea(length,breadth));
   }
 }