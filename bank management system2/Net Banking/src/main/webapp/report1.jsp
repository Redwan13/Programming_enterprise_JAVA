<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
   for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill in all Fields")
		   document.F1.accountno.focus()
		   return false
		}
   }

   if(isNaN(document.F1.accountno.value))
   {
       alert("Accountno must contain numbers & can't be empty")
	   document.F1.accountno.value=""
	   document.F1.accountno.focus()
	   return false
   }
   if(!isNaN(document.F1.username.value))
   {
       alert("User Name  must contain characters & cannot be empty")
	   document.F1.username.value=""
	   document.F1.username.focus()
	   return false
   }

   if(!isNaN(document.F1.password.value))
   {
       alert("Password  must contain alphanumeric characres & cannot be null")
	   document.F1.password.value=""
	   document.F1.password.focus()
	   return false
   }
   
   return true   
}
</SCRIPT>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Net Banking</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");

}
</script>

</head>

<body>
  
<div id="header">
	<h1>NET BANK<span class="style1"></span></h1>
</div>

<div id="navigation">
    <ul>
    <li><a href="create.html">NEW ACCOUNT</a></li>
    <li><a href="balance1.jsp">BALANCE</a></li>
    <li><a href="deposit1.jsp">DEPOSIT</a></li>
    <li><a href="withdraw1.jsp">WITHDRAW</a></li>
    <li><a href="transfer1.jsp">TRANSFER</a></li>
        <li><a href="report1.jsp">REPORT</a></li>
        <li><a href="closeac1.jsp">CLOSE A/C</a></li>
   
    </ul>
</div>


<table style="width:897px; background:#FFFFFF; margin:0 auto;">
<tr >
    <td width="1200" valign="top">
    	<div id="welcome" style="border-right:#666666 1px dotted;"><h1>REQUEST REPORT FORM</h1><br>
    	    <table  align="center" bgcolor="white">
			<tr>
			<td><div><%if(request.getAttribute("report")!=null)
			{
			out.print(request.getAttribute("report"));
			}
			
			 %></div>
				<form name=F1 onSubmit="return dil(this)" action="report.jsp" >
				   <table cellspacing="5" cellpadding="3">	
				  <tr><td>ACCOUNT NO:</td><td> <input type="text" name="accountno"/></td></tr>
					<tr><td>USER NAME:</td><td> <input type="text" name="username"/></td></tr>
					<tr><td>PASSWORD:</td><td> <input type="password" name="password"/></td></tr>
					<tr><td>From Date</td><td> <input type="date" placeholder="YYYY/MM/DD" name="fromdate"/></td><td>To Date</td><td> <input type="date" placeholder="YYYY/MM/DD" name="todate"/></td></tr>
					
					
					<tr><td></td><td><input type="submit" value="Submit"/>
					
                   
                   <INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
             	</table>
				</form>
			</td>
		</tr>
	</table>
    	   </div>      
    </td>
</tr></table>


<script type="text/javascript">
document.onload = ctck();
</script>

</body>
</html>
