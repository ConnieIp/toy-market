<%-- 
    Document   : clearCartSuccess
    Created on : 2016年4月10日, 下午03:56:29
    Author     : PuiWa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Cart clear fail</title>
        <link rel="stylesheet" href="<%=request.getContextPath() %>/css/general.css" type="text/css" />
    </head>
    <body>
        <h1>Toy Market</h1>
        <h2>Shopping cart cannot be cleared!</h2>
        <p>Your shopping cart is empty! Try to add some of your favourite toys!</p>
        <br/><a href='controller?action=browse&amp;category=all'>Back to Toy Directory</a>
    </body>
</html>
