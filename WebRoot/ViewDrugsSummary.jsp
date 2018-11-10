<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml2/DTD/xhtml1-strict.dtd">
<head>
	<script language="JavaScript"
		src="<%=request.getContextPath()
							+ "/scripts/gen_validatorv31.js"%>"
		type="text/javascript">
</script>
	<SCRIPT language="JavaScript">
function anchor_test(pass) {
	window.alert("Password : "+pass)
}
</SCRIPT>

</head>



<%

String logintype=(String)session.getAttribute("role");

System.out.println(logintype);
 %>
<body background="./images/back4.jpg">
	<jsp:include page="Header.jsp"></jsp:include>
	<center>
		<h1>
			<font color="#003366">DRUGS REVIEW SUMMARY</font>
		</h1>
	

	
		<center>
			<table border="2">
				<tr bgcolor='skyblue'>
				
				
				
				
				
					<td align='center'>
						<b>DRUG NAME</b>
					</td>
					<td align='center'>
						<b>BRAND NAME </b>
					</td>
					
					<td align='center'>
						<b>USEGE </b>
					</td>
					<td align='center'>
						<b>Number of Reviews </b>
					</td>
				</tr>
				<c:set var="color" value="0" scope="request" />
				<c:forEach var="vBankTOs" items="${vBankTOs}">
					<c:choose>
						<c:when test="${requestScope.color eq '0'}">
							<tr bgcolor='#F5FFFA'>
								<c:set var="color" value="${color+1}" scope="request" />
						</c:when>

						<c:otherwise>
							<tr bgcolor='#FFE4E1'>
								<c:set var="color" value="${color-1}" scope="request" />
						</c:otherwise>
					</c:choose>
					
					
					<td>
						<b>${vBankTOs.drugName
								}</b>
					</td>
					<td>
						<b>${vBankTOs.brandName }</b>
					</td>
					
					<td>
						<b>${vBankTOs.usage }</b>
					</td>
					
					<td>
						<b>${vBankTOs.did }</b>
					</td>
					
					
					
				</c:forEach></tr>
				
				
				
				
					
							</table>
		</center>
	
	<jsp:include page="/Footer.jsp"></jsp:include>
</body>
