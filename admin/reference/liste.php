<? include_once ( $_SERVER[ "DOCUMENT_ROOT" ] . "/admin/inc-auth-granted.php" );?>
<? include_once ( $_SERVER[ "DOCUMENT_ROOT" ] . "/admin/classes/utils.php" );?>
<? 
	require( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/inc.config.php" );
	require $_SERVER[ "DOCUMENT_ROOT" ] . "/admin/classes/Reference.php";
	require $_SERVER[ "DOCUMENT_ROOT" ] . "/admin/classes/Reference_image.php";
	
	$debug = false;
	$reference = new Reference();
	$reference_image = new Reference_image();
	
	// ---- Liste des références ------------------ //
	if ( 1 == 1 ) {
		unset( $recherche );
		$liste_reference = $reference->getListe( $recherche, $debug );
	}
	// -------------------------------------------- //

	if ( empty( $liste_reference ) ) {
		$message = 'Aucun enregistrement';
	} 
	else {
		$message = '';
	}

?>

<!doctype html>
<html class="no-js" lang="en">
	<head>
		<? include_once $_SERVER[ "DOCUMENT_ROOT" ] . "/admin/inc-meta.php";?>
	</head>
	
	<body>	
		<? require_once $_SERVER[ "DOCUMENT_ROOT" ] . "/admin/inc-menu.php";?>
	
		<div class="container">
			
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12">
	
					<? 
					if ( !empty( $liste_reference ) ) {
						$i=0;
						
						echo "<table class='table table-hover table-bordered table-condensed table-striped' >\n";
						echo "<thead>\n";
						echo "	<tr>\n";
						echo "		<th class='col-md-2' style=''>Titre</th>\n";
						echo "		<th class='col-md-7' style=''>Description</th>\n";
						echo "		<th class='col-md-1' style=''>Photo</th>\n";
						echo "		<th class='col-md-1' style=''>Online</th>\n";
						echo "		<th class='col-md-1' colspan='2' style=''>Actions</th>\n";
						echo "	</tr>\n";
						echo "</thead>\n";
						echo "<tbody>\n";
						
						foreach ( $liste_reference as $value ) {
							$i++;
							
							// ---- Chargement de l'image par défaut
							$image_defaut = $reference_image->getImageDefaut( $value[ "id" ], "vignette", $debug );
							
							$classe_affichage = ( $i % 2 != 0 ) ? "info" : "";
							$description = couper_correctement( $value[ "description" ], 80 );
							if ( strlen( $value[ "description" ] ) > 80 ) $description .= " ...";
							$image_ok = ( $image_defaut != 'http://www.placehold.it/1200x800/EFEFEF/171717&text=:(' ) ? 'check' : 'vide';
							$online = ( $value[ "online" ] == '1' ) ? 'check' : 'vide';
							
							echo "<tr class='" . $classe_affichage . "'>\n";
							echo "	<td>" . $value[ "titre" ] . "</td>\n";
							echo "	<td>" . $description . "</td>\n";
							echo "	<td align='center'><img src='../img/" . $image_ok . ".png' width='30' ></td>\n";
							echo "	<td align='center'><img src='../img/" . $online . ".png' width='30' ></td>\n";
							echo "	<td><a href='./edition.php?id=" . $value[ "id" ] . "'><img src='../img/modif.png' width='30' alt='Modifier' ></a></td>\n";
							echo "	<td>\n";
							echo "		<div style='display: none;' class='supp" . $value[ "id" ] . " alert alert-warning alert-dismissible fade in' role='alert'>\n";
							echo "			<button type='button' class='close' aria-label='Close' onclick=\"$('.supp" . $value[ "id" ] . "').css('display', 'none');\"><span aria-hidden='true'>×</span></button>\n";
							echo "			<strong>Voulez vous vraiment supprimer ?</strong>\n";
							echo "			<button type='button' class='btn btn-danger' onclick=\"location.href='./traitement.php?reference=news&action=delete&id=" . $value[ "id" ] . "'\">Oui !</button>\n";
							echo "		</div>\n";
							echo "		<img src='../img/del.png' width='20' alt='Supprimer' onclick=\"$('.supp" . $value[ "id" ] . "').css('display', 'block');\">\n";
							echo "	</td>\n";
							echo "</tr>\n";
						}
						
						echo "</tbody>\n";
						echo "</table>\n";
					}
					?>
	
					<h3><?=$message?></h3>
				</div>
			</div>
		</div>
	</body>
</html>


