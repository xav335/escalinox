	<script src="/js/vendor/jquery.js"></script>
	<script src="/js/foundation.min.js"></script>
	<script src="/js/foundation/foundation.tab.js"></script>
	<script src="/js/vendor/swiper/swiper.min.js"></script>
	
	<!-- Fancybox -->
	<script type="text/javascript" src="/js/vendor/jquery.mousewheel-3.0.6.pack.js"></script>
	<script type="text/javascript" src="/js/vendor/fancybox/jquery.fancybox.js?v=2.1.5"></script>
	<link rel="stylesheet" type="text/css" href="/js/vendor/fancybox/jquery.fancybox.css?v=2.1.5" media="screen" />
	<link rel="stylesheet" type="text/css" href="/js/vendor/fancybox/helpers/jquery.fancybox-buttons.css?v=1.0.5" />
	<script type="text/javascript" src="/js/vendor/fancybox/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
	<link rel="stylesheet" type="text/css" href="/js/vendor/fancybox/helpers/jquery.fancybox-thumbs.css?v=1.0.7" />
	<script type="text/javascript" src="/js/vendor/fancybox/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>
	<script type="text/javascript" src="/js/vendor/fancybox/helpers/jquery.fancybox-media.js?v=1.0.6"></script>
	<!-- End Fancybox -->
	
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
	<script>
		
		// ---- Google Map ---------------------------------------- //
		if ( 1 == 1 ) {
			var map;
			function initialize() {
			
				var mapOptions = {
					mapTypeId: google.maps.MapTypeId.ROADMAP,
					mapTypeControl: false,
					zoom: 11,
					zoomControl: false,
					panControl: false,
					streetViewControl: false,
					scrollwheel: false,
					scaleControl: false,
					overviewMapControl: false,
					center: new google.maps.LatLng(44.883226, -0.335425)
				};
				
				map = new google.maps.Map(document.getElementById('map-canvas'),
					mapOptions);
				
				var marker = new google.maps.Marker({
					position: new google.maps.LatLng(44.883226, -0.335425),
					map: map,
					icon: 'img/marker.png',
					title: "ESC'ALINOX"
				});
			
				var mapStyles = [
				  {
				    "stylers": [
				      { "saturation": -100 }
				    ]
				  }
				];
				
				map.setOptions({styles: mapStyles});
			}
			
			google.maps.event.addDomListener(window, 'load', initialize);
			
			function checkResize(){
			
				var center = map.getCenter();
				google.maps.event.trigger(map, 'resize');
				map.setCenter(center);
			}
			
			window.onresize = checkResize;
		}
		// -------------------------------------------------------- //

		$(document).foundation();
		var swiper = new Swiper('.swiper-container', {
			pagination : '.swiper-pagination',
			paginationClickable : true
		});
		
		$(document).ready(function(){
			
			$('.close').click(function(){
				$('.homeactu').fadeOut(500);
			});
			
			$('.fancybox').fancybox({
				helpers: {
					overlay: {
						locked: false
					}
				}
			});
		});
		
	</script>