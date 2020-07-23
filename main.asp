<% Option Explicit %>  
<!DOCTYPE html>

<html>  
<head>
<form action="login1.asp" name="frmAdd" method="post">
	<div align="Right"><input type="submit" name="submit" value="Logout"></div>
</form>
<title>Business Contracts Registration</title>  
<body bgcolor="AZURE">
<br>
<h1 style="color:DARKOLIVEGREEN;">Business Contracts Registration</h1>
</head>  
<body>  
<form autocomplete="off" action="addrecord.asp" name="frmAdd" method="post">
<table width="600" border="1">  
<tr>  
<th width="100"> <div align="center">KPN ID 	</div></th>  
<th width="160"> <div align="center">First Name </div></th>  
<th width="198"> <div align="center">Last Name 	</div></th>  
<th width="300"> <div align="center">Email 	</div></th>
</tr>  
<tr>  
<td><div align="center"><input type="text" name="txtCustomerID" size="20">	</div></td>  
<td>			<input type="text" name="txtfName" 	size="20">	</td>  
<td>			<input type="text" name="txtlname" 	size="20">	</td>  
<td><div align="center"><input type="text" name="txtemail" 	size="20">	</div></td>
</tr>  
</table>
<br>
<br>  
<input type="submit" name="submit" value="Register">  
<br>
<br>
<%
Server.Execute("connection.asp")
%>
</form>
</body>  
</html>