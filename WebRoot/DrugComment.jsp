
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml2/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<head id="ctl00_header">
		<head>

			<script language="JavaScript" src="scripts/gen_validatorv31.js"
				type="text/javascript">
</script>
			<script language="JavaScript" type="text/javascript"
				src="scripts/ts_picker.js">
</script>
			<script language="JavaScript1.1" src="scripts/pass.js">
</script>
			<script type="text/javascript" src="scripts/image.js">
</script>
			<script type="text/javascript" src="scripts/general.js">
</script>
			<script type="text/javascript" src="scripts/adi.js">
</script>
			<script type="text/javascript" src="scripts/form_validation.js">
</script>

			<script language="JavaScript" src="images/javascripts.js">
</script>
			<script language="JavaScript" src="images/pop-closeup.js">
</script>




			<style type="text/css">
.Title {
	font-family: Verdana;
	font-weight: bold;
	font-size: 8pt
}

.Title1 {
	font-family: Verdana;
	font-weight: bold;
	font-size: 8pt
}
</style>


<script type="text/javascript">
function check()
{
	var pass=document.register.review.value;
	 if(pass.length>141)
	{
		alert("review Max length is 140");
	}
		
		
}
</script>
		</head>
		
		
		<% 
		
           
		
		String drugname=request.getParameter("dname");
		 System.out.println(drugname);
		int did=Integer.parseInt(request.getParameter("did"));
		
		
        
		
		
		%>
		<body background="./images/back4.jpg">

			<jsp:include page="Header.jsp"></jsp:include>
			<br />
			<center>
			<h3>

				<span class=subHead><br /> <font color="red" size="5">Comment
					Form </font> </span>
			</h3>
			</center>

			<form action="./postReviewDrugAction.do" name="register"
				method='post' >


				<table border='0' align="center" width=70%>
					<tr>
						<td align='right'>
							<b><font color="#003366" size="4">DrugName:</font> </b>
						</td>

						<td>
							<input type="text" name="drugName" value="<%=drugname%>" size="20" readonly="readonly"/>
						</td>
					</tr>
					<tr>
						<td align='right'>
							<b><font color="#003366" size="4">Satisfaction Rating: </font> </b>
						</td>

						<td>
								<select name="rating">
									<option value="select" selected="true">
										<font size="3" face="Verdana">----Select Any One----</font>
									</option>
									<option value="1">
										<font size="3" face="Verdana">1-Not Satisfied</font>
									</option>
									<option value="2">
										<font size="3" face="Verdana">2-Somewhat Dissatisfied</font>
									</option>
									<option value="3">
										<font size="3" face="Verdana">3-Somewhat Satisfied</font>
									</option>
									<option value="4">
										<font size="3" face="Verdana">4-Satisfied</font>
									</option>
									<option value="5">
										<font size="3" face="Verdana">5-Very Satisfied</font>
									</option>
									
								</select>
							</td>
					</tr>
					
					<tr>
						<td align='right'>
							<b><font color="#003366" size="4">Enter comment:</font> </b>
						</td>

						<td>
							 <label>
                                
                                <textarea rows="5" cols="30" name="review"  onBlur="check()" ></textarea>[Max 140 Charter]
                           
                            
                                </label>
						</td>
					</tr>
					

            <input type='hidden' name="useridref" value="${sessionScope.userid}" />
            <input type='hidden' name="username" value="${sessionScope.loginid}" />
						<input type='hidden' name="did" value="<%=did %>" />
						<input type='hidden' name="drugName" value="<%=drugname%>" />
						
					<tr>
						<td align='right'>
							<input type="submit" name="Submit" value="Post"  onclick="check()" />
						</td>
						<td align='left'>
							<input type="reset" name="reset" value="reset" />
						</td>
					</tr>
				</table>
			</form>

			<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
var frmvalidator = new Validator("register");

frmvalidator.addValidation("review", "req", "Please enter your Review");
frmvalidator.addValidation("rating", "req", "Please select rating");
</script>

			<br />
			<br />

			<jsp:include page="Footer.jsp"></jsp:include>


		</body>
</html>