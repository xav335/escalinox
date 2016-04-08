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
		case "/var/www/escalinox" :
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
	
	define( "MAILCUSTOMER", 	"xxx" );
	define( "MAILNAMECUSTOMER", "ESC Alinox" );
	define( "URLSITEDEFAULT", 	"http://www.xxx.com/" );
	define( "FACEBOOK_LINK", 	"https://www.facebook.com/#" );
	define( "DAILYMOTION_LINK", "#" );
	
	// ---- Mail d'envoi
	define( "MAIL_TEST", 	"fjavi.gonzalez@gmail.com" ); 	// Si rempli alors cette valeur sera utilisée pour les différents envois de mails
	//define( "MAIL_TEST", 	"web-yBQzxd@mail-tester.com" ); // Tester la qualité du mail (https://www.mail-tester.com)
	define( "MAIL_CONTACT", "fjavi.gonzalez@gmail.com" );
	define( "MAIL_BCC", 	"xav335@hotmail.com,xavier.gonzalez@laposte.net,jav_gonz@yahoo.com" );
?>