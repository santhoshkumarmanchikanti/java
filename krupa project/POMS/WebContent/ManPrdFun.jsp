<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>

<%@ page import="javax.crypto.Cipher" %>

<%@ page import="javax.crypto.spec.SecretKeySpec" %>

<%@ include file="Connect.jsp" %>
<%

String prdid = request.getParameter("ddlPrd");
String mprice = request.getParameter("txtPr");

int mno = Integer.parseInt(session.getAttribute("mno").toString());

try
{
	//String hcode = Objects.hash(Mname);
	PreparedStatement t1 = con.prepareStatement("Update products set ManId = ?, ManPrice = ? where pno=?");
	t1.setInt(1, mno);
	t1.setFloat(2, Float.parseFloat(mprice));
	t1.setInt(3, Integer.parseInt(prdid));
	int r = t1.executeUpdate();
	if(r>=1)
		response.sendRedirect("ManPrd.jsp");	
}
catch(Exception ex)
{
	out.print(ex.getMessage());
}

%>