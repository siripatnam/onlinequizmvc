<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Document</title>

    <style>
        .marginstyle{
            margin: 50px;
        }
        .margins{
            margin-top: 20px;
            margin-left: 50px;
        }
        p {
            text-align: center;
            font-size: 60px;
            margin-top: 0px;
        }
        .center{
             align-content: center;
        }

    </style>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-warning navbar-dark">
    <a class="navbar-brand" href="#">QuizzBuzzz</a>
    <ul class="navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="/">LogOut</a>
        </li>
     </ul>
</nav>
<br><br>
<p id="demo"></p>

<script>
    // Set the date we're counting down to

    var countdown = 20 * 60 * 1000;
    var timerId = setInterval(function(){
        countdown -= 1000;
        var min = Math.floor(countdown / (60 * 1000));
        //var sec = Math.floor(countdown - (min * 60 * 1000));  // wrong
        var sec = Math.floor((countdown - (min * 60 * 1000)) / 1000);  //correct

        if (countdown <= 0) {
            alert("30 min!");
            clearInterval(timerId);
            document.getElementById("demo").innerHTML = "EXPIRED";
            //doSomething();
        } else {
            document.getElementById("demo").innerHTML=min + " : " + sec;
        }

    }, 1000);
</script>
<h3 class="marginstyle">Hey User!</h3>

<div class="jumbotron marginstyle">
<div class="container">
    <table class="table table-bordered">

        <tbody>
        <form:form action = "/validateQuestion" method="get" modelAttribute="question">
            <c:forEach items="${question}" var="questions">
                <tr>${questions.questionId} : </tr>
                <tr>${questions.question}</tr><br>
             <form:radiobutton path="" value="${questions.optionA}"/><tr>${questions.optionA}</tr><br>
             <form:radiobutton path="" value="${questions.optionB}"/><tr>${questions.optionB}</tr><br>
             <form:radiobutton path="" value="${questions.optionC}"/> <tr>${questions.optionC}</tr>
            </c:forEach>
        </tbody>
    </table>
        <input type="submit" value="Submit Answers" class="btn btn-outline-info center"/>
    </form:form>

</div>
</div>

</body>
</html>