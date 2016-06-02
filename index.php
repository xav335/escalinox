<?
	include_once ( $_SERVER[ "DOCUMENT_ROOT" ] . "/admin/classes/utils.php" );
	require( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/inc.config.php" );
	require $_SERVER[ "DOCUMENT_ROOT" ] . "/admin/classes/News.php";
	
	$debug = false;
	$news = new News();
	
	// ---- Liste des actualités en ligne ---- //
	if ( 1 == 1 ) {
		$liste_actualite = $news->newsValidGet( $debug );
		$contenu_actualite = '';
		
		if ( !empty( $liste_actualite ) ) {
			
			$contenu_actualite .= "<div class='homeactu'>\n";
			$contenu_actualite .= "	<a class='close'><img src='/img/bt-close.png' alt='' title='Fermer' /></a>\n";
			$contenu_actualite .= "	<h2>Actualité</h2>\n";
			
			foreach( $liste_actualite as $_actualite ) {
				$id_news = $_actualite[ "id_news" ];
				$titre = ( $_actualite[ "titre" ] );
				$accroche = couper_correctement( $_actualite[ "contenu" ], 100, ' ', false );
				if ( strlen( $_actualite[ "contenu" ] ) > 100 ) $accroche .= " ...";
				$image = ( $_actualite[ "image1" ] != '' && file_exists( $_SERVER[ "DOCUMENT_ROOT" ] . "/photos/news/thumbs" . $_actualite[ "image1" ] ) )
					? "/photos/news/thumbs" . $_actualite[ "image1" ]
					: "/img/homeactu.jpg";
				
				$contenu_actualite .= "	<img src='" . $image . "' alt='' />\n";
				$contenu_actualite .= "	<h3>" . $titre . "</h3>\n";
				$contenu_actualite .= "	<p>" . $accroche . "</p>\n";
				$contenu_actualite .= "	<p text-align='right'><a href='/actualites.php#" . $id_news . "'>Lire la suite...</a></p>\n";
			
				break;
			}
			
			$contenu_actualite .= "</div>\n";
		}
	}
	// --------------------------------------- //
	
?>

<!doctype html>
<html class="no-js" lang="fr">
	<head>
		<title>ESC'Alinox - Chaudronnerie - Soudure</title>
		<? include( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/header.php" ); ?>
	</head>
	
	<body>
	
		<? include( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/top.php" ) ?>
		<? include( $_SERVER[ "DOCUMENT_ROOT" ] . "/slider.php" ); ?>
		
		<div class="row contenu">
	
			<div class="large-8 medium-8 small-12 columns">
				<h1>
					Présentation<br/>
					de la société ESC'Alinox
				</h1>
			</div>
			<div class="large-8 medium-8 small-12 columns">
				<p class="rouge"> Située à Vayres, en Gironde, l'entreprise familiale ESC’ALINOX est spécialisée dans la <b>chaudronnerie</b>, la <b>tuyauterie</b> et la <b>soudure</b>.</p>
				<p>Forts de quarante ans d’expérience, nous mettons à dispositions nos services pour la fabrication à l’unité ou en grande série de pièces inox, acier et alu. Nous fabriquons au quotidien des ensembles chaudronnés, dans divers domaines de l’industrie.</p>
                <p>Nous assemblons également de la mécano-soudure par tout type de procédés (TIG, MAG, MIG, ARC, brasure…) et assurons la maintenance industrielle.</p>
                <p>Nous réalisons aussi des agencements de boutiques créés sur plan et effectuons la fabrication sur-mesure de vos verrières, portails, portes, garde-corps, mains-courantes, escaliers, passerelles, meubles...</p>
                <p>La précision, le savoir-faire et la réactivité d’ESC’alinox ont toujours été les idées motrices d’un engagement total auprès de nos partenaires, avec une parfaite maîtrise des techniques de pointe liées à la fabrication : découpe (cisaille 3mx10), mise en forme, pliage (plieuse 3m100T), soudure, usinage, montage.</p>
                <p>L'équipe ESC’alinox est à votre écoute, que vous soyez professionnel, particulier, industrie.</p>
                
                <h2>SECTEUR D’ACTIVITE</h2>
                <ul class="disc">
                    <li>Industrie (vinicole, tuyauterie, agro-alimentaire, pharmaceutique, …)</li>
                    <li> Architecture – BTP</li>
                    <li>Mécanique – Métallurgie</li>
                    <li>Construction navale, ferroviaire et aéronautique</li>
                    <li>Automobile</li>
                    <li>Menuiserie et mobilier métallique </li>
                </ul>
                
			</div>
			<div class="large-4 medium-4 small-12 columns">
				<img src="img/photo-escalinox.jpg" alt="" class="border" />
			</div>
			
		</div>
		
		<? include( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/footer.php" ); ?>
		<? include( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/scripts.php" ); ?>
		
		<script>
			$(document).ready(function(){
				$('.menu li:first-child').addClass('active');
			});
		</script>
		
	</body>
</html>
