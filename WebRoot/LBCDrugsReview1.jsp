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
		<font color="#003366">Aspects Identified by Using PAMM By DRUGNAME</font>
	</h1>
	</center>

	
		
		<table border="2">
		
		<tr>
		<td align='center'>
						<b><font color ="red" size="3">DRUGNAME</font></b>
					</td>
					
					
					<td align='center'>
						<b><font color ="red" size="3">Satisfaction Aspects<font></b>
					</td>
					
					<td align='center'>
						<b><font color ="red" size="3">Dissatisfaction Aspects</font></b>
					</td>
			</tr>
			<c:set var="color" value="0" scope="request" />
			<c:forEach var="vBankTOs" items="${vBankTOs}">
		<tr>
		
				<td align="center">
				<b><font color ="#003366" size="4"> ${vBankTOs.drugName }</font></b>
				</td>
		       
				<td>
					<b>${vBankTOs.review }</b>
				</td>
				 <td>
					<b>${vBankTOs.username }</b>
				</td>
				</tr>
               <tr>
               <td></td>
               
           </tr>
          
         </c:forEach>
			



			
		</table>
		</center>
	
	<jsp:include page="/Footer.jsp"></jsp:include>
</body>
