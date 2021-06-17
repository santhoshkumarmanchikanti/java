package comm.example.app;
import comm.example.PrintRunnable;
import comm.example.PrintThread;
import comm.example.ThreadTest;
public class App {
	public static void main(String[] args) {
		new PrintRunnable("A");
		new PrintRunnable("B");
	}

}
