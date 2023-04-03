<style>
    th, td {
        padding: 5px;
    }
</style>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h2>Accounts</h2>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Full Name</th>
        <th>Balance</th>
    </tr>
    <c:forEach items="${accountList}" var="accountInfo">
    <tr >
        <td>${accountInfo.id}</td>
        <td>${accountInfo.fullName}</td>
        <td>${accountInfo.balance}</td>
    </tr>
    </c:forEach>
</table>