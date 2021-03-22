/*

   

                           ***********  ASSIGNMENT  : 2   ************      

                                        Question  1    




   TEST CASE 
 
   i/p  ( two strings )
 
  WelCome TO MetaCuNBe
  
  gEt batch Batch
 


      o/p

  0                      // checking  whether  string equals  or not 

  eBNuCateM OT emoCleW   // reversing  the  string
 
  wELcOME to mETAcUnbE   // toggling  the  string
  
  Batch                  // largest  word

*/



 import java.util.*;
 class StringOperations {



  /**
  * receiving  the  two  strings  
  * return 0  if  strings  are  same
  * returns 1 if not same
  */

 public static int equals( String str1 , String str2 )
  {
     if(str1.length() != str2.length() )
        return 0;

     for( int i=0; i<str1.length(); i++ )
        { 
          if( str1.charAt(i) != str2.charAt(i) )
             return 0;
        }

    return 1;
  }



  /**
   * reversing  the  string 
   * accepting  the  string  as  input 
   */

  public static String reverse( String str1 )
  {
     String str2 = "";

     for( int i=str1.length()-1; i>=0; i-- )
         str2 += String.valueOf(str1.charAt(i) );
        
    return str2;
  }




  /**
   * converting  the  given  string upper  to  lower and  lower  to  upper
   * return  the  toggling  string
   */

  public static String Toggle(String str1)
  {
      

      for( int i=0; i<str1.length(); i++ )
         { 
           int temp = str1.charAt(i);

           if( temp >= 65 && temp <= 90 )
             {
               temp += 32;
               str1 = str1.substring(0,i) + String.valueOf((char)temp) + str1.substring(i+1);
             }

           else
            {
               temp -= 32;
               str1 = str1.substring(0,i) +  String.valueOf( (char)temp ) + str1.substring(i+1);
             }

         }

      return str1;
  }

  
  
  /**
   * accepting  the  string paragraph
   * returning  the  largest  word from given  string 
   */

 public static String largest_word(String str)
  {
    String str1 = "";
    int j =0, len=0;
    

    for( int i=0; i<str.length(); i++ )
       {
         if( str.charAt(i) == ' ' &&  len <= (str.substring(j,i).length()) )
           {
             str1 = str.substring(j,i);
             len = str1.length();
             j =i+1; 
           }
         
       }

     if( len <= str.substring(j,str.length()).length() )
       {
          len = str.substring(j,str.length()).length();
          str1 = str.substring(j,str.length());
       }

   return str1;
  }



 public static void main(String args[] )
  {
    Scanner s2 = new Scanner(System.in);
    Scanner s1 = new Scanner(System.in);
    String str1 = s2.nextLine();
    String str2 = s1.nextLine();


   System.out.println(equals(str1,str2));          
   System.out.println(reverse(str1)); 
   System.out.println(Toggle(str1) );
   System.out.println(largest_word(str2) );

  }
 }





 