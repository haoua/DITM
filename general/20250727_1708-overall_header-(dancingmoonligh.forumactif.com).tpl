<!-- BLANK THEME ---->
<!-- VERSION 3.5 - MAJ 07/07/24 ---->
		
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" dir="{S_CONTENT_DIRECTION}" id="min-width" lang="{L_LANG_HTML}" xml:lang="{L_LANG_HTML}" {NAMESPACE_FB_LIKE} {NAMESPACE_FB} {NAMESPACE_BBCODE}>

<head>
	<script src="https://cdn.tailwindcss.com"></script>

	<script>
		tailwind.config = {
			darkMode: 'class',
		}  // active le mode basé sur .dark
	</script>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/gp-kim/Blank-Theme@main/Messenger/css-messenger.css">
	<!-- INSTALLATION DE NOUVELLE POLICE D'ECRITURE -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400;1,600&display=swap" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.gstatic.com">
 
	<!-- CSS hebergé -->
	<link rel="stylesheet" type="text/css" href="https://www.aht.li/3925275/DiTMO_PA_CSS6.css">
	  
	<!-- INSTALLATION DE FONT ICON -->
	<link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet"/>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
	<link href="https://cdn.jsdelivr.net/npm/remixicon@4.7.0/fonts/remixicon.css" rel="stylesheet" />
	<link rel="preconnect" href="https://fonts.googleapis.com">
	  
  	<!-- TEXTE DANS L'ONGLET DE NAVIGATEUR -->
	<title>{SITENAME_TITLE}{PAGE_TITLE}</title>
	  
	<meta http-equiv="content-type" content="text/html; charset={S_CONTENT_ENCODING}"/>
	<meta http-equiv="content-script-type" content="text/javascript"/>
	<meta http-equiv="content-style-type" content="text/css"/>
	<!-- BEGIN switch_compat_meta -->
	<meta http-equiv="X-UA-Compatible" content="IE={switch_compat_meta.VERSION}"/>
	<!-- END switch_compat_meta -->
	<!-- BEGIN switch_canonical_url -->
	<link rel="canonical" href="{switch_canonical_url.CANONICAL_URL}"/>
	<!-- END switch_canonical_url -->
	{META_FAVICO}
	{META}
	{META_FB_LIKE}
	<meta name="title" content="{SITENAME_TITLE}{PAGE_TITLE}"/>
	{T_HEAD_STYLESHEET}
	{CSS}
	<link rel="search" type="application/opensearchdescription+xml" href="/improvedsearch.xml" title="{SITENAME}"/>
	<link rel="search" type="application/opensearchdescription+xml" href="{URL_BOARD_DIRECTORY}/search/improvedsearch.xml" title="{SEARCH_FORUMS}"/>
	<script src="{JQUERY_PATH}" type="text/javascript"></script>
	<!-- BEGIN switch_recent_jquery -->
	<script src="{JS_DIR}jquery1.9/jquery-migrate-1.4.1.js" type="text/javascript"></script>
	<script src="{JQUERY_DIR}browser/v1.0/jquery.browser.min.js" type="text/javascript"></script>
	<script src="{JQUERY_DIR}support/jquery.support.js" type="text/javascript"></script>
	<!-- END switch_recent_jquery -->
	<script src="{JS_DIR}{L_LANG}.js" type="text/javascript"></script>
	{RICH_SNIPPET_GOOGLE}
	  
	<!-- BEGIN switch_ticker -->
	<link type="text/css" rel="stylesheet" href="{JQUERY_DIR}ticker/ticker.css"/>
	<script src="{JQUERY_DIR}ticker/ticker.js" type="text/javascript"></script>
	<!-- END switch_ticker -->

	<!-- BEGIN switch_ticker_new -->
	<script src="{JQUERY_DIR}jcarousel/jquery.jcarousel.js" type="text/javascript"></script>
	<script type="text/javascript">
		//<![CDATA[
		/* Definir le sens de direction en fonction du panneau admin */
		var tickerDirParam = "{switch_ticker.DIRECTION}";
		var slid_vert = false;
		var auto_dir = 'next';
		var h_perso = parseInt({switch_ticker.HEIGHT});

		switch (tickerDirParam) {
			case 'top' :
				slid_vert = true;
				break;

			case 'left':
				break;

			case 'bottom':
				slid_vert = true;
				auto_dir = 'prev';
				break;

			case 'right':
				auto_dir = 'prev';
				break;

			default:
				slid_vert = true;
		}

		$(document).ready(function () {

			$('#fa_ticker_content').css('display', 'block');

			var width_max = $('ul#fa_ticker_content').width();
			var width_item = Math.floor(width_max / {switch_ticker.SIZE});

			if (width_max > 0) {
				$('ul#fa_ticker_content li').css('float', 'left').css('list-style', 'none').width(width_item).find('img').each(function () {
					if ($(this).width() > width_item) {
						var ratio = $(this).width() / width_item;
						var new_height = Math.round($(this).height() / ratio);
						$(this).height(new_height).width(width_item);
					}
				});

				if (slid_vert) {
					var height_max = h_perso;

					$('ul#fa_ticker_content li').each(function () {
						if ($(this).height() > height_max) {
							height_max = $(this).height();
						}
					});

					$('ul#fa_ticker_content').width(width_item).height(height_max).css('marginLeft', 'auto').css('marginRight', 'auto');
					$('ul#fa_ticker_content li').height(height_max);
				}


				$('#fa_ticker_content').jcarousel({
					vertical: slid_vert,
					wrap: 'circular',
					auto: {switch_ticker.STOP_TIME},
					auto_direction: auto_dir,
					scroll: 1,
					size: {switch_ticker.SIZE},
					height_max: height_max,
					animation: {switch_ticker.SPEED}
				});
			} else {
				$('ul#fa_ticker_content li:not(:first)').css('display', 'none');
				$('ul#fa_ticker_content li:first').css('list-style', 'none').css('text-align', 'center');
			}
		});
		//]]>
	</script>
	<!-- END switch_ticker_new -->

	<script type="text/javascript">//<![CDATA[
		$(document).ready(function () {
			<!-- BEGIN switch_enable_pm_popup -->
			pm = window.open('{U_PRIVATEMSGS_POPUP}', '_faprivmsg', 'HEIGHT=225,resizable=yes,WIDTH=400');
			if (pm != null) {
				pm.focus();
			}
			<!-- END switch_enable_pm_popup -->
			<!-- BEGIN switch_report_popup -->
			report = window.open('{switch_report_popup.U_REPORT_POPUP}', '_phpbbreport', 'HEIGHT={switch_report_popup.S_HEIGHT},resizable=yes,scrollbars=no,WIDTH={switch_report_popup.S_WIDTH}');
			if (report != null) {
				report.focus();
			}
			<!-- END switch_report_popup -->
			<!-- BEGIN switch_ticker -->
			$(document).ready(function () {
				Ticker.start({
					height: {switch_ticker.HEIGHT},
					spacing: {switch_ticker.SPACING},
					speed: {switch_ticker.SPEED},
					direction: '{switch_ticker.DIRECTION}',
					pause: {switch_ticker.STOP_TIME}
				});
			});
			<!-- END switch_ticker -->
		});

		<!-- BEGIN switch_login_popup -->
		var logInPopUpLeft, logInPopUpTop, logInPopUpWidth = {LOGIN_POPUP_WIDTH},
			logInPopUpHeight = {LOGIN_POPUP_HEIGHT}, logInBackgroundResize = true, logInBackgroundClass = false;

		$(document).ready(function () {
			$(window).resize(function () {
				var windowWidth = document.documentElement.clientWidth;
				var popupWidth = $("#login_popup").width();
				var mypopup = $("#login_popup");

				$("#login_popup").css({
					"left": windowWidth / 2 - popupWidth / 2
				});
			});
		});
		<!-- END switch_login_popup -->
		//]]>
	</script>

	{GREETING_POPUP}


	<!-- CSS Forumactif -->
	<style type="text/css">
		<!-- BEGIN switch_ticker_new -->
		.jcarousel-skin-tango .jcarousel-item {text-align: center;width: 10px;}
		.jcarousel-skin-tango .jcarousel-item-horizontal {margin-right: {switch_ticker.SPACING}px;}
		.jcarousel-skin-tango .jcarousel-item-vertical {margin-bottom: {switch_ticker.SPACING}px;}
		<!-- END switch_ticker_new -->

		/* Il y a peu de chances que vous deviez toucher cette partie du CSS */
		/* BALISES GENERALES -*/
		ul {list-style-type: none;padding: 0;margin: 0;}
		fieldset {border: none;padding: 0;margin: 0;}
		dl:not(".codebox") {display: grid;grid-template-columns: 220px auto;grid-gap: 15px}
		dd {margin: 0;}
		dt {margin: 0}
		dt label {font-weight: bold}
		button{border: none}
		button, select, input{font-family: var(--font);cursor: pointer;}
		input:is([type="text"], [type="passeword"]){cursor: text;}
		  
		/*** ----------------------------- ***/
		/*** STRUCTURE DE LA TOOLBAR ----- ***/ 
		/*** Il est conseillé de ne rien modifier pour un bon fonctionnement de la toolbar ***/
		#fa_right #fa_menu ul,
		#fa_right.notification #fa_menu ul,
		#fa_right #fa_notifications #notif_unread {display: none}
		#notif_list hr {display: none}
		#fa_toolbar #live_notif .fa_notification .content {display: inline-block;}
		#fa_right.welcome #fa_menulist {display: block;}
		#fa_right.notification #notif_list {display: flex;}
		#fa_toolbar #fa_right #fa_notifications.unread #notif_unread {display: inline;}
		#fa_usermenu table {width: 100%;}
		#fa_usermenu table tr {display: flex;justify-content: center;}

		.invisible {display: none;visibility: hidden;} .visible {display: block;visibility: visible;}

		/* Indicateur complexité du mot de passe */
		#cont_pwd {display: flex;align-items: center;height: 100%;margin-left: 5px;}
		.pwd_img { padding: 2px 6px;display: none;border-radius: 3px;}
		#pwd_good {background-color: #4CAF50;color: #FFF;}
		#pwd_middle {background-color: #FFCC00;color: #000;}
		#pwd_bad {background-color: #F04040;color: #FFF;}

		/* POUBELLE DE FORUMACTIF */
		#p0 {display: none}
		#find_username br,#users_here br, #main-content > p, .adminlink br, .corners-top, .corners-bottom { display: none;}
		#find_username .panel {border: none;margin: 0}
		.adminlink { clear: both}
		#cp-main#cp-main#cp-main, table, .quickreply div#textarea_content {width: 100% !important;}
		.panel .panel { background: transparent;border: none; padding: 0;margin: 0; border-radius: 0;}
		.social_btn {display: none;}
	</style>

	{HOSTING_JS}

	<!-- BEGIN google_analytics_code -->
	<script async src="https://www.googletagmanager.com/gtag/js?id={G_ANALYTICS_ID}"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());
		gtag('config', '{G_ANALYTICS_ID}', {'anonymize_ip': true, 'store_gac': false, 'cookie_expires': 13 * 30 * 24 * 60 * 60});
		<!-- BEGIN google_analytics_code_bis -->
		gtag('config', '{G_ANALYTICS_ID_BIS}', {'anonymize_ip': true, 'store_gac': false, 'cookie_expires': 13 * 30 * 24 * 60 * 60});
		<!-- END google_analytics_code_bis -->
	</script>
	<!-- END google_analytics_code -->

	<!-- DESACTIVE EMOJIONE -->
	<script>$(function() {$('img.emojione').each(function() { $(this).after( $(this).attr('alt') ).remove(); }); });</script>

	<!------------------------------------->
	<!-- INITIALISATION DU PLUGIN EDISON -->	
	<script>
		(function () {
		  const html = document.documentElement;
		  const userThemePreference = window.matchMedia("(prefers-color-scheme: dark)").matches;
		  const colorScheme = localStorage.getItem('color-scheme');
		
		  if (!colorScheme && userThemePreference) {
		html.setAttribute('data-color-scheme', 'dark');
		  }
	
		  colorScheme && html.setAttribute('data-color-scheme', colorScheme);
		})();
	</script>

</head>

<body id="blanktheme">
	<!-- Structure du forum -->
	<div class="main_forum rounded p-5 bg-zinc-100 dark:bg-zinc-900">

		<!-- Ascenseur : renvoi vers le haut de la page -->
		<a id="top" name="top" accesskey="t"></a>
		{JAVASCRIPT}
	  
	  
	   <!----------------------------------------------->
	   <!-- ENTETE DU FORUM (au-dessus de la pub) -------------->

		<div id="page-header">

		   <!-- Bannière -->
			<a href="{U_INDEX}" id="header"><img loading="lazy" src="{LOGO}" alt="{L_INDEX}" /></a>

		   <!-- Barre de navigation -->
			<ul class="navbar flex py-3 rounded shadow items-center justify-center mt-3 bg-white dark:bg-zinc-800">
				<li>{GENERATED_NAV_BAR}</li>
			</ul>
			<!-- Fin de la barre de nav -->

			<!-- Annonces défilantes -->
			<!-- BEGIN switch_ticker_new -->
			<div id="fa_ticker_blockD">
				<div class="module">
					<div id="fa_ticker_container">
						<ul id="fa_ticker_content" class="jcarousel-skin-tango" style="display:none">
							<!-- BEGIN ticker_row -->
							<li>{switch_ticker.ticker_row.ELEMENT}</li>
							<!-- END ticker_row -->
						</ul>
					</div>
				</div>
			</div>
			<!-- END switch_ticker_new -->
			
			<!-- BEGIN switch_ticker -->
			<div id="fa_ticker_block" style="margin-top:4px;">
				<div class="module">
					<div id="fa_ticker_container">
						<div id="fa_ticker" style="height:{switch_ticker.HEIGHT}px;">
							<div class="fa_ticker_content">
								<!-- BEGIN ticker_row -->
								<div>{switch_ticker.ticker_row.ELEMENT}</div>
								<!-- END ticker_row -->
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END switch_ticker -->
			<!-- Fin des annonces défilantes -->
		</div>
		<!-- Fin de l'entête -->

		<div id="top_template" class="bg-zinc-200 dark:bg-zinc-800 rounded sadow p-2 mt-3">
			<div class="flex gap-2">
				<div class="flex flex-col items-stretch">
					<div class="bg-white dark:bg-zinc-900 rounded shadow p-2">
						<div class="mb-1 font-roboto uppercase font-bold">
							<div class="bg-one rounded p-1 mb-2 text-white flex items-center justify-between">
								Personnages attendus
								<svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-6 text-white"><path stroke-linecap="round" stroke-linejoin="round" d="M9.813 15.904 9 18.75l-.813-2.846a4.5 4.5 0 0 0-3.09-3.09L2.25 12l2.846-.813a4.5 4.5 0 0 0 3.09-3.09L9 5.25l.813 2.846a4.5 4.5 0 0 0 3.09 3.09L15.75 12l-2.846.813a4.5 4.5 0 0 0-3.09 3.09ZM18.259 8.715 18 9.75l-.259-1.035a3.375 3.375 0 0 0-2.455-2.456L14.25 6l1.036-.259a3.375 3.375 0 0 0 2.455-2.456L18 2.25l.259 1.035a3.375 3.375 0 0 0 2.456 2.456L21.75 6l-1.035.259a3.375 3.375 0 0 0-2.456 2.456ZM16.894 20.567 16.5 21.75l-.394-1.183a2.25 2.25 0 0 0-1.423-1.423L13.5 18.75l1.183-.394a2.25 2.25 0 0 0 1.423-1.423l.394-1.183.394 1.183a2.25 2.25 0 0 0 1.423 1.423l1.183.394-1.183.394a2.25 2.25 0 0 0-1.423 1.423Z"></path></svg>
							</div>
						</div>
						<div class='topbox__preliens flex gap-1'>
							<a target="_blank" href="https://dancinginthemoon.forumactif.com/t162-m-plan-coeur" class="w-12 h-12 overflow-hidden block bg-cover rounded relative">
								<img src="https://i.pinimg.com/736x/55/90/52/55905288c334249344ad83cf92f20ccb.jpg" alt="">
								<span class="inline-block w-full h-full absolute p-1 top-0">
									<span class="inline-block w-full h-full border rounded"></span>
								</span>
							</a>   
							<a target="_blank" href="https://dancinginthemoon.forumactif.com/t320-1f-2m-dysfunctional-family-whitworth" class="w-12 h-12 overflow-hidden block bg-cover rounded relative">
								<img src="https://i.pinimg.com/1200x/78/48/b4/7848b4e54aa9a06cd302d42e04dfa530.jpg">
								<span class="inline-block w-full h-full absolute p-1 top-0">
									<span class="inline-block w-full h-full border rounded"></span>
								</span>
							</a>   
							<a target="_blank" href="https://dancinginthemoon.forumactif.com/t313-m-ami-d-enfance" class="w-12 h-12 overflow-hidden block bg-cover rounded relative">
								<img src="https://i.pinimg.com/736x/8c/47/7f/8c477f89a06cdfdc772a13208bd999b9.jpg">
								<span class="inline-block w-full h-full absolute p-1 top-0">
									<span class="inline-block w-full h-full border rounded"></span>
								</span>
							</a>   
							<a target="_blank" href="https://dancinginthemoon.forumactif.com/t233-corvus" class="w-12 h-12 overflow-hidden block bg-cover rounded relative">
								<img src="https://i.pinimg.com/736x/f3/b1/3d/f3b13df8c26d644481323ce49d1bb1c5.jpg">
								<span class="inline-block w-full h-full absolute p-1 top-0">
									<span class="inline-block w-full h-full border rounded"></span>
								</span>
							</a>   
							<a target="_blank" href="https://dancinginthemoon.forumactif.com/t204-6-9-f-h-nb-the-gutter-saints" class="w-12 h-12 overflow-hidden block bg-cover rounded relative">
								<img src="https://images.unsplash.com/photo-1543007630-9710e4a00a20?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=735">
								<span class="inline-block w-full h-full absolute p-1 top-0">
									<span class="inline-block w-full h-full border rounded"></span>
								</span>
							</a>   
							<a target="_blank" href="https://dancinginthemoon.forumactif.com/t225-f-nb-m-astra-noctis" class="w-12 h-12 overflow-hidden block bg-cover rounded relative">
								<img src="https://i.pinimg.com/1200x/ba/48/3f/ba483f854b55b895344d0682055f2f8c.jpg">
								<span class="inline-block w-full h-full absolute p-1 top-0">
									<span class="inline-block w-full h-full border rounded"></span>
								</span>
							</a>  
						</div>
						<div class="bg-zinc-200 dark:bg-zinc-700  p-1 rounded mt-2 text-center">
							<a href="https://dancinginthemoon.forumactif.com/f20-all-i-need-is" class="text-zinc-600 dark:text-white font-roboto uppercase font-bold">voir plus ?</a>
						</div>
					</div>

					<div class="p-2 bg-white dark:bg-zinc-900 flex items-center justify-between mt-2 rounded shadow grow">
						<span class="text-zinc-600  dark:text-zinc-300 font-roboto uppercase font-bold">Aide le forum en votant</span>	
						<a href="http://www.root-top.com/topsite/obsession27/in.php?ID=27531"><i class="ri-ghost-line font-normal text-xl dark:text-zinc-300"></i></a>
						<a href="http://www.root-top.com/topsite/pubrpgdesign/in.php?ID=3513"><i class="ri-ghost-line font-normal text-xl dark:text-zinc-300"></i></a>
						<a href="http://www.root-top.com/topsite/toppg/in.php?ID=255"><i class="ri-ghost-line font-normal text-xl dark:text-zinc-300"></i></a>
						<a href="http://www.root-top.com/topsite/bazzart/in.php?ID=3313"><i class="ri-ghost-line font-normal text-xl dark:text-zinc-300"></i></a>
					</div>
				</div>

			
				<div class="flex flex-col gap-2">
					<a href="https://dancinginthemoon.forumactif.com/t1-reglement" class="bg-one rounded text-white font-roboto uppercase text-center px-4 shadow hover:bg-white dark:hover:bg-zinc-900">règlement</a>
					<a href="https://dancinginthemoon.forumactif.com/t2-contexte" class="bg-one rounded text-white font-roboto uppercase text-center px-4 shadow hover:bg-white dark:hover:bg-zinc-900">contexte</a>
					<a href="https://dancinginthemoon.forumactif.com/t21-bottin-des-avatars" class="bg-one rounded text-white font-roboto uppercase text-center px-4 shadow hover:bg-white dark:hover:bg-zinc-900">bottin</a>
					<div class="bg-white dark:bg-zinc-900 p-2 rounded text-xs text-justify grow flex items-center justify-center">
						Toutes les idées & textes appartiennent à l'entièreté du forum ainsi que de son staff. Toute reproduction est interdite. Merci à toutes les personnes ayant participé : Neikal, Ezae, Prism, Brighty, Valar.
					</div>
				</div>

				<div class="flex flex-col gap-2">
					<div class="p-2 bg-white dark:bg-zinc-900 text-justify text-xs rounded shadow grow flex items-center justify-center">
						<div>						
							<span class="pastille bg-one text-white m-0">DITM</span> est un forum city réel sans prise de tête basé à la <strong>Nouvelle-Orléans</strong> aux Etats-Unis / réservation du faceclaim durant <i>7 jours</i> / écart de <i>5 ans maximum</i> entre l'avatar et le personnage / <span class="text-one">1 rp par mois</span> / aucun minimum de mots / les initiales ne sont pas acceptées pour le pseudo.
							<span class="text-center block flex justify-evenly mt-1">
								<img class="w-5" src="https://em-content.zobj.net/source/google/439/jack-o-lantern_1f383.png" alt="">
								<img class="w-5" src="https://em-content.zobj.net/source/google/439/saxophone_1f3b7.png" alt="">
								<img class="w-5" src="https://em-content.zobj.net/source/google/439/sparkles_2728.png" alt="">
								<img class="w-5" src="https://em-content.zobj.net/source/google/439/tropical-drink_1f379.png" alt="">
								<img class="w-5" src="https://em-content.zobj.net/source/google/439/nazar-amulet_1f9ff.png" alt="">
							</span>
						</div>
					</div>

					<a href="https://dancinginthemoon.forumactif.com/f3-guides-annexes" class="bg-one rounded text-white font-roboto uppercase text-center px-4 shadow hover:bg-white dark:hover:bg-zinc-900">annexes</a>
					<a href="https://dancinginthemoon.forumactif.com/f6-guests-area" class="bg-one rounded text-white font-roboto uppercase text-center px-4 shadow hover:bg-white dark:hover:bg-zinc-900">invités</a>
				</div>
				
			</div>
		</div>
	  
		<!----------------------------------------------->
		<!-- CONTENU DU FORUM -------------->
	   
		<div id="page-body">

			<div id="{ID_CONTENT_CONTAINER}" {CLASS_CONTENT_CONTAINER}>
				<div id="outer-wrapper">
					<div id="wrapper">
						<div id="container">
							<div id="content">

								<div id="main">
									<div id="main-content">