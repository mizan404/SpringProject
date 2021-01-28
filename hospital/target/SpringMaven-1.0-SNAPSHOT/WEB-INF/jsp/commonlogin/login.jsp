

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name='loginForm' action="/login" method='POST'>

            <table>
                <tr>
                    <td>User:</td>
                    <td><input type='text' name='username' value=''>
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type='password' name='password' />
                    </td>
                </tr>
                <tr>
                    <td><input name="submit" type="submit"
                               value="submit" />
                    </td>
                    <td><input name="reset" type="reset" />
                    </td>
                </tr>
            </table>

        </form>

    </body>
</html>
