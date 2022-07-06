<%-- 
    Document   : index
    Created on : 16 may 2022, 22:49:37
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
        <title>Pet-Shop</title>
        <link href="css/font-awesome.min.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
        <link href="css/style.css" rel="stylesheet" />
        <link href="css/responsive.css" rel="stylesheet" />
        <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">

    </head>
    <body>

        <div class="hero_area">
            <!-- header section strats -->
            <header class="header_section ">
                <div class="">
                    <nav class="navbar navbar-expand-lg custom_nav-container ">
                        <a class="navbar-brand" href="index.html">
                            <img src="images/logo.png" alt="" />
                            <span>
                                Petlor
                            </span>
                        </a>

                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class=""> </span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ">
                                <li class="nav-item active">
                                    <a class="nav-link menu-link" href="index2.jsp"> Inicio </a>
                                </li>


                                <li class="nav-item">
                                    <a class="nav-link menu-link" href="./Controlador?accion=home"> Productos</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link menu-link" href="contactenos.jsp"> Contactenos </a>
                                </li>


                                <ul class="nav-link menu-link btn-group " role="group">
                                    <a style="color: black; cursor: pointer" class="dropdown-toggle" data-toggle="dropdown">
                                        <i class=" "></i> ${logueo}</a>
                                    <div class="dropdown-menu text-center dropdown-menu-right">
                                        <a class="dropdown-item" href="#"><img src="img/user.png" alt="60" height="60"/></a>                        
                                        <a class="dropdown-item" href="#">${user}</a>
                                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#myModal">${correo}</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="Controlador?accion=MisCompras">Mis Compras</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="./Controlador?accion=Salir"> <i class="fas fa-arrow-right"> Salir</i></a>                        
                                    </div>
                                </ul>

                            </ul>
                        </div>
                    </nav>
                </div>

            </header>


            <div class="modal-container">
                <div class="modal modal-close">
                    <p class="cerrar">X</p>
                    <p class="carro">Carrito</p> 
                </div>
            </div>    

            <script src="java/main.js"></script>
            <!-- end header section -->

            <!-- slider section -->
            <section class=" slider_section position-relative">
                <div class="slider_bg_box">
                    <img src="images/slider-bg.jpg" alt="">
                </div>
                <div class="container">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="row">
                                    <div class="col-md-7 col-lg-6">
                                        <div class="detail-box">
                                            <h1>
                                                Bienvenido a
                                                <br>nuestra tienda de mascotas
                                            </h1>
                                            <p>
                                                Pet Lor con los mejores precios en comida para perros, arena para gatos, comida para gatos. 

                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- end slider section -->
        </div>







        <!-- footer section -->     
        <section class="info_section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-3">
                        <div class="info_logo">
                            <div>
                                <a href="">
                                    <img src="images/logo.png" alt="" />
                                    <span>
                                        Petlor
                                    </span>
                                </a>
                            </div>
                            <p>

                            </p>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="info_links ">

                            <div class="info_contact">
                                <div class="contact_link_box">
                                    <a href="">
                                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                                        <span>
                                            Localizacion
                                        </span>
                                    </a>
                                    <a href="">
                                        <i class="fa fa-phone" aria-hidden="true"></i>
                                        <span>
                                            Telefono 954 673 333
                                        </span>
                                    </a>
                                    <a href="">
                                        <i class="fa fa-envelope" aria-hidden="true"></i>
                                        <span>
                                            PetLor@gmail.com
                                        </span>
                                    </a>
                                </div>
                            </div>
                            <div class="info_social">
                                <a href="">
                                    <i class="fa fa-facebook" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-twitter" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-linkedin" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-instagram" aria-hidden="true"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="info_insta">
                            <h5>
                                INFORMACION
                            </h5>
                            <p class="pr-0 pr-md-4 pr-md-5">
                                Somos una tienda de productos para mascotas online que nació como respuesta a la 
                                falta de una gran variedad de accesorios para mascotas innovadores y de primerísima calidad en el mercado peruano
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="pl-0 pl-lg-5 pl-md-4">
                            <h5>
                                NUESTRA TIENDA
                            </h5>
                            <p>
                                Donec odio. Quisque volutpat mattis eros.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec
                                odio. Quisque volutpat mattis eros
                            </p>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end footer section -->  
        <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="js/index.js" type="text/javascript"></script>

        <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="container col-lg-9">                   
                    <div class="modal-content">                   
                        <div class="pr-2 pt-1">                         
                            <button type="button" class="close" data-dismiss="modal">
                                <span aria-hidden="true">&times;</span>
                            </button>                    
                        </div>
                        <div class="text-center">                         
                            <img src="img/user.png" width="100" height="100">                         
                        </div>
                        <div class="modal-header text-center">                      
                            <ul class="nav nav-pills">                           
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="pill" href="#pills-iniciar">Iniciar Sesion</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="pill" href="#pills-registrar">Registrarse</a>
                                </li>                          
                            </ul>  
                        </div>
                        <div class="modal-body"> 
                            <div class="tab-content" id="pills-tabContent">
                                <!-- Iniciar Session -->
                                <div class="tab-pane fade show active" id="pills-iniciar" role="tabpanel">
                                    <form action="Controlador">
                                        <div class="form-group">
                                            <label>Email address</label>
                                            <input type="email" name="txtemail" class="form-control" placeholder="email@example.com">
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input type="password" name="txtpass" class="form-control" placeholder="">
                                        </div>                                   
                                        <button type="submit" name="accion" value="Validar" class="btn btn-outline-danger btn-block">Iniciar</button>
                                    </form>
                                </div>
                                <!-- Registrarse -->
                                <div class="tab-pane fade" id="pills-registrar" role="tabpanel">
                                    <form action="Controlador">                               
                                        <div class="form-group">
                                            <label>Nombres</label>
                                            <input type="text" name="txtnom" class="form-control" placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label>Dni</label>
                                            <input type="text" maxlength="8" name="txtdni" class="form-control" placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label>Direccion</label>
                                            <input type="text" name="txtdire" class="form-control" placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label>Email address</label>
                                            <input type="email" name="txtemail" class="form-control" placeholder="email@example.com">
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input type="password" name="txtpass" class="form-control" placeholder="">
                                        </div>                                  
                                        <button type="submit" name="accion" value="Registrar" class="btn btn-outline-danger btn-block">Crear Cuenta</button>
                                    </form>
                                </div>                          
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>   


    </body>
</html>
