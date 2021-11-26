<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>

<%@ page import="javax.crypto.Cipher" %>

<%@ page import="javax.crypto.spec.SecretKeySpec" %>


<%@ include file="Connect.jsp" %>
<%

String pname = request.getParameter("txtPrd");
String price = request.getParameter("txtPr");
String stk = request.getParameter("txtSt");
//String mno = request.getParameter("ddlMan");

int fno = Integer.parseInt(session.getAttribute("formno").toString());

try
{
	//String hcode = Objects.hash(Mname);
	PreparedStatement t1 = con.prepareStatement("Insert into products(prdname, price, stock, Fid) values(?,?,?,?)");
	t1.setString(1, pname);
	t1.setFloat(2, Float.parseFloat(price));
	t1.setInt(3, Integer.parseInt(stk));
	t1.setInt(4,fno);

	int r = t1.executeUpdate();
	if(r>=1)
		response.sendRedirect("AddProducts.jsp");	
}
catch(Exception ex)
{
	out.print(ex.getMessage());
}

%>