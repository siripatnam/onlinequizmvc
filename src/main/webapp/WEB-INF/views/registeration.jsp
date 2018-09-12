<!doctype html>
<html>

<head>
    <title>Student Registration Form Flat Responsive widget Template :: w3layouts</title>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

    <style>

        .margins {
            margin: 50px;
        }
    </style>
</head>

<body>
<nav class="navbar navbar-expand-sm bg-warning navbar-dark">

    <a class="navbar-brand" href="#">QuizzBuzzz</a>
    <ul class="navbar-nav">
        <li class="nav-item ">
            <a class="nav-link" href="/">Home</a>
        </li>
                <li class="nav-item">
            <a class="nav-link" href="#">AboutUS</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="/Login">Login</a>
        </li>
    </ul>
</nav>



<div class="container margins">

    <div class="left">
        <form:form action="/validateRegister" method="post" modelAttribute="register">
            <div class="form-group">
                <label for="firstName" class="control-label">First Name:</label>
                <form:input type="text" path="firstName" class="form-control" id="firstName" placeholder="First Name" style="width: 50%"/>
            </div>
            <div class="form-group">
                <label for="lastName" class="control-label">Last Name:</label>
                <form:input type="text" path="lastName" class="form-control" id="lastName" placeholder="Last Name" style="width: 50%"/>
            </div>
            <div class="form-group">
                <label for="email" class="control-label">Email:</label>
                <form:input type="email" path="email" class="form-control" id="email" placeholder="Email" style="width: 50%"/>
            </div>
            <div class="form-group">
                <label for="studentId" class="control-label">Student ID:</label>
                <form:input type="text" path="studentId" class="form-control" id="studentId" placeholder="StudentID" style="width: 50%"/>
            </div>
            <div class="form-group">
                <label for="password" class="control-label">Password:</label>
                <form:input type="password" path="password" class="form-control" id="password" placeholder="password" style="width: 50%"/>
            </div>
            <div class="form-group w3ls-opt">
                <form:label class="control-label" path="gender">Gender: </form:label>
                &nbsp&nbsp;&ensp;&ensp;&ensp;

                <label class="w3layouts">
                    <form:radiobutton path="gender" value="male" />Male
                </label>
                &nbsp &nbsp&nbsp;&ensp;&ensp;&ensp;
                <label class="w3layouts label2">
                    <form:radiobutton path="gender" value="female"/>Female
                </label>
            </div>
            <div class="form-group">
                <input type="submit" value="Register" class="btn btn-success"/>
            </div>
        </form:form>
    </div>
   </div>


</body>

</html>