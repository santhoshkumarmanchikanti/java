<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="Connect.jsp" %>
<%
String user = request.getParameter("txtUser");
String pass = request.getParameter("txtPass");

if(user.equals("Admin") && pass.equals("admin@123"))
	response.sendRedirect("AdminWelcome.jsp");	
else
{
PreparedStatement ps = con.prepareStatement("Select * from Manufact where username=? and pwd=?");
ps.setString(1, user);
ps.setString(2, pass);

ResultSet rs = ps.executeQuery();

	if(rs.next())
	{
		int mno = Integer.parseInt(rs.getString("mno"));
		session.setAttribute("mno", mno);
		response.sendRedirect("ManuWelcome.jsp");	
	}
	else
	{
		PreparedStatement ps1 = con.prepareStatement("Select * from customer where username=? and pwd=?");
		ps1.setString(1, user);
		ps1.setString(2, pass);

		ResultSet rs1 = ps1.executeQuery();

			if(rs1.next())
			{
				int cno = Integer.parseInt(rs1.getString("cn_no"));
				session.setAttribute("custno", cno);
				session.setAttribute("cname", rs1.getString("custName"));
				response.sendRedirect("CustomerWelcome.jsp");	
			}
			else
			{
				PreparedStatement ps2 = con.prepareStatement("Select * from formar where username=? and password=?");
				ps2.setString(1, user);
				ps2.setString(2, pass);

				ResultSet rs2 = ps2.executeQuery();

					if(rs2.next())
					{
						int fno = Integer.parseInt(rs2.getString("frno"));
						session.setAttribute("formno", fno);
						session.setAttribute("forname", rs2.getString("fname"));
						response.sendRedirect("FormarWelcome.jsp");	
					}
					else
					{
						response.sendRedirect("error.jsp");
						
					}
				
			}

	}
}

%>

</body>
</html>