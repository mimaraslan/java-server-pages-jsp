<html>
    <head><title>Test JSP page</title></head>
    <body>
        <h1>Working JSP page!</h1>
        <p>This is a page to verify that .jsp support has been enabled</p>

        <table border="0">
            <tr>
                <td align="right"><b>Date:</b></td>
                <td align="left"><%= new java.util.Date() %></td>
            </tr>
            <tr>
                <td align="right"><b>Remote Address:</b></td>
                <td align="left"><%= request.getRemoteAddr() %></td>
            </tr>
            <tr>
                <td align="right"><b>Request Method:</b></td>
                <td align="left"><%= request.getMethod() %></td>
            </tr>
            <tr>
                <td align="right"><b>Servlet Path:</b></td>
                <td align="left"><%= request.getServletPath() %></td>
            </tr>
        </table>
    </body>
</html>
