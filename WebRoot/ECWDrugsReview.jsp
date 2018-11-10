<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml2/DTD/xhtml1-strict.dtd">
<head>
	<script language="JavaScript"
		src="<%=request.getContextPath()
							+ "/scripts/gen_validatorv31.js"%>"
		type="text/javascript">
	</script>
	

</head>




     <body background="./images/back4.jpg">
	<jsp:include page="Header.jsp"></jsp:include>
	<center>
	<h1>
		<font color="#003366">Evaluated Mean PMI of the Derived Aspects</font>
	</h1>
		<table border="2">	
		<tr>
		<td align='center'>
						<b><font color ="red" size="3">DRUGNAME</font></b>
					</td>
					<td align='center'>
						<b><font color ="red" size="3">Algorithm</font></b>
					</td>
					
					<td align='center'>
						<b>Mean PMI<font color ="red" size="3">(K=3)<font></b>
					</td>
					
					<td align='center'>
						<b>Mean PMI<font color ="red" size="3">(K=5)<font></b>
					</td>
					<td align='center'>
						<b>Mean PMI<font color ="red" size="3">(K=10)<font></b>
					</td>
					<td align='center'>
						<b>Mean PMI<font color ="red" size="3">(K=15)<font></b>
					</td>
					<td align='center'>
						<b>Mean PMI<font color ="red" size="3">(K=20)<font></b>
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
				<b><font color ="#003366" size="3"> ${vBankTOs.drugName }</b><b>	
				</td>
		        <td>
					<b><font color ="green" size="3">${vBankTOs.algorithm }</font></b>
				</td>
				<td align='center'>
					<b>${vBankTOs.k3 }</b>
				</td>
				<td align='center'>
					<b>${vBankTOs.k5 }</b>
				</td>
				<td align='center'>
					<b>${vBankTOs.k10 }</b>
				</td>
				<td align='center'>
					<b>${vBankTOs.k15 }</b>
				</td>
				<td align='center'>
					<b>${vBankTOs.k20 }</b>
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
