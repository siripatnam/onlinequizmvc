<!doctype html>
<html lang="en">
<head>
    <title>Student Registration Form Flat Responsive widget Template :: w3layouts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>


    <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i" rel="stylesheet">

    <link href="css/bootstrap.css" rel="stylesheet" type='text/css' media="all" />
    <link href="css/style.css" rel="stylesheet" type='text/css' media="all" />

</head>
<body>

<nav class="navbar bg-secondary navbar-dark">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="/">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/register">Register</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">FeedBack</a>
            </li>
        </ul>
    </div>
</nav>
<br>

<div class="content-agileits">
    <h1 class="title">student registration Form</h1>
    <div class="left">
        <form action="#" method="post" data-toggle="validator">
            <div class="form-group">
                <label for="firstname" class="control-label">First Name:</label>
                <input type="text" class="form-control" id="firstname" placeholder="First Name" data-error="Enter Your First Name" required>
                <div class="help-block with-errors"></div>
            </div>
            <div class="form-group">
                <label for="lastname" class="control-label">Last Name:</label>
                <input type="text" class="form-control" id="lastname" placeholder="Last Name" data-error="Enter Your Last Name" required>
                <div class="help-block with-errors"></div>
            </div>
            <div class="form-group">
                <label for="inputEmail" class="control-label">Email:</label>
                <input type="email" class="form-control" id="inputEmail" placeholder="Email" data-error="This email address is invalid" required>
                <div class="help-block with-errors"></div>
            </div>
            <div class="form-group">
                <label for="studentId" class="control-label">Student ID:</label>
                <input type="text" class="form-control" id="studentId" placeholder="StudentId" data-error="Enter Your Student ID" required>
                <div class="help-block with-errors"></div>
            </div>
            <div class="form-group">
                <label for="inputPassword" class="control-label">Password:</label>
                <div class="form-inline row">
                    <div class="form-group col-sm-6 agileits-w3layouts">
                        <input type="password" data-minlength="6" class="form-control" id="inputPassword" placeholder="Password" required>
                        <div class="help-block">Minimum of 6 characters</div>
                    </div>
                    <div class="form-group col-sm-6 w3-agile">
                        <input type="password" class="form-control" id="inputPasswordConfirm" data-match="#inputPassword" data-match-error="Whoops, these don't match"
                               placeholder="Confirm Password" required>
                        <div class="help-block with-errors"></div>
                    </div>
                </div>
            </div>
            <div class="form-group w3ls-opt">
                <label for="StudentId" class="control-label">Gender</label>

                <label class="w3layouts">
                    <input type="radio" name="work" id="hire" value="male" checked>Male
                </label>
                <label class="w3layouts label2">
                    <input type="radio" name="work" id="work" value="female">Female
                </label>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-lg">submit</button>
            </div>
        </form>
    </div>
    <div class="right"></div>
    <div class="clear"></div>
</div>



</body>
</html>
