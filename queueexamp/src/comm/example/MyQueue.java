package comm.example;

public class MyQueue {
	private int[] info;
	private int size;
	private int front;
	private int rear;
	{
		front = -1;
		rear = -1;
	}
	public void createQueue(int size)
	{
		this.size=size;
		info = new int[this.size];
		System.out.println("Queue Created Successfully...");
	}
	
	public void push(int value)
	{
		if(front>size)
		{
			System.out.println("Queue Overflow...");
		}
		else
		{
			info[++front]=value;
			System.out.println("Added Successfully");
			++rear;
		}
	}
	
	public void pop()
	{
		
		if(rear==-1)
		{
			System.out.println("Queue Underflow");
		}
		else
		{
			System.out.println("Removed Successfully - "+info[rear--]);
			front--;
		}
	}
}
