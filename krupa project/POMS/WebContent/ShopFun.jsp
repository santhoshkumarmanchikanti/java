<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.io.UnsupportedEncodingException" %>
<%@ page import="java.security.MessageDigest" %>
<%@ page import="java.security.NoSuchAlgorithmException" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.*" %>

<%@ page import="javax.crypto.Cipher" %>
<%@ page import="javax.crypto.spec.SecretKeySpec" %>

<%@page import="java.sql.*"%>
<%@page import="java.security.*"%>
<%@page import="javax.crypto.*"%>

<%@ include file="Connect.jsp" %>

<%!
private static String algorithm = "DESede";
        private static Key key = null;
        private static Cipher cipher = null;
 private static byte[] encrypt(String input)throws Exception {
            cipher.init(Cipher.ENCRYPT_MODE, key);
            byte[] inputBytes = input.getBytes();
            return cipher.doFinal(inputBytes);
        }
%>

<%

String pname = request.getParameter("prdName");
String prc = request.getParameter("prdPrice");
String noi = request.getParameter("txtSt");
String mname = request.getParameter("ddlMan");
String pno = request.getParameter("prdNo");

String customer =(String)session.getAttribute("cname");


char[] chars = {
        'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h',
        'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p',
        'q', 'r', 's', 't', 'u', 'v', 'w', 'x',
        'y', 'z', '0', '1', '2', '3', '4', '5',
        '6', '7', '8', '9', 'A', 'B', 'C', 'D',
        'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L',
        'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T',
        'U', 'V', 'W', 'X', 'Y', 'Z', '!', '@',
        '#', '$', '%', '^', '&', '(', ')', '+',
        '-', '*', '/', '[', ']', '{', '}', '=',
        '<', '>', '?', '_', '"', '.', ',', ' '
    };
	  String text = pname;
        int offset = 5;

   char[] plain = text.toCharArray();

        for (int i = 0; i < plain.length; i++) {
            for (int j = 0; j < chars.length; j++) {
                if (j <= chars.length - offset) {
                    if (plain[i] == chars[j]) {
                        plain[i] = chars[j + offset];
                        break;
                    }
                } 
                else if (plain[i] == chars[j]) {
                    plain[i] = chars[j - (chars.length - offset + 1)];
                }
				
            }
        }
try
{
	PreparedStatement t1 = con.prepareStatement("Update products set stock=stock-? where pno=?");
	t1.setInt(1, Integer.parseInt(noi));
	t1.setInt(2, Integer.parseInt(pno));	
	int r = t1.executeUpdate();
	
	String output = "";
	output += "{\n";
	output += "Customer Name : " + customer + "\n";
	output += "Product Name : " + pname + "\n";
	output += "Product Price : " + prc + "\n";
	output += "No of Items : " + noi + "\n";
	output += "Manufacturer : " + mname + "\n";
	output += "Hash Code : " + plain.toString() + "\n";
	output += "}\n";
	
	key = KeyGenerator.getInstance(algorithm).generateKey();
    cipher = Cipher.getInstance(algorithm);
    String input = output;
    //System.out.println("Entered: " + input);
    byte[] encryptionBytes = encrypt(input);
    String getstr=new String(encryptionBytes);
	
	
	//EncDec dc = new EncDec();
	//String Demos  = "Hello World";
	//String encString = EncDec.encrypt(Demos, "abcfood");
	
	String filename = "D:\\poms\\" + pname + ".txt";
	String filenames = "D:\\fsms\\" + pname + ".txt";
	FileOutputStream fos =new FileOutputStream(filename);
	PrintStream fw = new PrintStream(fos);
	
	//FileWriter fw =new FileWriter(filename, true);
	fw.println(output);
	fw.close();

	FileOutputStream fos1 =new FileOutputStream(filenames);
	PrintStream fw1 = new PrintStream(fos1);
	fw1.println(getstr);
	fw1.close();
	
	response.sendRedirect("CustomerWelcome.jsp");
}
catch(Exception ex)
{
	out.print(ex.getMessage());
}

%>