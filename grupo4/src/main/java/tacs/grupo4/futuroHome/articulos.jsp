<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  	<meta charset="utf-8">
    <title>Toma y Daca</title>	
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
  	<meta name="description" content="Pagina dedicada para hacer Trueques de productos">
    <link rel="shortcut icon" href="Alguna url para un icono">
    
    <link href="bootstrap-3.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap-3.2.0/docs/examples/offcanvas/offcanvas.css" rel="stylesheet">
  </head>

  <body>
    <div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Toma y Daca</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class=""><a href="#">AlgunLinkAAlgo</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
	          <!-- El active solo esta para tomarlo de jemplo -->
	          <li class="active"><a href="./">Aceptacion a Trueques</a></li>
	          <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown">NombreUsuario <span class="caret"></span></a>
		           <ul class="dropdown-menu" role="menu">
		             <li><a href="#">Perfil</a></li>
		             <li><a href="articulos.jsp">Mis Articulos</a></li>
		             <li><a href="#">Cerrar Sesion</a></li>
		             <li><a href="#">Hacer algo mas</a></li>
		           </ul>
        	  </li>
          </ul>
        </div><!-- /.nav-collapse -->
      </div><!-- /.container -->
    </div><!-- /.navbar -->

	<div class="container">

      <div class="row row-offcanvas row-offcanvas-right">

        <div class="col-xs-12 col-sm-9">
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>
          <div class="jumbotron">
            <h1>NombreUsuario</h1>
            <p>Agregar algunos datos de cantidad de Articulos vendidos o algo como para rellenar</p>
          </div>
          
          <div class="row">
            <div class="col-6 col-sm-6 col-lg-4">
              <h4>Camisa blanca X</h4>
              <img src="..." alt="lalala" class="img-thumbnail" width="100" height="100">
			  <p><button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal"> 
  			  Ver Detalles
  			  </button></p>
            </div>
            <div class="col-6 col-sm-6 col-lg-4">
              <h4>Medias de Futbol</h4>
              <img src="..." alt="lalala" class="img-thumbnail" width="100" height="100">
			  <p><button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal"> 
  			  Ver Detalles
  			  </button></p>
            </div>
            <div class="col-6 col-sm-6 col-lg-4">
              <h4>el nokia 1100</h4>
              <img src="..." alt="lalala" class="img-thumbnail" width="100" height="100">
			  <p><button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal"> 
  			  Ver Detalles
  			  </button></p>
            </div>
            <div class="col-6 col-sm-6 col-lg-4">
              <h4>Tablet Samnsug sarasa</h4>
              <img src="..." alt="lalala" class="img-thumbnail" width="100" height="100">
			  <p><button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal"> 
  			  Ver Detalles
  			  </button></p>
            </div>
		  </div>
		</div>
	       	<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
	        <div><h4>Articulos</h4></div>
	          <div class="list-group">
	            <a href="#" class="list-group-item active">Actuales</a>
	            <a href="#" class="list-group-item">Intercambiados</a>
	          </div>
      	  </div><!--/row-->
	  	</div>
      <hr>
      <footer>
        <p>� Grupo4, TACS2014-2C</p>
      </footer>

		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		        <h4 class="modal-title" id="myModalLabel">Mesa de Madera</h4>
		      </div>
		      <div class="modal-body">
				<div class="paragraphs">
				  <div class="row">
				    <div class="col-md-5">
				      <img src="..." alt="lalala" class="img-thumbnail" width="150" height="150">
				    </div>
				    <div class="col-md-6 well">
				    Mesa redonde de madera, 1.60m x 1.00m x 0.70m y sigo escribiendo para ver como queda una descripcion de producto grandessssss
				    </div>
				  </div>
				  <p>Intercambio por un juego de 6 sillas de plastico y sigo escribiendo para ver como queda una descripcion de trueque grande</p>
				</div>
		        
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
		        <button type="button" class="btn btn-primary">Solicitar Trueque</button>
		      </div>
		    </div>
		  </div>
		</div>



    </div>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="bootstrap-3.2.0/dist/js/bootstrap.min.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="bootstrap-3.2.0/docs/assets/js/ie10-viewport-bug-workaround.js"></script>
    <script src="bootstrap-3.2.0/docs/assets/js/ie-emulation-modes-warning.js"></script>
    <script src="bootstrap-3.2.0/docs/examples/offcanvas/offcanvas.js"></script>
  </body>
</html>