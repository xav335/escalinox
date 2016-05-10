<?
	include_once ( $_SERVER[ "DOCUMENT_ROOT" ] . "/admin/classes/utils.php" );
	require( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/inc.config.php" );
	require $_SERVER[ "DOCUMENT_ROOT" ] . "/admin/classes/Reference.php";
	require $_SERVER[ "DOCUMENT_ROOT" ] . "/admin/classes/Reference_image.php";
	
	$debug = false;
	$reference = new Reference();
	$reference_image = new Reference_image();
	
	// ---- Liste des références ------------------ //
	if ( 1 == 1 ) {
		unset( $recherche );
		$recherche[ "online" ] = '1';
		$liste_reference = $reference->getListe( $recherche, $debug );
	}
	// -------------------------------------------- //
	
	//print_pre( $liste_reference );
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
			<h1>
				Quelques réalisations<br/>
				ESC'Alinox
			</h1>
			
			<?
			// ---- Affichage des réalisations -------------- //
			if ( !empty( $liste_reference ) ) {
				$cpt = 1;
				
				echo "<div class='tabs-content'>\n";
				echo "	<div class='content active' id='panel1'>\n";
				
				foreach( $liste_reference as $_reference ) {
					//print_pre( $_reference );
					$id = $_reference[ "id" ];
					$titre = $_reference[ "titre_accueil" ];
					$image_defaut = $reference_image->getImageDefaut( $id, "accueil", $debug );
					
					echo "<div class='large-4 medium-4 small-12 columns' style='margin-bottom:20px;'>\n";
					echo "	<center><h3>" . $titre . "</h3></center>\n";
					echo "	<center><a href='/realisation_detail.php?id=" . $id . "'><img style='height:250px' src='" . $image_defaut . "' alt=\"" . $titre . "\" /></a></center>\n";
					echo "</div>\n";
					
					$cpt++;
					if ( $cpt >= 4 ) {
						echo "<div style='clear:both;'></div>\n";
						$cpt = 1;
					}
				}
				
				echo "	</div>\n";
				echo "</div>\n";
			}
			// ---------------------------------------------- //
			?>
					
		</div>
		
		<? include( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/footer.php" ); ?>
		<? include( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/scripts.php" ); ?>
		
		<script>
			
			$(document).ready(function(){
				$('.menu li:nth-child(2)').addClass('active');
			});
			
		</script>
		
	</body>
</html>
