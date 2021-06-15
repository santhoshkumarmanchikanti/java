package com.example;
import java.io.*; class FileInputOutputStream {
	   public static void main(String[] args) throws IOException {
	        
	        File inputFile = new File("san.txt");
	        File outputFile = new File("out.txt");
	        
	        FileInputStream in = new FileInputStream(inputFile);
	        FileOutputStream out = new FileOutputStream(outputFile);
	        int c;
	        
	        while ((c = in.read()) != -1){
	            System.out.println(c);
	            out.write(c);
	        }
	        
	        System.out.println("FileInputStream is used to read a file and FileOutPutStream is used for writing.");
	        
	        in.close();
	        out.close();
	    }
}