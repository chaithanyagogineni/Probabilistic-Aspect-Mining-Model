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
		<font color="#003366">DRUGS REVIEW DETAILS</font>
	</h1>
	</center>

	
		
		<table border="2">
			
			<c:set var="color" value="0" scope="request" />
			<c:forEach var="vBankTOs" items="${vBankTOs}">
		<tr>
		<td align='center'>
					<b><font color ="red" size="red">DRUG</font></b>
				</td>
				<td>
					<b><font color ="#003366" size="red"> ${vBankTOs.drugName }</b><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <b><font color ="red" size="red">Rating</font></b><font color ="#003366" size="red"> ${vBankTOs.rating }</font></b>
				</td>

                 </tr>
              <tr>
			  <td align='center'>
					<b><font color ="red" size="red">REVIEW</font></b>
				</td>	
				<td>
					<b>${vBankTOs.review }</b>
				</td></tr>
               <tr>
               <td></td>
               <td align='left'>
					<b><font color ="red" size="red">POSTB BY USER:</font></b>&nbsp; <b><font color ="green" size="green">${vBankTOs.username }</font></b> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; <b><font color ="red" size="red">POSTED DATE</font></b>: <b><font color ="green" size="green">${vBankTOs.rdate }</font></b>
				</td>
           </tr>
          
         </c:forEach>
			



			
		</table>
		</center>
	
	<jsp:include page="/Footer.jsp"></jsp:include>
</body>
