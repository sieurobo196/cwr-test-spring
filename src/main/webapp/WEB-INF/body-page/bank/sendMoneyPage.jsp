<h2>Send Money</h2>
<ul>
    <li>1 - Tom</li>
    <li>2 - Jerry</li>
    <li>3 - Donald</li>
</ul>

<div>${errorMessage}</div>

<form action="/sendMoney" method="POST">
    <table>

        <tr>
            <td>From Bank Account Id</td>
            <td><input type="text" th:field="*{fromAccountId}"/></td>
        </tr>
        <tr>
            <td>To Bank Account Id</td>
            <td><input type="text" th:field="*{toAccountId}"/></td>
        </tr>
        <tr>
            <td>Amount</td>
            <td><input type="text" th:field="*{amount}" /></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><input type="submit" value="Send"/></td>
        </tr>
    </table>
</form>