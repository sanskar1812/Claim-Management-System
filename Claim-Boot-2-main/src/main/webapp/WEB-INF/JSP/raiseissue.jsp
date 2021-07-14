<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:url value="/img/claim1.jpg var="logo" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<style type="text/css">
.raiseissue {
	align-content: center;
}
table
{
	margin:0 auto;
}
</style>
<title>RAISE ISSUE</title>
</head>
<body>

	<div
		style="text-align: right; padding: 4px;  background: #A0A0A0;">
		<center><h3 id="heading3">Claim - Submission</h3></center>
	</div>
	<div style="background-image: url('/img/claim2.jpg');">	

	<!-- TYPE YOUR CODE HERE -->
	<br>
	<form action="/raiseissue" method="post">
		<table>
						<center><h3>Fill the form to Register claim: </h3></td>
				</center>
		
			<tr>
				<td><b>1)Claim Id:</b></td>
				<td><input type="text" name="custIssueId" value="${custIssueId}" ></td>
			</tr>
			<tr>
				<td><b>2)Issued Report Date:</b>Format:yyyy-mm-dd.    </td>
				<td><input type="text" name="issueReportDate" ></td>
			</tr>
			<tr>
				<td><b>3)Customer Id:</b>(Hospital,Home..)</td>
				<td><input type="text" name="custId" ></td>
			</tr>
			<tr>
				<td><b>4)Category:</b></td>
				<td><input type="text" name="category" ></td>
			</tr>
			<tr>
				<td><b>5)Please fill a short Description:</b></td>
				<td><textarea rows="7" cols="23" name="descr" placeholder="Describe your Claiming issue in 500 words or less"></textarea>  </td>
			</tr>
			
			<tr>
				<td><input type="submit" value="Submit-Form" name="Submit" class="btn btn-success"></td>
				<td><input type="reset" value="Clear-Details" id="Clear" name="Clear" class="btn btn-warning"></td>
			</tr>
		</table>
	</form>
	<br>
	<footer class="bg-light text-center text-lg-start">
		  <div class="text-center p-3" style="background-color: #A0A0A0;">
		   <b> TRAVIS-CI PROJECT</b>
		  </div>
</footer>

</body>
</html>