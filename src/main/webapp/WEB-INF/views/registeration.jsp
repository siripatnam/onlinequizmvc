<!doctype html>
<html>

<head>
    <title>Student Registration Form Flat Responsive widget Template :: w3layouts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

    <style>

        .marginstyle {
            margin: 50px;
        }




    </style>

</head>

<body>
<nav class="navbar navbar-expand-sm bg-warning navbar-dark">

    <a class="navbar-brand" href="#">QuizzBuzzz</a>
    <ul class="navbar-nav">
        <li class="nav-item ">
            <a class="nav-link" href="#">Home</a>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="#">Register</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">AboutUS</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
        </li>

    </ul>
</nav>



<div class="container marginstyle">

    <div class="left">
        <form action="#" method="post" data-toggle="validator">
            <div class="form-group">
                <label for="firstname" class="control-label">First Name:</label>
                <input type="text" class="form-control" id="firstname" placeholder="First Name" data-error="Enter Your First Name" required style="width: 50%">
                <div class="help-block with-errors"></div>
            </div>
            <div class="form-group">
                <label for="lastname" class="control-label">Last Name:</label>
                <input type="text" class="form-control" id="lastname" placeholder="Last Name" data-error="Enter Your Last Name" required style="width: 50%">
                <div class="help-block with-errors"></div>
            </div>
            <div class="form-group">
                <label for="inputEmail" class="control-label">Email:</label>
                <input type="email" class="form-control" id="inputEmail" placeholder="Email" data-error="This email address is invalid" required style="width: 50%">
                <div class="help-block with-errors"></div>
            </div>
            <div class="form-group">
                <label for="StudentID" class="control-label">Student ID:</label>
                <input type="text" class="form-control" id="StudentID" placeholder="StudentID" data-error="Enter Your Student id Number" required style="width: 50%">
                <div class="help-block with-errors"></div>
            </div>
            <div class="form-group">
                <label for="inputPassword" class="control-label">Password:</label>
                <div class="form-inline row">
                    <div class="form-group col-sm-6 ">
                        <input type="password" data-minlength="6" class="form-control" id="inputPassword" placeholder="Password" required > &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&ensp;&ensp;&ensp;&nbsp;&ensp;&ensp;&ensp;
                        <input type="password" class="form-control" id="inputPasswordConfirm" data-match="#inputPassword" data-match-error="Whoops, these don't match"
                               placeholder="Confirm Password" required >



                        <div class="help-block with-errors"></div>
                    </div>
                </div>
            </div>
            <div class="form-group w3ls-opt">
                <label for="Phone" class="control-label">Gender: </label>
                &nbsp&nbsp;&ensp;&ensp;&ensp;

                <label class="w3layouts">
                    <input type="radio" name="work" id="hire" value="male" checked>Male
                </label>
                &nbsp &nbsp&nbsp;&ensp;&ensp;&ensp;
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