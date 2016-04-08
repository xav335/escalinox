<!doctype html>
<html class="no-js" lang="fr">
	<head>
		<title>Contactez ESC'Alinox</title>
		<?php include( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/header.php" ); ?>
	</head>
<body class="page">

<?php include( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/top.php" ); ?>
	
	<div class="row contenu">

		<div class="large-12 columns">
			
			<h1>
				Contactez<br/>
				ESC'Alinox
			</h1>
			
		</div>
			
		<div class="large-4 medium-6 small-12 columns">
			<h3>ESC'Alinox</h3>
			<p>SARL 520 929 365</p>
			<p>
				11 Camparian-Nord<br/>
				33870 Vayres
			</p>
			<p>
				Tél. +33 5 57 50 25 56
			</p>
			<p>Email : contact(at)escalinox.fr</p>
		</div>
		<div class="large-8 medium-6 small-12 columns">
			<form class="row contact" method="post">
				<div class="large-6 medium-12 columns">
					<input type="text" name="prenom" placeholder="Votre prénom" />						
				</div>
				<div class="large-6 medium-12 columns">
					<input type="text" name="nom" placeholder="Votre nom" />
				</div>
				<div class="large-12 columns">
					<input type="text" name="adresse" placeholder="Votre adresse">
				</div>
				<div class="large-4 medium-5 small-12 columns">
					<input type="text" name="codepostal" placeholder="Code postal" />						
				</div>
				<div class="large-8 medium-7 small-12 columns">
					<input type="text" name="ville" placeholder="Ville" />
				</div>
				<div class="large-6 medium-12 columns">
					<input type="tel" name="telephone" placeholder="Votre n° de téléphone" />						
				</div>
				<div class="large-6 medium-12 columns">
					<input type="email" name="email" placeholder="Votre e-mail" />
				</div>
				<div class="large-12 columns">
					<textarea name="message" placeholder="Votre message"></textarea>
				</div>
				<div class="large-12 columns">
					<input type="submit" value="Envoyer" />
				</div>
				<div class="large-12 columns">
					<p class="rouge">
						Conformément à la loi Informatique et Libertés en date du 6 janvier 1978, vous disposez d'un droit d'accès, de rectification, de modification et de suppression des données qui vous concernent. Vous pouvez exercer ce droit en nous envoyant un courrier électronique ou postal.
					</p>
				</div>
			</form>
		</div>
		
	</div>
	
<?php include( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/footer.php" ); ?>

<?php include( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/scripts.php" ); ?>
	
	<script>
		$(document).ready(function(){
			$('.menu li:last-child').addClass('active');
		});
	</script>
	
</body>
</html>
