<html lang="es">
	<head>
		<title>PRÁCTICA MAPS</title>
		<meta charset="utf-8" />
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
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
			<?php vista::generarPieza('menu_lateral');s?>

		<?php echo $contenido; ?>

				<?php basedatos::conectar();

				$hola=basedatos::obtenerUno('SELECT * FROM usuarios');
				var_dump($hola);
				?>



								<code>#include &ltstdio.h&gt</code>

		<!-- PIE DE PÁGINA -->
		<footer id="footer" style="margin-top: 0px">
			<div class="inner">
				<section style="width: 100%">
					<p><a href="http://poliz.usal.es"><span style="width: 10em" class="image right"><img src="images/poli.png" alt="" /></span></a>ESCUELA POLITÉCNICA SUPERIOR DE ZAMORA</br>
					<i>Departamento de Informática y Automática</i></p>
				</section>
				<!--<section>
					<h2>Get in touch</h2>
					<form method="post" action="#">
						<div class="fields">
							<div class="field half">
								<input type="text" name="name" id="name" placeholder="Name" />
							</div>
							<div class="field half">
								<input type="email" name="email" id="email" placeholder="Email" />
							</div>
							<div class="field">
								<textarea name="message" id="message" placeholder="Message"></textarea>
							</div>
						</div>
						<ul class="actions">
							<li><input type="submit" value="Send" class="primary" /></li>
						</ul>
					</form>
				</section>-->
				<!--<section>
					<h2>Follow</h2>
					<ul class="icons">
						<li><a href="#" class="icon style2 fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon style2 fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon style2 fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="#" class="icon style2 fa-dribbble"><span class="label">Dribbble</span></a></li>
						<li><a href="#" class="icon style2 fa-github"><span class="label">GitHub</span></a></li>
						<li><a href="#" class="icon style2 fa-500px"><span class="label">500px</span></a></li>
						<li><a href="#" class="icon style2 fa-phone"><span class="label">Phone</span></a></li>
						<li><a href="#" class="icon style2 fa-envelope-o"><span class="label">Email</span></a></li>
					</ul>
				</section>-->
				
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


