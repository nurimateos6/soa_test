<html lang="es">
	<head>
		<title>Test SOA</title>
		<meta charset="utf-8" />
		<meta charset="utf-8" />
		<link rel="mask-icon" href="images/icon.svg" color="#293dff">
		<link rel="icon" href="images/ico.png">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<script src="https://code.jquery.com/jquery-1.12.4.js" type="text/javascript"></script>

		<!-- HIGHLIGHT.JS -->
		<!-- <link rel="stylesheet" href="assets/highlight/magula.css"> -->
		<link rel="stylesheet" href="assets/highlight/monokai-sublime.css">
		<script type="text/javascript" src="funciones/highlight.pack.js"></script>
		<script>hljs.initHighlightingOnLoad();</script>
		<!-- FIN highlight.js -->

 <style>
      /* Set the size of the div element that contains the map */
      #map {
        height: 400px;  /* The height is 400 pixels */
        width: 100%;  /* The width is the width of the web page */
       }
    </style>

	</head>

	<body class="is-preload">
		<noscript><!-- COMPRUEBA QUE JavaScript ESTÁ ACTIVADO -->
		<link rel="stylesheet" href="assets/css/noscript.css" />
		<h1>ACTIVA JavaScript PARA QUE FUNCIONE</h1>
		<h2>Para un funcionamiento adecuado se necesita JavaScipt, actívelo en las opciones de su navegador</h2>
		</noscript>

		<!-- CONTENEDOR -->
		<div id="wrapper">
			<!-- HEADER -->
			<header id="header">
					<!-- Logo -->
						<div>
							<a  href="?a=inicio" class="logo">
							<span class="symbol"><img src="images/diana.svg" alt="" /></span>
						TU TEST</a></div>
					<!-- Nav -->
					<div class="inner">

	<nav>
		<ul>
			<li><a href="#menu">Menu</a></li>
		</ul>
	</nav>
</div>
	</header>
			<?php vista::generarPieza('menu_lateral');?>

		<?php echo $contenido; ?>

				<?php basedatos::conectar();

				// $hola=basedatos::obtenerUno('SELECT * FROM usuarios');
				?>




		<!-- PIE DE PÁGINA -->
		<footer id="footer" style="margin-top: 0px">
			<div class="inner">
				<section style="display:inline-block; width: 100%">
					<p><a href="http://poliz.usal.es"><span style="width: 10em" class="image right"><img src="images/poli.png" alt="" /></span></a>ESCUELA POLITÉCNICA SUPERIOR DE ZAMORA</br>
					<i>Departamento de Informática y Automática</i></p>
				</section>

				<section>
					<h2>github</h2>
					<ul class="icons">
						
						<li><a href="https://github.com/rubenperacuni/test" class="icon style2 fa-github"><span class="label">GitHub</span></a></li>
					
					</ul>
				</section>
				
			</div>
		</footer>
		</div><!-- FIN CONTENEDOR -->

		<!-- Scripts -->
		<script src="./assets/js/jquery.min.js"></script>
		<script src="./assets/js/browser.min.js"></script>
		<script src="./assets/js/breakpoints.min.js"></script>
		<script src="./assets/js/util.js"></script>
		<script src="./assets/js/main.js"></script>

	</body>
		<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/languages/1C.min.js"></script> -->

</html>




