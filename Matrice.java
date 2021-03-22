/*


                                *********  ASSIGNMENT 06  *********
                         
                                       USING  INVARIANT  TYPE
*/


import java.util.*;
public final class Matrice
 {
 
  
  /** 
    *accepting  the  2 d matrice and returning void
    *displaying  of  the  matrice
    */
  public static void display(int arr1[][])
   {
     for( int i=0; i<arr1[0].length; i++)
        {
          for( int j=0; j<arr1.length; j++ )
             System.out.print(arr1[i][j]+" ");
          System.out.println();
        } 
   }


  /**
    * accepting  the input array
    * transposing the given matrice
    * check given  matrice with its transpose
    * returns true if symmetric  else  false
    */
   public static boolean isSymmetric( int arr1[][] )
  {
    if( arr1[0].length != arr1.length )
      return false;

    int temp1[][] = new int[arr1.length][arr1.length];
    
    temp1 = transpose(temp1);

    for( int i=0; i<arr1.length; i++ )
       {
         for( int j=0; j<arr1.length; j++ )
          {
             if( arr1[i][j] != temp1[i][j] );
                return false;
          }
       }
 
   
    return true; 
  }

  

 /**
   * accepting  the  two  matrice
   * perform  addition on  it
   */
 public static int[][] add( int arr1[][] , int arr2[][] )
  {
    if( (arr1.length == arr2.length) && (arr1[0].length == arr2[0].length) )
      {
         for( int i=0; i<arr1[0].length; i++ )
            {
              for( int j=0; j<arr1.length; i++ )
                  arr1[i][j] += arr2[i][j];
            }

         return arr1;
      }

    return 0;
  }



  /**
   * accepting  the  array 
   * finding  its  transpose
   */
 public static int[][] transpose( int arr1[][] )
  {
    int temp[][] = new int[arr1.length][arr1[0].length]; 
    int k =0;

    for( int i=0; i<arr1[0].length; i++ )
       {
          for( int j=0; j<arr1.length; j++ )
              temp[k++][i] = arr1[i][j];
          k =0;
       }

    return temp;
  }


  /**
    * accepting  the  two  arrays
    * multiply  the  two matrice and  returns  the  modified one
    */
 public static int[][] multiply( int arr1[][] , int arr2[][] )
  {
    if( arr1.length == arr2[0].length )
      {
       int temp[][] = new int[arr1[0].length][arr2.length];

       for( int i=0; i<arr1[0].length; i++ )
          {
           for( int j=0; j<arr1.length; j++ )
              {
               for( int k=0; k<arr1.length; k++ )
                  temp[i][j] += arr1[i][k]*arr[k][j]; 
              }  
          }
      }

    else
       return 0;
  } 




  public static void main(String args[])
  {

    Scanner s = new Scanner(System.in);
    int m = s.nextInt();
    int n = s.nextInt();


    int arr1[][] = new int[m][n];
    int arr2[][] = new int[m][n];
 
    for( int i=0; i<m; i++ )
       {
         for( int j=0; j<n; j++ )
            arr1[i][j] = s.nextInt();
       }

    for( int i=0; i<m; i++ )
       {
         for( int j=0; j<n; j++ )
            arr2[i][j] = s.nextInt();
       }

    display(arr1);
    arr1 = transpose(arr1); 
    display(arr1);
    System.out.println();
    System.out.println();
    arr1 = add(arr1,arr2);
    display(arr1);
    System.out.println();
    System.out.println();
  

 
  }
 }








 