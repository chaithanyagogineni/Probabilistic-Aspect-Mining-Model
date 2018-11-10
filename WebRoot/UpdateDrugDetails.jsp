<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml2/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
	</head>
	<body background="./images/back4.jpg">
		<jsp:include page="Header.jsp"></jsp:include>
		<h3>
			<span class=subHead><br />Update Drug Details</span>
		</h3>
		</center>

		<form action="./updateDrugDetailsAction.do" name="drug" method='post'
			onsubmit="return validate()">
			<!--<table border="1"><tr><td></td></tr></table>-->
			<table border='0' align="center" width=60%>
				<th colspan="6" bgcolor="skyblue">
					drug Details
				</th>
				<tr></tr>
				<tr></tr>
				<c:if test="${not empty drugsTO}">
					<tr>
						<td align='right'>
							Name of drug:
						</td>
						<td>
							<input type="text" name="drugName" value="${drugsTO.drugName}"
								size="20" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td align='right'>
							Branch Name :
						</td>
						<td>
							<input type="text" name="brandName" value="${drugsTO.brandName}" />
						</td>
						<td></td>
						<td></td>
					</tr>
					
					<tr>
						<td align='right'>
							Usege :
						</td>
						<td>
							<input type="text" name="usage" value="${drugsTO.usage}"
								size="20" />
						</td>
					</tr>
					<input type='hidden' name='did' value='${drugsTO.did}' />
					<tr>
						<td align="right">
							<input type="submit" name="Update" value="Update" />
						</td>
						<td align="left">
							<input type="reset" name="cancel" value="Cancel" />
						</td>
						
					</tr>
				</c:if>
			</table>
			<p>
				<br />
				<br />
				<br />
			</p>
			<p>
				&nbsp;
			</p>
			<p>
				&nbsp;
			</p>
			<p>
				&nbsp;
			</p>
			<p>
				<br />
			</p>
		</form>
		<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
var frmvalidator = new Validator("drug");

frmvalidator.addValidation("drugName", "req", "Please enter your drug Name");
frmvalidator
		.addValidation("branchName", "req", "Please enter your Branch Name");
frmvalidator.addValidation("accnumber", "req", "Please enter your Acc number");
frmvalidator.addValidation("username", "req", "Please enter your UserName");
frmvalidator.addValidation("password", "req", "Please enter your UserName");
frmvalidator.addValidation("atmcardno", "req", "Please enter your Atm card no");
frmvalidator.addValidation("atmpin", "maxlen=5");
frmvalidator.addValidation("atmpin", "numeric");
frmvalidator.addValidation("siteurl", "req", "Please enter your Site URL");
</script>

		<jsp:include page="Footer.jsp"></jsp:include>


	</body>
</html>