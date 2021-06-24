package org.example.demo;
import org.example.demo.model.InternationalCD;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
public class App 
{
	public static void main(String[] args) {
		try {

			@SuppressWarnings("resource")
			ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
			
			InternationalCD cd = context.getBean("theCD", InternationalCD.class);
			System.out.println(cd.getDetails());
			cd.setCdId(101);
			cd.setCdName("Godzila");
			cd.setLanguage("Russian");
			System.out.println(cd.getDetails());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
