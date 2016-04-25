<?
	include_once ( $_SERVER[ "DOCUMENT_ROOT" ] . "/admin/classes/utils.php" );
	require( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/inc.config.php" );
	require $_SERVER[ "DOCUMENT_ROOT" ] . "/admin/classes/Reference.php";
	require $_SERVER[ "DOCUMENT_ROOT" ] . "/admin/classes/Reference_image.php";
	
	$debug = false;
	$reference = new Reference();
	$reference_image = new Reference_image();
	$result = $reference->load( $_GET[ "id" ], $debug );
	//print_pre( $result );
	
	// ---- VERIFICATIONS PREALABLES --------------------------------- //
	if ( 1 == 1 ) {
		
		// ---- La référence DOIT être en ligne pour être affiché ici!
		if ( $result[ 0 ][ "online" ] == "non" ) {
			if ( $debug ) echo "1 - Référence OFFLINE!<br>";
			if ( !$debug ) header( "Location: /realisations.php" );
			exit();
		}
		
	}
	// --------------------------------------------------------------- //
	
	// ---- Informations à afficher ---------------------------------- //
	if ( 1 == 1 ) {
		
		// ---- Données de la référence ---- //
		$titre = $result[ 0 ][ "titre" ];
		$description = nl2br( $result[ 0 ][ "description" ] );
		$fichier_pdf = $result[ 0 ][ "fichier_pdf" ];
		
		// ---- Liste des images ----------- //
		if ( 1 == 1 ) {
			unset( $recherche );
			$recherche[ "num_reference" ] = $result[ 0 ][ "id" ];
			$liste_image = $reference_image->getListe( $recherche, $debug );
		}
		
	}
	// --------------------------------------------------------------- //
	
?>

<!doctype html>
<html class="no-js" lang="fr">
	<head>
		<title>Quelques réalisations ESC'Alinox</title>
		<? include( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/header.php" ); ?>
	</head>
	<body class="page">
	
		<? include( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/top.php" ); ?>
		
		<div class="row contenu">
			
			<div class="large-12 columns">
				<h1><?=$titre?></h1>
			</div>
			
			<div class="row">
				<div class="large-6 columns">
					
					<div class="gallery-top">
						<div class="swiper-wrapper">
							
							<?
							// ---- Affichage des vignettes ------------------ //
							if ( !empty( $liste_image ) ) {
								foreach ( $liste_image as $_image ) { 
									echo "<div class='swiper-slide'><a href='/photos/reference/normale" . $_image[ "fichier" ] . "' class='fancybox photo-principale' rel='offre'><img src='/photos/reference/accueil" . $_image[ "fichier" ] . "' alt='' /></a></div>\n";
								}
							}
							// ----------------------------------------------- //
							?>
						
						</div>
						
						<!-- Add Arrows -->
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
					</div>
					<div class="gallery-thumbs">
						<div class="swiper-wrapper">
							
							<?
							// ---- Affichage des vignettes ------------------ //
							if ( !empty( $liste_image ) ) {
								foreach ( $liste_image as $_image ) { 
									echo "<div class='swiper-slide'><img src='/photos/reference/vignette" . $_image[ "fichier" ] . "' alt='' /></div>\n";
								}
							}
							// ----------------------------------------------- //
							?>
							
						</div>
					</div>
				</div>
				
				<div class="large-6 columns">
					<h3>Descriptif</h3>
					<p><?=$description?></p>
					
					<?
					// ---- PDF disponible --------------- //
					if ( $fichier_pdf != '' ) {
						echo "<h3>PDF disponible</h3>\n";
						echo "<p>\n";
						echo "	Télécharger ici notre fichier PDF :\n";
						echo "	<a href='/fichier/pdf" . $fichier_pdf . "' target='_blank' class='pdf'></a>\n";
						echo "</p>\n";
					}
					// ----------------------------------- //
					?>
					
				</div>
			</div>
			
		</div>
		
		<? include( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/footer.php" ); ?>
		<? include( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/scripts.php" ); ?>
		
		<script>
			
			$(document).ready(function(){
				
				$('.menu li:nth-child(2)').addClass('active');
				
				var galleryTop = new Swiper('.gallery-top', {
			        nextButton: '.swiper-button-next',
			        prevButton: '.swiper-button-prev',
			        spaceBetween: 0,
			    });
			    var galleryThumbs = new Swiper('.gallery-thumbs', {
			        spaceBetween: 10,
			        centeredSlides: true,
			        slidesPerView: 'auto',
			        touchRatio: 0.2,
			        slideToClickedSlide: true
			    });
			    galleryTop.params.control = galleryThumbs;
	    		galleryThumbs.params.control = galleryTop;
				
			});
			
		</script>
		
	</body>
</html>
