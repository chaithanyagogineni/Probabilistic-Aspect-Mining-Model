<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml2/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
	<head>
		
		
		<script type="text/javascript">
function disableBackButton() {
	window.history.forward();
}
setTimeout("disableBackButton()", 0);
</script>


	</head>
 <body background="./images/back4.jpg" onload="javascript:disableBackButton()" >
	
		<jsp:include page="Header.jsp"></jsp:include>
		<p align="center">
			<span class="SectionBoldRed"><b>WELCOME</b> </span>
		</p>
		<p>

		</p>

	</body>
</html>
