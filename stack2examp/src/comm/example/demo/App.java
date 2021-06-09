package comm.example.demo;
import java.util.Scanner;
public class App {
	private static Scanner scanner=new Scanner(System.in); 

	public static void main(String[] args) {
		int choice=0;
		MyStack myStack=new MyStack();
		System.out.print("Enter the length of the Stack:  ");
		int length=scanner.nextInt();
		myStack.createStack(length);
		do {
			System.out.println("\n1. Push.");
			System.out.println("2. Pop.");
			System.out.println("3. Search Item.");
			System.out.println("4. Display the Stack");
			System.out.println("0. Exit");
			System.out.print("enter your choice");
			choice=scanner.nextInt();
			switch (choice) {
			case 1:
				System.out.print("provide an integer value to push.");
				int value=scanner.nextInt();
				myStack.push(value);
				break;
			case 2:
				myStack.pop();
				break;
			case 3:
				System.out.print("Enter item to search: ");
				value=scanner.nextInt();
				myStack.searchStack(value);
				break;
			case 4:
				int[] result=myStack.displayStack();
				for(int i:result)
				{
					System.out.print(i+" ");
				}
				break;
			case 0:
				System.out.println("exiting from the system. Bye .........!");
				System.exit(0);

			default:
				System.out.println("invalid choice");
				break;
			}
			
		} while (choice !=0);
	}
}
