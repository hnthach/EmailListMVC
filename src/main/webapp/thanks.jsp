<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Thanks</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/main.css">
</head>

<body>
    <h1>Thanks for joining our email list</h1>

    <p>Here is the information that you entered:</p>
    <p>Email: ${user.email}</p>
    <p>First Name: ${user.firstName}</p>
    <p>Last Name: ${user.lastName}</p>

    <p>To enter another email address, click on the Back button in your browser
       or the Return button shown below.</p>

    <form action="index.jsp" method="get">
        <input type="submit" value="Return">
    </form>
</body>
</html>
