<% Option Explicit %>
<!DOCTYPE html>

<html>  
<body> 
<%  
Dim Conn,strSQL,objExec  
Set Conn = Server.Createobject("ADODB.Connection")  
Conn.Open "FILEDSN=c:\bcr\bcr.dsn;UID=sa;PWD=!@#%^1c*@#-1P@ss"  
strSQL = ""  
strSQL = strSQL &"INSERT INTO userinfo "  
strSQL = strSQL &"(KPN_ID,First_Name,Last_Name,Email_Id,Login_Id,[Password]) "  
strSQL = strSQL &"VALUES "  
strSQL = strSQL &"('"&Request.Form("txtCustomerID")&"','"&Request.Form("txtfName")&"', '"&Request.Form("txtlname")&"' "  
strSQL = strSQL &",'"&Request.Form("txtemail")&"','"&Request.Form("txtCustomerID")&"','"&Request.Form("txtCustomerID")&"') "  
Set objExec = Conn.Execute(strSQL)  
If Err.Number = 0 Then  
Response.write("Information is Registered Successfully")
Else  
Response.write("Error Save ["&strSQL&"] ("&Err.Description&")")
End If  
Conn.Close()  
Set objExec = Nothing  
Set Conn = Nothing  
%>
<br>
<br>
<input type="submit" name="submit" value="Home">

<% 
response.redirect "/main.asp"
%>

</body>  
</html>