<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<c:url value="/img/claim1.jpg var="logo" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<title>Customer's Page</title>

<c:url value="/img/claim1.jpg var="logo" />
</head>
<body  >
	
	<div
		style="text-align: right; padding: 4px;  background: #A0A0A0;">
		<center><h2 id="heading3">Welcome To Claim Page</h2></center>
	</div>
	<div style="background-image: url('/img/claim2.jpg');">	
			<!-- TYPE YOUR CODE HERE -->
			<form name="form" modelAttribute="customer" action="customerform" method=post >

	
			<center>
			<table>
				<tr>
				<td><h1>Please Select Your Option: </h1></td>
				</tr>
				<tr>
				
				<td><input type="radio" id="ri" name="option" value="ri"  />Raise Issue</td>
				<td>You will be able to see all the claims</td>
				</tr>
				<tr>
				<td><input type="radio" id="vi" name="option" value="vi" />View Issue Status</td>
				<td><input type="text" id="issueid"  name="issueid" placeholder="Enter Id of the claim-Issue" style="font-size:12pt; width:240px;"/></td>
				</tr>
								<tr><td></td><td></td></tr>								<tr><td></td><td></td></tr>
																<tr><td></td><td></td></tr>								<tr><td></td><td></td></tr>
				<tr>
					
					<center><td><input type="submit" class="btn btn-success" id="sub1" name="submit" value="Submit" /></td>
							<td><input type="reset" value="Clear-Id" id="Clear" name="Clear" class="btn btn-warning"></td>
					</center>
				</tr>
				<br><br>
			</table>
			</form>
<br>
		
	<br><br><br><br><br><br><br>

	<footer class="bg-light text-center text-lg-start">
		  <div class="text-center p-3" style="background-color: #A0A0A0;">
		   <b> TRAVIS-CI PROJECT</b>
		  </div>
</footer>

</body>

</html>