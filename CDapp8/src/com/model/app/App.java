package com.model.app;
import com.model.CD;
import com.model.InternationalCD;
import com.model.SpecialEditionCD;

public class App {
    public static void main(String[] args)
    {
        CD myCD=null;
        //dynamic method dispatcher
        myCD=new InternationalCD("Titanic",200,"ENG");
        System.out.println(myCD.getDetail());
        myCD=new SpecialEditionCD("Godzilla",200,"3D");
        System.out.println(myCD.getDetail());


    }
}
