<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml2/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
	<html>
		<head>
			<base href="<%=basePath%>">

			<title>My JSP 'AboutUs.jsp' starting page</title>

			<meta http-equiv="pragma" content="no-cache">
			<meta http-equiv="cache-control" content="no-cache">
			<meta http-equiv="expires" content="0">
			<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
			<meta http-equiv="description" content="This is my page">
			<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

		</head>

		<body background="./images/back4.jpg">
			<jsp:include page="Header.jsp"></jsp:include>
			<!-- ImageReady Slices (home page.jpg) -->
			<div align="center">

				<center>
				<table>
					<tr>
						
					<tr>
						<td>
							<p> 
								&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <h3>Probabilistic Aspect Mining Model for Drug
Reviews 
							</h3>
						</td>
					</tr>
					<tr>
						<td aling='le'>
							<p>
								<br>
									Recent findings show that online reviews, blogs, and discussion forums on chronic diseases and drugs are becoming
important supporting resources for patients. Extracting information from these substantial bodies of texts is useful and challenging.
We developed a generative probabilistic aspect mining model (PAMM) for identifying the aspects/topics relating to class labels or
categorical meta-information of a corpus. Unlike many other unsupervised approaches or supervised approaches, PAMM has a
unique feature in that it focuses on finding aspects relating to one class only rather than finding aspects for all classes simultaneously
in each execution. This reduces the chance of having aspects formed from mixing concepts of different classes; hence the identified
aspects are easier to be interpreted by people. The aspects found also have the property that they are class distinguishing: They can
be used to distinguish a class from other classes. 
																
								</br>
						</td>
					</tr>
					</p>
				</center>
				</table>
		</body>

	</html>