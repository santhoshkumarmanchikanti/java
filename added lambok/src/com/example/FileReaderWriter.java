package com.example;
import java.io.*;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class FileReaderWriter {
	  public static void main(String[] args) throws IOException {
	        
	        File inputFile = new File("san.txt");
	        File outputFile = new File("out.txt");
	        
	        FileReader in = new FileReader(inputFile);
	        FileWriter out = new FileWriter(outputFile);
	        int c;
	        
	        while ((c = in.read()) != -1){
	            System.out.println((char)c);
	            out.write(c);
	        }
	        
	        System.out.println("FileReader is used to read a file and FileWriter is used for writing.");
	        
	        in.close();
	        out.close();
	    }
}
