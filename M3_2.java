/*

 assignment 3 

  Dear sir  

 this  is  just  the  for  functionality  check  i will  commit  all  the  changes  after  green  signal  from  your  side  

 , Apology sir

 Thank You

*/

import java.util.*;
 class M3_2
 {

  public static int max_grade( int arr[] )
  {
    int max = arr[0];
 
    for(int i=1; i<arr.length; i++ )
       {
         if( arr[i] > max )
           max = arr[i];         
       }
    return max;
  }


 public static int min_grade( int arr[] )
  {
    int min = arr[0];
 
    for(int i=1; i<arr.length; i++ )
       {
         if( arr[i] < min )
           min = arr[i];         
       }
    return min;
  }

 public static float average_grade( int arr[] )
  {
    float sum = 0;

    for( int i=0; i<arr.length; i++ )
       sum += arr[i];

     return sum/arr.length;
  }

 
 public static float percentage_passed( int arr[] )
  { 
     
     int count = 0;

     for( int i =0; i<arr.length; i++ )
        {
           if( arr[i] >= 40 )
              count++;
        }

     
     return  count / (float) arr.length * 100 ;

     //return (float) (count / arr.length) * 100;
     
  }


 public static void main(String args[])
  {
    Scanner s = new Scanner(System.in);
    int n = s.nextInt();

    int arr[] = new int[n];


    for( int i =0; i<n; i++ )
       arr[i] = s.nextInt();

    System.out.println( max_grade(arr) );
    System.out.println( min_grade(arr) );
    System.out.println( average_grade(arr) );
    System.out.println( percentage_passed(arr) );
  }
  
 }