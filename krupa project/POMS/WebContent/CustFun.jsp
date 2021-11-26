<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>

<%@ page import="javax.crypto.Cipher" %>

<%@ page import="javax.crypto.spec.SecretKeySpec" %>


<%@ include file="Connect.jsp" %>
<%

String cname = request.getParameter("txtCust");
String custAdd = request.getParameter("txtAdd");
String Loc = request.getParameter("txtLoc");
String Phone = request.getParameter("txtPh");
String Email = request.getParameter("txtEmail");
String user = request.getParameter("txtUser");
String pwd = request.getParameter("txtPass");


try
{
	//String hcode = Objects.hash(Mname);
	PreparedStatement t1 = con.prepareStatement("Insert into customer(custName, Address, location, username, pwd) values(?,?,?,?,?)");
	t1.setString(1, cname);
	t1.setString(2, custAdd);
	t1.setString(3, Loc);
	//t1.setString(4, Phone);
	//t1.setString(5, Email);
	t1.setString(4, user);
	t1.setString(5,pwd);

	int r = t1.executeUpdate();
	if(r>=1)
		response.sendRedirect("Customer.jsp");	
}
catch(Exception ex)
{
	out.print(ex.getMessage());
}


/*class abc
{
	public String encrypt(String strClearText,String strKey) throws Exception{
		String strData="";
		
		try {
			SecretKeySpec skeyspec=new SecretKeySpec(strKey.getBytes(),"Blowfish");
			Cipher cipher=Cipher.getInstance("Blowfish");
			cipher.init(Cipher.ENCRYPT_MODE, skeyspec);
			byte[] encrypted=cipher.doFinal(strClearText.getBytes());
			strData=new String(encrypted);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return strData;
	}	
}*/


%>