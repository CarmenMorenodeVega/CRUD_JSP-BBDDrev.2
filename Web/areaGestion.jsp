<%-- 
    Document   : index
    Created on : 19-mar-2018, 12:03:07
    Author     : cmove
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name viewport content="width=device-width, initial-scael=1"/>
        <link href="estilo2.css" rel="stylesheet"/>
	<link href="favicon.ico" rel="shortcut icon"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">
      <img src="http://www.parroquiacarballo.com/wp-content/uploads/2015/05/virgen-de-fatima-2s.jpg" width= 1365px height="470px">
      <title>Base de datos de menores y catequistas de los tres ciclos en Colmenarejo</title>
  </head>
  <body>
      <p class="center">Administración y gestión de datos protegidos.<br/>
      Accede a los listados de niños y catequistas para alta, modificación y eliminación de datos. 
      Desde cada listado se puedde acceder a los grupos de cada ciclo.  </p>
    <table>
      <tr>
        <th><p class="center">
                <a href="menores.jsp" class="btn waves-effect waves-light center">
                    <i class="fa fa-home"></i>
                    Niños en formación catequética
                </a>
               </p></th>
          <th><p class="center">
                <a href="catequistas.jsp" class="btn waves-effect waves-light center">
                    <i class="fa fa-home"></i>
                    Catequistas 
                </a>
            </p></th>
           
          <th><p class="center ">
                <a href="index.jsp" class="btn waves-effect waves-light center">
                    <i class="fa fa-home"></i>
                    Cerrar sesión del administrador
                </a></th>
        </tr>
    </table>
       <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <!-- Materialize -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
  </body>
</html>
