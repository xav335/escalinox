<? 
	include_once '../../inc/inc.config.php';
	include_once '../classes/utils.php';
	require '../classes/ImageManager.php';
	require '../classes/Reference.php';
	require '../classes/Reference_image.php';
	session_start();
	
	$debug = false;
	if ( $debug ) print_pre( $_POST );
	
	$reference = new Reference();
	$reference_image = new Reference_image();
	$imageManager = New ImageManager();
	
	// ---- Security ---------------------------------------------------------- //
	if ( !isset( $_SESSION[ "accessGranted" ] ) || !$_SESSION[ "accessGranted" ] ) {
		$result = $storageManager->grantAccess($_POST[ "login" ], $_POST[ "mdp" ]);
		if (!$result){
			header('Location: /admin/?action=error');
		} else {
			$_SESSION[ "accessGranted" ] = true;
		}
	}
	// ------------------------------------------------------------------------ //
	
	
	// ---- Forms processing -------------------------------------------------- //
	if ( $_POST[ "mon_action" ] != '' ) {
		
		// ---- Gestion des références ---------------------------------------- //
		if ( $_POST[ "mon_action" ] == "gerer" ) {
			
			// ---- Traitement des données ------------------ //
			if ( 1 == 1 ) {
				$id = $reference->gererDonnees( $_POST, $debug );
			}
			// ---------------------------------------------- //
			
			// ---- Gestion des images de la référence --------------------------- //
			if ( !empty( $_POST[ "mes_images" ] ) ) {
				//print_pre( $_POST[ "mes_images" ] );
				
				$cpt = 1;
				foreach( $_POST[ "mes_images" ] as $_image ) {
					$source = $_SERVER['DOCUMENT_ROOT'] . $_image;
					if ( $debug ) echo "<br>--- source : " . $source . "<br>";
					
					$filenameDest = $imageManager->fileDestManagement( $source, $id );
					if ( $debug ) echo "--- filenameDest : " . $filenameDest . "<br>";
					
					// ---- Création des différentes images ------------ //
					if ( 1 == 1 ) {
						
						// ---- Image de taille "normale" ---- //
						$destination = $_SERVER['DOCUMENT_ROOT'] . '/photos/reference/normale' . $filenameDest;
						if ( $debug ) echo "--- destination : " . $destination . "<br>";
						$imageManager->imageResize( $source, $destination, 1200, 800, null );
						
						// ---- Image de taille "accueil" ---- //
						$destination = $_SERVER['DOCUMENT_ROOT'] . '/photos/reference/accueil' . $filenameDest;
						if ( $debug ) echo "--- destination : " . $destination . "<br>";
						$imageManager->imageResize( $source, $destination, 303, 227, null );
						
						// ---- Image de taille "vignette" --- //
						$destination = $_SERVER['DOCUMENT_ROOT'] . '/photos/reference/vignette' . $filenameDest;
						if ( $debug ) echo "--- destination : " . $destination . "<br>";
						$imageManager->imageResize( $source, $destination, 97, 99, ZEBRA_IMAGE_CROP_CENTER );
					}
					// ------------------------------------------------- //
					
					// ---- Cette référence a-t-elle une image par défaut?
					if ( 1 == 1 ) {
						$image_defaut = $reference_image->getImageDefaut( $id, "normale", $debug );
						if ( $debug ) echo "Image par défaut : " . $image_defaut . "<br>";
						$has_imageDefaut = ( $image_defaut != "http://www.placehold.it/1200x800/EFEFEF/171717&text=:(" ) ? true : false;
					}
					// ------------------------------------------------- //
					
					// ---- Enregistrement de l'image ------------------ //
					unset( $val );
					$val[ "num_reference" ] = $id;
					$val[ "fichier" ] = $filenameDest;
					$val[ "defaut" ] = ( $cpt == 1 && !$has_imageDefaut ) ? 'oui' : 'non';
					$reference_image->ajouter( $val, $debug );
					// ------------------------------------------------- //
					
					$cpt++;
				}
			}
			// ------------------------------------------------------------------- //
			
			// ---- Gestion du PDF ----------------------------------------------- //
			if ( $_POST[ "url1_changement" ] != '' ) {
				if ( $_POST[ "url1" ] != '' ) {
					if ( $debug ) echo "<br>Gestion du PDF!<br>";
					$source = $_SERVER['DOCUMENT_ROOT'] . $_POST[ "url1" ];
					$filenameDest = $imageManager->fileDestManagement( $source, $id );
					if ( $debug ) echo "--- filenameDest : " . $filenameDest . "<br>";
					
					$destination = $_SERVER['DOCUMENT_ROOT'] . '/fichier/pdf' . $filenameDest;
					if ( $debug ) echo "--- destination : " . $destination . "<br>";
					
					// ---- Copie du fichier ----------- //
					copy( $source, $destination );
				}
				
				// ---- MAJ de l'enregistrement ---- //
				$reference->setChamp( "fichier_pdf", $filenameDest, $id, $debug );
			}
			// ------------------------------------------------------------------- //
				
			// ---- Redirection après traitement ------------ //
			if ( 1 == 1 ) {
				
				// ---- Modification... ---- //
				if ( $_POST[ "id" ] != '' ) $page_redirection = "/admin/reference/edition.php?id=" . $id;
				
				// ---- Ajout... ----------- //
				else $page_redirection = "/admin/reference/liste.php";
				
				if ( $debug ) echo "Redirection vers " . $page_redirection;
				else header( "Location: " . $page_redirection );
				exit();
			}
			// ---------------------------------------------- //
			
		} 
		// ------------------------------------------------------------------------ //
		
		// ---- Définition d'une image par défaut --------------------------------- //
		if ( $_POST[ "mon_action" ] == "par defaut" ) {
			
			// ---- Liste des autres images de l'offre ---- //
			unset( $recherche );
			$recherche[ "num_reference" ] = $_POST[ "id" ];
			$liste_image = $reference_image->getListe( $recherche, $debug );
			
			// ---- On passe toutes les autres à "non" ---- //
			if ( !empty( $liste_image ) ) {
				foreach( $liste_image as $_image ) {
					$reference_image->setChamp( "defaut", 'non', $_image[ "num_image" ], $debug );
				}
			}
			
			$reference_image->setChamp( "defaut", 'oui', $_POST[ "num_image" ], $debug );
			if ( !$debug ) header( "Location: /admin/reference/edition.php?id=" . $_POST[ "id" ] );
		}
		// ------------------------------------------------------------------------ //
		
		// ---- Suppression d'une image ------------------------------------------- //
		if ( $_POST[ "mon_action" ] == "supprimer image" ) {
			$reference_image->supprimer( $_POST[ "num_image" ], $debug );
			if ( !$debug ) header( "Location: /admin/reference/edition.php?id=" . $_POST[ "id" ] );
		}
		// ------------------------------------------------------------------------ //
	
	}
	// ------------------------------------------------------------------------ //
	
	
	// ---- GET GET GET ------------------------------------------------------- //
	else if ( $_GET[ "action" ] == 'delete' ) {
		try {
			$reference = new Reference();
			$result = $reference->supprimer( $_GET[ "id" ], $debug );
			
			if ( !$debug ) header( "Location: /admin/reference/liste.php" );
		} 
		catch (Exception $e) {
			echo 'Erreur contactez votre administrateur <br> :',  $e->getMessage(), "\n";
			$goldbook = null;
			exit();
		}
	}
	// ------------------------------------------------------------------------ //
	
	
	// ---- ERREUR!!! --------------------------------------------------------- //
	else {
		header('Location: /admin/');
	}
	// ------------------------------------------------------------------------ //
?>