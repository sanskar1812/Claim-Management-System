<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:url value="/img/claim1.jpg var="logo" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<style type="text/css">
.loginform {
	align-content: center;
}
.error
{
	color: red;
}
table
{
	margin:0 auto;
}
.login{
	margin-top:50px;
}
body{
	background-image: url('src/main/webapp/WEB-INF/jsp/claim2.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
	
}
#Clear:hover{
	background-color:lightGrey;
	color:black;
}
#submit:hover{
	background-color:lightGrey;
	color:black;
}
</style>
<title>Welcome To Login Page</title>
</head>
<body class="body" >
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<div 

<div
		style="text-align: right; padding: 4px;  background: #A0A0A0;">
		<center><h1 id="logid">Welcome to Claim Management</h1></center>

<center>		<div class="btn-group" role="group" aria-label="Basic example">
		  <button onclick="window.location.href='https://www.google.com';" type="button" class="btn btn-primary">Home Page</button>
		  <button onclick="window.location.href='https://www.google.com';" type="button" class="btn btn-primary">About-Us</button>
		</div>  </center>

	</div>
	
	
	
	<!-- TYPE YOUR CODE HERE -->
	<div style="background-image: url('/img/claim2.jpg');">
	
<center>	<div class="d-inline-flex p-2"><h2 id="logid">Login Page</h2></div></center>	
	<form:form name="form" action="/login" method="post" modelAttribute="customer" >
		
		<table class="login">
			<tr>
				<td><form:label path="custId"><b>1)Member Id:</b></form:label></td>
				<td><form:input path="custId" id="custId" name="custId" placeholder="10 digit Mobile Number" /></td>			
				<td><form:errors path="custId" cssClass="error" ></form:errors> </td>
			</tr>
			
			<tr>
				<td><form:label path="custName"><b>2)Member Name:</b></form:label></td>
				<td><form:input path="custName" id="custName" name="custName" placeholder="Name"/></td>
				<td><form:errors path="custName" cssClass="error" ></form:errors> </td>
			</tr>
			<tr>
				<td><form:label path="password"><b>3)Member Password:</b></form:label></td>
				<td><form:password path="password" id="password" name="password" placeholder="Password"/></td>
				<td><form:errors path="password" cssClass="error" ></form:errors> </td>
			</tr>
			
		<tr>
		<td></td>
		<td>
		<div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Details filled  by me</label></td>
  </div>
		</tr>
		</table>
			
			
		
		<center><input type="submit" class="btn btn-success" value="Submit" id="submit" name="submit">
		&nbsp;&nbsp;
		&nbsp;&nbsp;
		&nbsp;&nbsp;
		&nbsp;
		
		<input type="reset" value="Clear" id="Clear" name="Clear" class="btn btn-warning"></center>
		<br><br><br><br><br>
	</form:form>

	<footer class="bg-light text-center text-lg-start">
		  <div class="text-center p-3" style="background-color: #A0A0A0;">
		    © 2021 /
		   <b> TRAVIS-CI PROJECT</b>
		  </div>
</footer>
</body>
</html>