package comm.example;
import java.util.Scanner;
public class Main {
	public static void main(String[] str) 
	  {
	    Scanner sc=new Scanner(System.in);
	    System.out.println("Please enter the password you want to set :");
	    String password=sc.nextLine();
	    if(PassWord.validatePassword(password))
	      System.out.println("The password is valid..");
	    else
	      System.out.println("The password is invalid..");
	   }
}
