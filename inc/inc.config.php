<?
	//ini_set( 'display_errors', 1 );
	//error_reporting( E_ALL | ~E_DEPRECATED | E_STRICT );
	
	// ---- Définition des constantes du site ------------------------ //
	//echo $_SERVER[ "DOCUMENT_ROOT" ] . "<br>";
	switch( $_SERVER[ "DOCUMENT_ROOT" ] ) {
		
		// ---- Serveur local Franck -------- //
		case "/var/www/escalinox" :
			$localhost = "localhost";
			$dbname = "escalinox";
			$user = "escalinox";
			$mdp = "escalinox";
			break;
		
		// ---- Serveur PRE-PROD ------------ //
		case "/home/web/escalinox" :
			$localhost = "localhost";
			$dbname = "escalinox";
			$user = "escalinox";
			$mdp = "escalinox33";
			break;
		
		// ---- Serveur PROD ---------------- //
		case "/var/www/escalinox.fr" :
			$localhost = "localhost";
			$dbname = "escalinox";
			$user = "escalinox";
			$mdp = "escalinox33";
			break;
		
		default:
		    $localhost = "localhost";
			$dbname = "escalinox";
			$user = "escalinox";
			$mdp = "escalinox33";
		    break;
	}
		
	define( "DBHOST",	$localhost );
	define( "DBNAME",	$dbname );
	define( "DBUSER",	$user );
	define( "DBPASSWD", $mdp );
	
	define( "MAILCUSTOMER", 	"contact@escalinox.fr" );
	define( "MAILNAMECUSTOMER", "ESC Alinox" );
	define( "URLSITEDEFAULT", 	"http://www.escalinox.com/" );
	define( "FACEBOOK_LINK", 	"https://www.facebook.com/Escalinox-247500082282845" );
	define( "DAILYMOTION_LINK", "#" );
	
	// ---- Mail d'envoi
	//define( "MAIL_TEST", 	"fjavi.gonzalez@gmail.com" ); 	// Si rempli alors cette valeur sera utilisée pour les différents envois de mails
	define( "MAIL_TEST", 	"" ); // Tester la qualité du mail (https://www.mail-tester.com)
	define( "MAIL_CONTACT", "contact@escalinox.fr" ); //escalinox.m@orange.fr
	define( "MAIL_BCC", 	"xav335@hotmail.com,fjavi.gonzalez@gmail.com,jav_gonz@yahoo.com" );
?>
