<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml2/DTD/xhtml1-strict.dtd">
<html>
	<head>
		
	</head>

	<body background="./images/back4.jpg">
		<jsp:include page="Header.jsp"></jsp:include><br>
        <center>
			<b><font color='#003366' size='6'>Probabilistic Aspect Mining Model for Drug Reviews </font> </b>
		</center>
		<center>
			<center> 
		
		
		
		<jsp:include page="Footer.jsp"></jsp:include></body>
</html>
