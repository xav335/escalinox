<?php
require_once("StorageManager.php");

class Reference extends StorageManager {

	public function __construct( $id='', $debug=false ){
		if ( $id != '' ) return $this->load( $id, $debug );
	}
	
	public function load( $id, $debug=false ){
		$this->dbConnect();
		
		if ( intval( $id ) <= 0 ) return array();
		$new_array = null;
		
		$requete = "SELECT * FROM `reference` WHERE id = " . $id ;
		if ( $debug ) echo $requete . "<br>";
		$result = mysqli_query( $this->mysqli, $requete );
		
		while( $row = mysqli_fetch_assoc( $result ) ) {
			$new_array[] = $row;
		}
		$this->dbDisConnect();
		return $new_array;
	}
	
	public function gererDonnees( $post, $debug=false ) {
		$datas = $this->load( $post[ "id" ], $debug );
		$modification = ( !empty( $datas ) ) ? true : false;
		
		$val[ "id" ] = intval( $post[ "id" ] );
		$val[ "titre" ] = addslashes( $post[ "titre" ] );
		$val[ "titre_accueil" ] = addslashes( $post[ "titre_accueil" ] );
		$val[ "description" ] = addslashes( $post[ "description" ] );
		$val[ "fichier_pdf" ] = addslashes( $post[ "fichier_pdf" ] );
		$val[ "accueil" ] = ( $post[ "accueil" ] == '1' ) ? '1' : '0';
		$val[ "online" ] = ( $post[ "online" ] == '1' ) ? '1' : '0';
		
		// ---- Modification -------- //
		if ( $modification ) {
			$id = $this->modifier( $val, $debug );
		}
		
		// ---- Ajout --------------- //
		else {
			$id = $this->ajouter( $val, $debug );
		}
		
		return $id;
	}
	
	public function ajouter( $value, $debug=false ) {
		$this->dbConnect();
		$this->begin();
		
		try {
			$sql = "INSERT INTO  `reference`
				( `titre`, `titre_accueil`, `description`, `fichier_pdf`, `accueil`, `online` )
				VALUES (
				'" . $value[ "titre" ] . "',
				'" . $value[ "titre_accueil" ] . "',
				'" . $value[ "description" ] ."',
				'" . $value[ "fichier_pdf" ] ."',
				'" . $value[ "accueil" ] . "',
				'" . $value[ "online" ] . "'
			);";
			
			if ( $debug ) echo $sql . "<br>";
			else {
				$result = mysqli_query( $this->mysqli, $sql );
				
				if ( !$result ) {
					throw new Exception( $sql );
				}
				
				$id_record = mysqli_insert_id( $this->mysqli );
				$this->commit();
			}
		
		} 
		catch (Exception $e) {
			$this->rollback();
			throw new Exception("Erreur Mysql ". $e->getMessage());
			return "errrrrrrooooOOor";
		}
		$this->dbDisConnect();
		return $id_record;
	}
	
	public function modifier( $value, $debug=false ) {
		$this->dbConnect();
		$this->begin();
		
		try {
			$sql = "UPDATE  .`reference` SET";
			$sql .= " `titre` = '" . $value[ "titre" ] . "',";
			$sql .= " `titre_accueil` = '" . $value[ "titre_accueil" ] . "',";
			$sql .= " `description` = '" . $value[ "description" ] . "',";
			if ( $value[ "fichier_pdf" ] != '' ) $sql .= " `fichier_pdf` = '" . $value[ "fichier_pdf" ] . "',";
			$sql .= " `accueil` = '" . $value[ "accueil" ] . "',";
			$sql .= " `online` = '" . $value[ "online" ] . "'";
			$sql .= " WHERE `id` = " . $value[ "id" ] . ";";
			
			if ( $debug ) echo $sql . "<br>";
			else {
				$result = mysqli_query( $this->mysqli, $sql );
				
				if ( !$result ) {
					throw new Exception( $sql );
				}
			
				$this->commit();
			}
		
		} catch (Exception $e) {
			$this->rollback();
			throw new Exception("Erreur Mysql ". $e->getMessage());
			return "errrrrrrooooOOor";
		}
		
		$this->dbDisConnect();
		return $value[ "id" ];
	}
	
	public function supprimer( $id, $debug=false ) {
		$this->dbConnect();
		$this->begin();
	
		try {
			
			// ---- Chargement de la référence ----- //
			//$data = $this->load( $id, $debug );
			//print_pre( $data );
			
			// ---- Suppression de la catégorie ---- //
			$sql = "DELETE FROM `reference`";
			$sql .= " WHERE `id`=" . $id . ";";
			
			if ( $debug ) echo $sql . "<br>";
			else {
				$result = mysqli_query( $this->mysqli, $sql );
				if (!$result) {
					throw new Exception($sql);
				}
				
				$this->commit();
			}
	
		} catch (Exception $e) {
			$this->rollback();
			throw new Exception("Erreur Mysql ". $e->getMessage());
			return "errrrrrrooooOOor";
		}
	
	
		$this->dbDisConnect();
	}
	
	public function setChamp( $champ, $valeur=0, $id=0, $debug=false ) {
		if ( intval( $id ) <= 0 )  return false;
		
		$this->dbConnect();
		$this->begin();
		try {
			$requete = "UPDATE `reference` SET";
			$requete .= " " . $champ . " = '" . $this->traiter_champ( $valeur ) . "'";
			$requete .= " WHERE `id`=" . $id . ";";
			$result = mysqli_query( $this->mysqli, $requete );
			
			if ( $debug ) echo $requete . "<br>";
			else {
				if ( !$result ) {
					throw new Exception( $requete );
				}
		
				$this->commit();
				return false;
			}
			
			return $num_offre;
	
		} catch (Exception $e) {
			$this->rollback();
			throw new Exception("Erreur Mysql ". $e->getMessage());
			return "errrrrrrooooOOor";
		}
	
	
		$this->dbDisConnect();
	}
	
	private function traiter_champ( $texte='' ) {
		$texte = trim( $texte );
		$texte = addslashes( $texte );
		$texte = utf8_decode( $texte );
		
		return $texte;
	}
	
	public function getListe( $tab=array(), $debug=false ) {
		$this->dbConnect();
		
		$champ_souhaite = ( $tab[ "champ" ] != '' ) ? $tab[ "champ" ] : "*";
		$requete = "SELECT " . $champ_souhaite . " FROM `reference`";
		
		if ( $tab[ "where" ] == '' ) {
			$requete .= " WHERE id > 0";
			
			if ( !empty( $tab ) ) {
				foreach( $tab as $champ => $val ) {
					if ( $champ != "champ" && $champ != "order_by" && $champ != "sens" )
						$requete .= " AND " . $champ . " = '" . addslashes( $val ) . "'";
				}
			}
			
			$order_by = ( $tab[ "order_by" ] != "" ) ? $tab[ "order_by" ] : "titre";
			$sens = ( $tab[ "sens" ] != "" ) ? $tab[ "sens" ] : "ASC";
			$requete .= " ORDER BY " . $order_by . " " . $sens;
		}
		else $requete .= $tab[ "where" ];
		
		if ( $debug ) echo $requete . "<br>";
		$result = mysqli_query( $this->mysqli, $requete );
		
		while( $row = mysqli_fetch_assoc( $result ) ) {
			$new_array[] = $row;
		}
		$this->dbDisConnect();
		return $new_array;
	}
	
	public function getInfoReference( $id_reference=0, $debug=false ) {
		if ( $debug ) echo "--- id_reference : " . $id_reference . "<br>";
		
		// ---- On recherche le 1ier reference à afficher ------- //
		if ( $id_reference == '' ) {
			$reference_charge = false;
			
		}
		// ---------------------------------------------------- //
		
		// ---- Référence renseigné --> On le charge ------------ //
		$data = $this->load( intval( $id_reference ), $debug );
		// ---------------------------------------------------- //
		
		return $data;
	}
	
}