<<doctype html>
<html lang="en">
<head>
    <title>Login</title>


    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Prime login Form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>

    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">

    <link href="//fonts.googleapis.com/css?family=Mukta+Mahee:200,300,400,500,600,700,800" rel="stylesheet">

    <link rel="stylesheet" href="css/font-awesome.css" type="text/css" media="all">

</head>
<body>
<h1 class="title-agile text-center">Prime login form</h1>
<div class="content-w3ls">
    <div class="content-bottom">
        <form action="#" method="post">
            <div class="field-group">
                <span class="fa fa-user" aria-hidden="true"></span>
                <div class="wthree-field">
                    <input name="text1" id="text1" type="text" value="" placeholder="username" required>
                </div>
            </div>
            <div class="field-group">
                <span class="fa fa-lock" aria-hidden="true"></span>
                <div class="wthree-field">
                    <input name="password" id="myInput" type="Password" placeholder="password">
                </div>
            </div>
            <div class="field-group">
                <div class="check">
                    <label class="checkbox w3l">
                        <input type="checkbox" onclick="myFunction()">
                        <i> </i>show password</label>
                </div>

                <script>
                    function myFunction() {
                        var x = document.getElementById("myInput");
                        if (x.type === "password") {
                            x.type = "text";
                        } else {
                            x.type = "password";
                        }
                    }
                </script>

            </div>
            <div class="wthree-field">
                <input id="saveForm" name="saveForm" type="submit" value="sign in" />
            </div>
            <ul class="list-login">
                <li class="switch-agileits">
                    <label class="switch">
                        <input type="checkbox">
                        <span class="slider round"></span>
                        keep me signed in
                    </label>
                </li>
                <li>
                    <a href="#" class="text-right">forgot password?</a>
                </li>
                <li class="clearfix"></li>
            </ul>
        </form>
    </div>
</div>


</div>
</body>

</html>
</doctype>