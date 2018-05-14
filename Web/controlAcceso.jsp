<%-- 
    Document   : controlAcceso
    Created on : 26-abr-2018, 9:39:05
    Author     : cmove
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Scanner"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Materialize -->
    <link href="estilo2.css" rel="stylesheet"/>
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">
  <img src="https://adelantelafe.com/wp-content/uploads/2014/11/jesus-buen-pastor-800x394.jpg" width= 1365px height="330px">
    <title>Acceso base de datos de Catequesis en Colmenarejo</title>
  </head>
  <body>
    <div class="container">
        <div class="row">
        <div class="row col m3"></div>
        <div class="col m6 card-panel grey lighten-5">
          <h5 class="center">Acceso a datos protegidos</h5>
          <form method="post" action="acceso.jsp">
            <div class="input-field">
              <i class="material-icons prefix">account_circle</i>
              <input type="text" name="usuario" id="usuario" required>
              <label for="usuario">Catequista</label>
            </div>
            <div class="input-field">
              <i class="material-icons prefix">lock</i>
              <input type="password" name="clave" id="clave" required>
              <label for="clave">Contraseña</label>
            </div>
              <p class="center"><button class="btn waves-effect waves-light center" type="submit" name="aceptar">
              Aceptar
              <i class="material-icons">check_circle</i>
              </button></p>
              <p class="center">Por favor, preste atención a las mayúsculas.</p>
          </form>
        </div>        
      </div>
    </div> 
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <!-- Materialize -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
  </body>
</html>