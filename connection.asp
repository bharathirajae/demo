<%
Dim conn
Set conn = Server.CreateObject("ADODB.Connection")
conn.open "FILEDSN=c:\bcr\bcr.dsn;UID=sa;PWD=!@#%^1c*@#-1P@ss"
set rs = Server.CreateObject("ADODB.recordset")
rs.Open "Select KPN_ID,First_Name,Last_Name,Email_Id from userinfo", conn
%>

<!DOCTYPE html>

<html>

<head>

<title>Business Contracts Registration</title>
<body>
<h1>List of Business Contracts Registration</h1>
<br>
<table border="1" width="100%">
  <tr>
  <%
for each x in rs.Fields
    response.write("<th>" & x.name & "</th>")
  next
%>
  </tr>
  <%
do until rs.EOF%>
    <tr>
    <%for each x in rs.Fields%>
      <td><div align="center"><%Response.Write(x.value)%></div></td>
    <%next
    rs.MoveNext%>
    </tr>
  <%loop
  rs.close
  conn.close
  %>
</table>

</body>

</html>