<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Remove Tournament Bracket</title>
    <link rel="stylesheet" type="text/css" href="resources/css/index.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
    crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
    integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
    crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
    integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
    crossorigin="anonymous"></script>
  </head>
  <body>

    <sql:setDataSource var="steps" driver="com.mysql.jdbc.Driver"
      url="jdbc:mysql://localhost:3306/STEPS"
      user="root" password="root" />

    <sql:query dataSource="${steps}" var="result">
      SELECT name FROM STEPS.tournament;
    </sql:query>

    <!-- Static navbar -->
    <nav class="navbar navbar-default navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Administrator</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class=""><a href="account.html">Home</a></li>
            <li class="dropdown active">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Actions <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="addsport.jsp">Add Sport</a></li>
                <li><a href="createDivision.jsp">Create Division</a></li>
                <li><a href="createBracket.jsp">Create Tournament</a></li>
                <li><a href="deleteSport.jsp">Remove a Sport</a></li>
                <li><a href="deleteDivision.jsp">Remove a Division</a></li>
                <li><a href="deleteTournament.jsp">Remove a Tournament</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="../../index.html">Sign Out</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">

      <form class="form-signin">
        <h2 class="form-signin-heading">Remove Tournament</h2>
        <label for="tournamentSelect">Tournament</label>
        <select class="form-control" id="tournamentSelect">
          <c:forEach var="row" items="${result.rows}">
            <option><c:out value="${row.name}" /></option>
          </c:forEach>
        </select>
      </br>
        <a href="account.html" class="btn btn-lg btn-primary btn-block">Remove Tournament</a>
      </form>

    </div> <!-- /container -->

  </body>
</html>
