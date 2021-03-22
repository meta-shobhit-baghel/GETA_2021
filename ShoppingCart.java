/*

                         

                         ***********   Assignment  1  Shopping  Cart  ************ 


*/


import java.util.*; 
class ShoppingCart {




  /** 
   * remove  all  the  items  from  cart  requsted  by  user
   * returning  the  modified  cart

   */



  public static String[][] removeItem( int item_code[] ,float item_price[] , String cart[][] , int k)
    {   
        Scanner s = new Scanner(System.in);

        System.out.println("enter  the  item  code  to  be  deleted ");
        int item_deleted = s.nextInt();

        for( int i=0; i<k; i++ )
           {
             int cart_item = Integer.parseInt(cart[i][0]);

             if( cart_item == item_deleted )
               { 
                 System.out.println("enter  the  quantity");
                 int qty_deleted = s.nextInt();
      
                 if( qty_deleted >= Integer.parseInt(cart[i][2]) )
                    {
                    System.out.println("Invalid Quantity");
                    return cart;
                    }
             
                 else
                    {
                        cart[i][2] = String.valueOf( Integer.parseInt(cart[i][2]) - qty_deleted );
                        cart[i][3] = String.valueOf( Float.parseFloat(cart[i][3]) - qty_deleted*calculate_item_bill(item_code,item_price,item_deleted) );
                        return cart;
                    }
               }
           }

         System.out.println("item  not  present");
         return cart;
    }


  /**
    * calculating  the  entire  bill present  in  the  cart 
    * calculation  on  2d matrice 
    * returning  the  float  value
    */

   public static float bill(String cart[][],int k)
    { 
      float final_bill = 0;

      for( int i=0; i<k; i++)
         { 
          final_bill += Float.parseFloat(cart[i][3]);
         } 

      return final_bill;
    }



  /**
    * displaying  the  cart  items
    * in 2 d matrice 
    */


  public static void display_cart(String cart[][] , int k)
    {
      for( int i=0; i<k; i++ )
         {
           for( int j=0; j<4; j++ )
               System.out.print(cart[i][j]+"  ");

           System.out.println();
         }
    }



  /**
   * accepts  the  item  code , price  array and  item  code input  from  user
   * calculates  the  price  of  that  item code  provide  by  user
   */


  public static float calculate_item_bill(int item_code[] ,float item_price[] ,int item_code_input)
   {
       for( int i=0; i<item_code.length; i++ )
          {
            if( item_code[i] == item_code_input )
              return item_price[i];
          }
       
      return 0;
   }



  /**
   * accepts  the  three  arrays  item code , price and  name 
   * receives  the  order  from  customer
   * update  the  cart  of  the  customer 
  */


  public static void your_mart( int item_code[] , float item_price[] , String item_name[] )
  {

     Scanner s  = new Scanner(System.in);                // for string input
     Scanner s1 = new Scanner(System.in);               // for integer  input

     System.out.println("  enter  your  name  please !! ");
     
     String str = s.nextLine();
     String cart[][] = new String[10][4];
     int i=0,j=0;
     String item_name_input = "";
     float bill1 = 0;
     
        
      System.out.println();
      System.out.println();
      System.out.println();

      
      System.out.println("  welcome "+str+"  so  what  you  wish  to  order  today  !! ");

     

      while(true)
       {
         System.out.println("1. Place Order");
         System.out.println("2. Delete items from cart ");
         System.out.println("3. Generate Bill ");
         System.out.println("4. Exit ");
         System.out.println(" enter  choice ");
  
         int ch = s1.nextInt();

         switch(ch)
          {

            case 1:
             System.out.print("enter the item code you wish to add ");
             int item_code_input = s1.nextInt();
             System.out.println("Now  quantity ");
             int qty = s1.nextInt();

             
             for(int k=0; k<item_code.length; k++ )
                {  
                  if( item_code_input == item_code[k] )
                     { item_name_input = item_name[k]; 
                       break;
                     } 
                }

             cart[i][j++] = String.valueOf(item_code_input);
             cart[i][j++] = item_name_input;
             cart[i][j++] = String.valueOf(qty);
             cart[i][j++] = String.valueOf(qty*calculate_item_bill(item_code,item_price,item_code_input));
             
             i++;
             j=0;
             bill1 = qty*calculate_item_bill(item_code,item_price,item_code_input);
             break;

           


           case 2:
            
             if( bill1 == 0)
                System.out.println("Your  cart  is  empty to delete items");
            
             else
               cart = removeItem(item_code,item_price,cart,i);
             break;


           case 3 :
             if( bill1 == 0 )
               System.out.println(" No items  in  your  cart for  billing");
                       

             else
               {
               display_cart(cart,i);
               System.out.println("Your final bill is "+bill(cart,i));
               }
           break;


           case 4 :
             return;
               
 
          }
 
           
       }



  }



  /**
   * only  for  the  display  for  the  customer
   * all   store  items  display
   */

  public static void Main_Menu()
   { 
        
      System.out.println();
      System.out.println();
      System.out.println();
      System.out.println();


      System.out.println("-----------------------  Welcome  to  Your  Mart -----------------------  ");

      System.out.println();
      System.out.println();

      System.out.println("item - code              item - Name            Price");


      System.out.println("     1501                   Rice                150.00 ");
      System.out.println("     1502                   Wheat               25.00 ");
      System.out.println("     1503                   Pulses                 95.00 ");
      System.out.println("     1504                   Oats                180.00 ");
      System.out.println("     1505                   Porridge            150.00 ");
      System.out.println("     1506                   Salt                20.00 ");
      System.out.println("     1507                   Sugar               40.00 ");
      System.out.println("     1508                   Tea                 230.00 ");
      System.out.println("     1509                   Coffee              250.00 ");
      System.out.println("     1510                   Corn Flour          150.00 ");
      System.out.println("     1511                   Semolina            50.00 ");


      System.out.println();
      System.out.println();
      System.out.println();
      System.out.println();

    System.out.println("-----------------------  ************************ -----------------------  ");


   }




  public static void main(String args[] )
  {


     int item_code[] = {1501,1502,1503,1504,1505,1506,1507,1508,1509,1510,1511};
     float item_price[] = {150,25,95,180,150,20,40,230,250,150,50}; 
     String item_name[] = {"Rice","Wheat","Pulses","Oats","Porridge","Salt","Sugar",
                       "Tea","Coffee","Corn flour","Semolina"};
      


    Scanner s = new Scanner(System.in);

    Main_Menu();


    while(true) 
     {

        your_mart(item_code,item_price,item_name);
        System.out.println();
        System.out.println();
        System.out.println("  ----------------------------------------------------------    ");
        System.out.println(" 1. Serve  to  next  Customer  ");
        System.out.println(" 2. Exit  Application ");
        System.out.println();
        System.out.println();
        System.out.println(" Enter  Your  Choice  Please  !! ");
        int ch = s.nextInt();
         
        if( ch == 2 )
          break;
      
    }

   System.out.print(" Happy  to  Serve  You  Please  Visit  Soon !! ");

  }


}