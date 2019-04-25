
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
        <title>Glorious Pastas!</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <LINK href="css/styles.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    </head>
    <body>
        <h1>Access Pasta Base</h1>
        <form method="post" action="login">
                <div class="formWrapper">
                <div class="inputName">
                    <span>Login</span>
                    <span>Password</span>
                </div>
                <div class="inputs">
                    <input name="login" type="text" />
                    <input name="password" type="password" />
                    <input type="submit" value="login">
                </div>
                </div>
            </form>
    </body>
</html>
