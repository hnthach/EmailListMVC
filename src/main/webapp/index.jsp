<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Email List</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/main.css">
</head>

<body>
    <h1>Join our email list</h1>
    <p>To join our email list, enter your name and email address below.</p>

    <form action="emailList" method="post">
        <label>Email:</label>
        <input type="email" name="email"><br>

        <label>First Name:</label>
        <input type="text" name="firstName"><br>

        <label>Last Name:</label>
        <input type="text" name="lastName"><br>

        <input type="submit" value="Join Now">
    </form>
</body>
</html>
