<?
	include_once ( $_SERVER[ "DOCUMENT_ROOT" ] . "/admin/classes/utils.php" );
	require( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/inc.config.php" );
	require $_SERVER[ "DOCUMENT_ROOT" ] . "/admin/classes/News.php";
	
	$debug = false;
	$news = new News();
	
	// ---- Liste des actualités en ligne ---- //
	$liste_actualite = $news->newsList( $debug );
?>

<!doctype html>
<html class="no-js" lang="fr">
	<head>
		<title>Actualités ESC'Alinox</title>
		<? include( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/header.php" ); ?>
	</head>
	
	<body class="page">
	
		<? include( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/top.php" ); ?>
		
		<div class="row contenu">
				
		<h1>
			Actualités<br/>
			ESC'Alinox
		</h1>
		
		<?
		// ---- Affichage des actualités ---------------------------------- //
		if ( !empty( $liste_actualite ) ) {
			foreach( $liste_actualite as $_actualite ) {
				$id_news = $_actualite[ "id_news" ];
				$image = ( $_actualite[ "image1" ] != '' )
					? "<a href='/photos/news/normale" . $_actualite[ "image1" ] . "' class='fancybox' rel='offre'><img src='/photos/news/liste" . $_actualite[ "image1" ] . "' alt='' /></a>"
					: "<img src='/img/marker.png' alt='' />";
				$date_news = traitement_datetime_affiche( $_actualite[ "date_news" ] );
				
				echo "<a name='" . $id_news . "'></a>\n";
				echo "<div class='row actu'>\n";
				echo "	<div class='large-4 medium-4 small-12 columns'>" . $image . "</div>\n";
				echo "	<div class='large-8 medium-8 small-12 columns'>\n";
				echo "		<h2>" . $_actualite[ "titre" ] . "</h2>\n";
				echo "		<h3>Le " . $date_news . "</h3>\n";
				echo "		<p>" . $_actualite[ "contenu" ] . "</p>\n";
				echo "	</div>\n";
				echo "</div>\n";
			}
		}
		// ---------------------------------------------------------------- //
		?>
		
		<? include( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/footer.php" ); ?>
		<? include( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/scripts.php" ); ?>
		
		<script>
			
			$(document).ready(function(){
				$('.menu li:nth-child(3)').addClass('active');
			});
			
		</script>
		
	</body>
</html>
