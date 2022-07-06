<%@page import="bags.Signup"%>
<nav class="navbar navbar-inverse" style="padding-top: 10px; padding-bottom: 10px; padding-left: 10px; padding-right: 10px;">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                    
      </button>
        <a class="navbar-brand" href="../index.jsp"><img src="C:\Users\HP\OneDrive\Documents\NetBeansProjects\Project\web\img\ores logos\oresfinal1.png"
                                                      width="130" height="80" style="margin-top: -28px;"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="../index.jsp">HOME</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">INMUEBLES<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="../Apartment.jsp">Apartmento</a></li>
            <li><a href="../Villa.jsp">Casa independiente</a></li>
            <li><a href="../Floor.jsp">Piso Indeopendiente</a></li>
            <li><a href="../Land.jsp">Terreno</a></li>
            <li><a href="../Farmhouse.jsp">Casa de campo</a></li>
          </ul>
        </li>
        <li class="dropdown">
            <%
                if(session.getAttribute("Signup") !=null){
                      Signup sb=(Signup) session.getAttribute("Signup");
                %>
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;
                    <b style="text-transform: uppercase; font-weight: normal;">
                        <%= sb.getName()%></b>
                    <span class="caret"></span>
                </a>
                    <ul class="dropdown-menu">
            <% 
                      if(sb.getRole().equals("admin")){
                          %>
                          <li><a class="dropdown-item" href="../profile.jsp"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;&nbsp;&nbsp;PERFIL</a></li>
                          <li><a class="dropdown-item" href="../admin/dashboard.jsp"><span class="glyphicon glyphicon-th-list"></span>&nbsp;&nbsp;&nbsp;&nbsp;PANEL</a></li>
                          <li><a class="dropdown-item" href="Logout_controller"><span class="glyphicon glyphicon-log-out"></span>&nbsp;&nbsp;&nbsp;&nbsp;SALIR</a></li>
                              
                          <%
                      }
                      else if(sb.getRole().equals("user")){
                          %>
                          <li><a class="dropdown-item" href="../postproperty.jsp"><span class="glyphicon glyphicon-upload" style="font-size: 20px;"></span>&nbsp;&nbsp;&nbsp;&nbsp;PUBLICA TU INMUEBLE</a></li>
                          <li><a class="dropdown-item" href="../profile.jsp"><span class="glyphicon glyphicon-user" style="font-size: 20px;"></span>&nbsp;&nbsp;&nbsp;&nbsp;PERFIL</a></li>
                          <li><a class="dropdown-item" href="../MyProperties.jsp"><span class="glyphicon glyphicon-king" style="font-size: 20px;"></span>&nbsp;&nbsp;&nbsp;&nbsp;MY INMUEBLS</a></li>
                          <li><a class="dropdown-item" href="../Logout_controller"><span class="glyphicon glyphicon-log-out" style="font-size: 20px;"></span>&nbsp;&nbsp;&nbsp;&nbsp;SALIR</a></li>
                    </ul>
                 </ul>
                          <ul class="nav navbar-nav navbar-right">
                              <li><a href="search.jsp"><span class="glyphicon glyphicon-search"></span>&nbsp;Buscar</a></li>
                              <li><a href="contact.jsp">CONTACTO</a></li>
                              <li><a href="faq.jsp">FAQs</a></li>
                          </ul>
                     <%
                        }
                        }
                        else
                        {
                     %>
                     <ul class="nav navbar-nav navbar-right">
                         <li><a href="signup.jsp"><span class="glyphicon glyphicon-user"></span>&nbsp;REGISTRARSE</a></li>
                         <li><a href="signin.jsp"><span class="glyphicon glyphicon-log-in"></span>&nbsp;INGRESAR</a></li>
                         <%
                            }
                         %>
                     </ul>
    </div>
  </div>
</nav>
  
