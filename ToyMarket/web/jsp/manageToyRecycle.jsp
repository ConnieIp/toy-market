<%-- 
    Document   : manageToyRecycle
    Created on : 2016年4月13日, 上午03:04:12
    Author     : PuiWa
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Recycle Toy</title>
        <link rel="stylesheet" href="<%=request.getContextPath() %>/css/general.css" type="text/css" />
    </head>
    <body><jsp:include page="include/note.jsp" />
        <h1>Toy Market</h1>
        <h2>Manage Toy Recycle</h2>
        <form method="post" action="manageRecycle">
            <fieldset>
                <legend>Toy Recycle Request</legend>
                <table>
                    <tr>
                        <td>Name</td>
                        <td>Type</td>
                        <td>Age</td>
                        <td>Gender</td>
                        <td>Description</td>
                        <td>Qty</td>
                        <td>Price</td>
                        <td>Owner</td>
                        <td>Approve / Reject Recycle</td>
                    </tr>
                    <c:forEach var="entry" items="${toysAppliedRecycle}" varStatus="iter">
                            <tr>
                                <td>${entry.toyname}</td>
                                <td>${entry.toytype}</td>
                                <td>${entry.age}</td>
                                <td>${entry.gender}</td>
                                <td>${entry.description}</td>
                                <td>${entry.qty}</td>
                                <td>${entry.price}</td>
                                <td>${entry.owner}</td>
                                <td>
                                    <select name="${entry.toyid}">
                                        <option value='Y'>Approve</option>
                                        <option value='R'>Reject</option>
                                        <option value=''>Pending</option>
                                    </select>
                                </td>
                            </tr>
                    </c:forEach>
                </table>
                <input type='submit' value='Change!' />
                <br/><input type='reset' value='Reset!' />
            </fieldset>
        </form>
        <br/><a href='controller?action=browse&amp;category=all'>Back to Toy Directory</a>
        <br/>
        <jsp:include page="include/note.jsp" />
    </body>
</html>
