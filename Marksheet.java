/*

                             *********  ASSIGNMENT 02  **********




            
       TEST  CASES 

      o/p
   5    // size  and  elements
  45
  78
  91
  52
  10

 
  91     // max 
  10     // min 
  55.2   // avg
  80.0    // percentage passed

*/


 import java.util.*;
 class Marksheet 
 {


  public static int maxGrade(int arr[])
  {
    int max = arr[0];
 
    for(int i=1; i<arr.length; i++ )
       {
         if( arr[i] > max )
           max = arr[i];         
       }
    return max;
  }




 public static int minGrade( int arr[] )
  {
    int min = arr[0];
 
    for(int i=1; i<arr.length; i++ )
       {
         if( arr[i] < min )
           min = arr[i];         
       }
    return min;
  }



  public static float averageGrade(int arr[])
  {
    float sum = 0;

    for( int i=0; i<arr.length; i++ )
       sum += arr[i];

     return (float)sum/(float)arr.length;
  }




   public static float percentagePassed(int arr[])
  { 
     
     int count = 0;

     for( int i =0; i<arr.length; i++ )
        {
           if(arr[i] >= 40)
              count++;
        }

      

     return  count / (float) arr.length * 100 ;

  }

 
 public static void main(String args[])
  {
    Scanner s = new Scanner(System.in);
    int n = s.nextInt();

    int arr[] = new int[n];


    for( int i =0; i<n; i++ )
       arr[i] = s.nextInt();

    System.out.println( maxGrade(arr) );
    System.out.println( minGrade(arr) );
    System.out.println( averageGrade(arr) );
    System.out.println( percentagePassed(arr) );
  }
 
  
 }
