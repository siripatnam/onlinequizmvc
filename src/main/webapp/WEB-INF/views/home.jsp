<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <title>Welcome</title>

    <style>
        .margins{
            margin: 50px;
        }
        .center{
            text-align: center;
            font-family: "Brush Script MT";
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-warning navbar-dark">

    <a class="navbar-brand" href="#">QuizzBuzzz</a>
    <ul class="navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="#">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">AboutUS</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
        </li>

    </ul>
</nav>
<br>
<div class="margins">
    <div class="jumbotron">
      <div class="container center">
            <p style="font-size: 50px">Welcome to Student Portal</p>
            <p style="font-family: Arial">An Official student portal to take up all the tests at one place</p>
      </div>
    </div>
      <div class="row">
          <div class="col-sm-3">

          </div>
            <div class="col-sm-3">
                <p>Student Login</p>
                <a href="/Login" class="btn btn-outline-primary">Login</a>
            </div>
            <div class="col-sm-3">
                <p>New Student? Register Here </p>
                <a href="/Register" class="btn btn-outline-primary">Register</a>
            </div>
          <div class="col-sm-3">

          </div>
      </div>
</div>
</body>
</html>