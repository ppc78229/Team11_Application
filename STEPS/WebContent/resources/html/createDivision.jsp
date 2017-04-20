<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Create Divison</title>
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
      SELECT name FROM STEPS.sport;
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
                <li><a href="addsport.html">Add Sport</a></li>
                <li><a href="addPlayer.html">Add Player</a></li>
                <li><a href="createTeam.html">Create Team</a></li>
                <li><a href="createBracket.html">Create Bracket</a></li>
                <li><a href="createDivision.html">Create Division</a></li>
                <li><a href="changePrivileges.html">Change Privileges</a></li>
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
        <h2 class="form-signin-heading">Create a Division</h2>
        <label for="inputName">Division Name</label>
        <input type="text" id="inputName" class="form-control" placeholder="Divsion Name" required autofocus>
        </br>

        <label for="sportSelect">Sport</label>
        <select class="form-control" id="sportSelect">
          <c:forEach var="row" items="${result.rows}">
            <option><c:out value="${row.name}" /></option>
          </c:forEach>
        </select>
        </br>

        <div class="checkbox">
          <label><input type="checkbox" value="">Sport is Indoor</label>
        </div>
        </br>

        <label for="maximumTeams">Maximum Number of Teams</label>
        <input type="number" id="maximumTeams" class="form-control" placeholder="Maximum Number of Teams" required autofocus>
        </br>

        <label for="maximumPlayers">Maximum Number of Players on Teams</label>
        <input type="number" id="maximumPlayers" class="form-control" placeholder="Maximum Number of Players" required autofocus>
        </br>

        <a href="account.html" class="btn btn-lg btn-primary btn-block">Create Division</a>
      </form>

    </div> <!-- /container -->
  </body>
</html>
