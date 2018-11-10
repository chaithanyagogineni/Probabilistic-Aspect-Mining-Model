

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
		</head>
		 <body background="./images/back4.jpg">

			<jsp:include page="Header.jsp"></jsp:include>
			<br />
			<center>
			<h3>

				<span class=subHead><br /><font color="red" size="5">Drug Search Form </font></span>
			</h3>
			</center>

			<form action="./viewSearchDrugAction.do" name="register" method='post'
				onsubmit="return validate()">
				

				<table border='0' align="center" width=70%>
					<tr>
						<td align='right'>
							<b><font color="#003366" size="4">Enter DrugName or Usage or BrandName :</font></b>
						</td>

						<td>
							<input type="text" name="drugeName" value="" size="20" />
						</td>
					</tr>

										
					
					<tr>
						<td align='right'>
							<input type="submit" name="Submit" value="search" />
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

frmvalidator.addValidation("drugeName", "req", "Please enter your Drugname");
drug</script>

			<br />
			<br />

			<jsp:include page="Footer.jsp"></jsp:include>


		</body>
</html>