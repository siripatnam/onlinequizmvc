<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <title>Delete Question</title>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">

    <a class="navbar-brand" href="#">QuizzBuzzz</a>
    <ul class="navbar-nav">

        <li class="nav-item">
            <a class="nav-link" href="/addQues">AddQuestions</a>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="/delQues">Delete</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/results">StudentResults</a>
        </li>


    </ul>
    </ul>
    <ul class="nav navbar-nav ml-auto">
        <li class="nav-item">
            <a href="/" title="Logout"><i style="font-size:24px" class="fa">&#xf2be;</i></a>
        </li>
    </ul>
</nav>
<div class="jumbotron marginstyle">
    <div class="container">
        <table class="table table-bordered">

            <tbody>
            <form:form action = "/delQues" method="post" modelAttribute="question">
            <c:forEach items="${questions}" var="question" varStatus="status">
                <tr>${question.questionId} : </tr>
                <tr>${question.question}</tr><br>
            </c:forEach>
            </tbody>
        </table>
        <div class="form-group">
            <label>Enter the question id:</label>
            <form:input type="text" path="questionId" name = "QuestionId" id = "QuestionId" placeholder="Question Id"
                        class="form-control" style="width: 50%;" />
        </div>
        <input type="submit" value="Delete Question" class="btn btn-outline-info center"/>
        </form:form>

    </div>
</div>
</body>
</html>