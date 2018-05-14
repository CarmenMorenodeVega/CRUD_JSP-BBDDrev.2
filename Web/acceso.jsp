<%-- 
    Document   : acceso
    Created on : 26-abr-2018, 9:41:24
    Author     : cmove
--%>

<%@page import="java.util.HashMap"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Materialize -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  </head>
  
  <body>
  <% 
        HashMap<String, String> acceso = new HashMap<String, String>();
            acceso.put("Carmen","soyCarmenUser");
            acceso.put("Lili","soyLiliUser");
            acceso.put("Adriana","soyAdrianaUser");
            acceso.put("Jose Miguel", "soyJosemiguelUser");
            acceso.put("Felisa", "soyFelisaUser");
            acceso.put("Paco", "soyPacoUser");
            acceso.put("admin", "admin");
          
          String nombre = request.getParameter("usuario");
          String contraseña = request.getParameter("clave");
            
          if (acceso.containsKey(nombre)){
            if ((acceso.get(nombre).equals(contraseña))&&(request.getParameter("usuario").equals("admin"))) {               
                session.setAttribute("admin", nombre);
              //response.sendRedirect("areaGestion.jsp");
              out.println("<div class='alert alert-success' role='alert'>Tiene acceso al área de gestión de menores y catequistas.</div>");
              out.println("<a href='areaGestion.jsp' class='btn btn-primary'><span class='glyphicon glyphicon-home'></span> Aceptar </button></a>");

            } else if (acceso.get(nombre).equals(contraseña)){
              session.setAttribute("nombre", nombre);
              //response.sendRedirect("gruposCiclo.jsp");
              out.println("<div class='alert alert-success' role='alert'>Tiene acceso a los grupos de los ciclos</div>");
              out.println("<a href='gruposCiclo.jsp' class='btn btn-primary'><span class='glyphicon glyphicon-home'></span> Aceptar </button></a>");

              
            } else {
              out.println("<div class='alert alert-success' role='alert'>Contraseña incorrecta</div>");
              out.println("<a href='controlAcceso.jsp' class='btn btn-primary'><span class='glyphicon glyphicon-home'></span> Login </button></a>");
            }
          } else {
            out.println("<div class='alert alert-success' role='alert'>El usuario no existe</div>");
            out.println("<a href='controlAcceso.jsp' class='btn btn-primary'><span class='glyphicon glyphicon-home'></span> Login</button></a>");
          };
        
        %>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <!-- Materialize -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
  </body>
</html>
