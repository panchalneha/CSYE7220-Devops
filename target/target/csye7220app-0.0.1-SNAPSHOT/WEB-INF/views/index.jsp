<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <!-- Static content -->
  <link rel="stylesheet" href="/resources/css/style.css">
  <script type="text/javascript" src="/resources/js/app.js"></script>

  <title>CSYE7220 - Assignment3</title>
</head>

<body background="https://www.solidbackgrounds.com/images/2560x1440/2560x1440-melon-solid-color-background.jpg">
  <h1>Deployment of software applications</h1>
  <hr>

  <div class="form">
    <form action="hello" method="post" onsubmit="return validate()">
      <table>
        <tr>
          <td>Enter Your name</td>
          <td><input id="name" name="name"></td>
          <td><input type="submit" value="Submit"></td>
        </tr>
      </table>
    </form>
  </div>

</body>

</html>