<!DOCTYPE html>
<head>
    <title>Rules</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

    <%--<style>
        .center{
            text-align: center;
        }
        .btn{
            position:absolute;
            right: 50%;
        }
        .topnav-right{
            float: right;
        }

    </style>--%>

    <style>
        .center{
            text-align: center;
        }
        /*.btn{*/
        /*position:absolute;*/
        /*right: 50%;*/
        /*}*/
        .button {
            display: inline-block;
            padding: 15px 25px;
            font-size: 24px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: #fff;
            background-color: #4CAF50;
            border: none;
            border-radius: 15px;
            box-shadow: 0 9px #999;
            position:absolute;
            right:50%;
        }

        .button:hover {background-color: #3e8e41}

        .button:active {
            background-color: #3e8e41;
            box-shadow: 0 5px #666;
            transform: translateY(4px);
        }


    </style>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-warning navbar-dark">
    <a class="navbar-brand" href="#">QuizzBuzzz</a>
    <ul class="navbar-nav">
        <li class="topnav-right nav-item">
            <a class="nav-link " href="/">LogOut</a>
        </li>
    </ul>
</nav>

<br><br><br>
<div class="container">
    <form action="/getQuestion" method="get">
        <h1> Rules </h1>
        <ul>
            <li>
                <a> Total Questions: 10 </a> </li>
            <li><a> Time allotted : 20minutes </a></li>
            <li><a> There is no negative marking </a></li>
            <li><a>Answers are case sensitive,so use lower case alphabets.</a></li>
            <li><a> Click on Start button to start the test </a></li>
            <li><a> After the test starts, don't press back or refresh button or don't close the browser window </a>
            </li>
        </ul>

        <%--<input type="submit" value="Start" class="btn btn-success center" >--%>
        <input type="submit" value="Start" class="button" >
    </form>
</div>
</body>
