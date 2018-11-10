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
		<font color="#003366">DRUGS DETAILS</font>
	</h1>
	</center>

	<form name='deleteuser' action='./deleteItemAction.do'>
		<center>
		<table border="2">
			<tr bgcolor='skyblue'>




				<%if(logintype.equalsIgnoreCase("admin")){
					 %>
				<td>

				</td>
				<%}
					 %>
				<td align='center'>
					<b>DRUG NAME</b>
				</td>
				<td align='center'>
					<b>REVIEW</b>
				</td>

				<td align='center'>
					<b>POSTB BY USER</b>
				</td>

                  <td align='center'>
					<b>POSTED DATE</b>
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








				<%if(logintype.equalsIgnoreCase("admin")){
					 %>
				<td>
					<input name="ch" type="checkbox" id="checkbox2" onClick="check1()"
						value="${vBankTOs.rid}" />
				</td>
				<td>
					<b>${vBankTOs.drugName}</b>
				</td>
				<% }else
					{
					%>


				<td>
					<b>${vBankTOs.drugName }</b>
				</td>



				<% }%>
				<td>
					<b>${vBankTOs.review }</b>
				</td>

				<td>
					<b>${vBankTOs.username }</b>
				</td>
            <td>
					<b>${vBankTOs.rdate }</b>
				</td>

			</c:forEach>
			</tr>



			<%if(logintype.equalsIgnoreCase("admin")){
					 %>

			<tr>
				<td align='center' colspan='8'>

					<input type='hidden' name="delete" value="review" />
					
					<input type="submit" value="Delete" />
				</td>
			</tr>

			<% }
					
					%>

		</table>
		</center>
	</form>
	<jsp:include page="/Footer.jsp"></jsp:include>
</body>
