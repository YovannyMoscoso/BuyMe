<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Auction A Phone</title>
</head>
<body>
<b>Auction A Phone</b><br></br>
<form name = "phoneform" action = "sellerItemPhone.jsp" method = "POST">
	Seller: <input name = "username" type = "text" /> <br/>
	Phone Name: <input name = "phonename" type = "text" /> <br/>
	Operating System: <input name = "os" type = "text" /> <br/>
	Processor: <input name = "processor" type = "text" /> <br/>
	Display Size: <input name = "display" type = "text" /> <br/>
	RAM: <input name = "ram" type = "text" /> <br/>
	Phone Storage: <input name = "phonestorage" type = "text" /> <br/>
	Battery: <input name = "battery" type = "text" /> <br/>
	Device ID: <input name = "deviceid" type = "text" /> <br/>
	International Mobile Equipment Identity (IMEI): <input name = "imei" type = "text" /> <br/>
	<br></br>
	
	Secret Minimum Price: <input name = "secretminprice" type = "number" /> <br/>
	Initial Price: <input name = "initialprice" type = "number" /> <br/>
	Bid Increment: <input name = "bidincrement" type = "number" /> <br/>
	Ending Auction Date (yyyy-mm-dd): <input name = "date" type = "text" /> <br/>
	
	
	
	
	<button type = "submit"> Submit</button>
</form>

</body>
</html>