{JAVASCRIPT}

<!------------------------------------------>
<!-- CONNEXION RAPIDE (haut) --------------->


<!-- BEGIN switch_user_login_form_header -->
<div class="panel">
	<form action="{S_LOGIN_ACTION}" method="post" name="form_login">
		<div class="user_login_form center">
			<!-- Nom utilisateur -->
			<label>{L_USERNAME} : <input class="post" type="text" size="10" name="username" /></label> &nbsp;

			<!-- Mot de passe -->
			<label>{L_PASSWORD} : <input class="post" type="password" size="10" name="password" /></label> &nbsp;

			<!-- Check : connexion automatique -->
			<label>{L_AUTO_LOGIN} : <input class="radio" type="checkbox" name="autologin" {AUTOLOGIN_CHECKED} /></label> &nbsp;

			<!-- Bouton connexion -->
			{S_HIDDEN_FIELDS}<input class="mainoption button1" type="submit" name="login" value="{L_LOGIN}" />


		</div>
	</form>
</div>
<!-- END switch_user_login_form_header -->


<!------------------------------------------>
<!-- PAGE D'ACCUEIL ------------------------>


<!-- BEGIN message_admin_index -->
<div class="introduction">

	<!-- Titre de la PA -->
	<!-- BEGIN message_admin_titre -->
	<div class="h3">{message_admin_index.message_admin_titre.MES_TITRE}</div>
	<!-- END message_admin_titre -->

	<!-- Contenu de la PA -->
	<!-- BEGIN message_admin_txt -->
	<div class="mes-txt">{message_admin_index.message_admin_txt.MES_TXT}</div>
	<!-- END message_admin_txt -->
</div>
<!-- END message_admin_index -->


<!------------------------------------------>
<!-- CB (si affichée en haut) -------------->

{CHATBOX_TOP}


<!------------------------------------------>
<!-- CATEGORIES ---------------------------->
<!-- (template : index_box) -->

{BOARD_INDEX}


<!-- BEGIN switch_on_index -->
<div class="my-3 flex justify-between">
	<!-- Sujets actifs du jour -->
	<div class="bg-zinc-200 dark:bg-zinc-800 p-2 inline-block rounded shadow hover:bg-white uppe font-roboto uppercase"><a class="text-gradient" href="{U_TODAY_ACTIVE}">{L_TODAY_ACTIVE}</a></div>

	<!-- Top 20 des posteurs du jour -->
	<div class="bg-zinc-200 dark:bg-zinc-800 p-2 inline-block rounded shadow hover:bg-white uppe font-roboto uppercase"><a class="text-gradient" href="{U_TODAY_POSTERS}">{L_TODAY_POSTERS}</a></div>

	<!-- Top 20 des posteurs du forum -->
	<div class="bg-zinc-200 dark:bg-zinc-800 p-2 inline-block rounded shadow hover:bg-white uppe font-roboto uppercase"><a class="text-gradient" href="{U_OVERALL_POSTERS}">{L_OVERALL_POSTERS}</a></div>

	<!-- Supprimer des cookies du forum -->
	<!-- BEGIN switch_delete_cookies -->
	<div class="bg-zinc-200 dark:bg-zinc-800 p-2 inline-block rounded shadow hover:bg-white uppe font-roboto uppercase">
		<a class="text-gradient" href="{switch_on_index.switch_delete_cookies.U_DELETE_COOKIES}"
			rel="nofollow">
			{switch_on_index.switch_delete_cookies.L_DELETE_COOKIES}
		</a>
	</div>
	<!-- END switch_delete_cookies -->
</div>
<!-- END switch_on_index -->

<!------------------------------------------>
<!-- QUI EST EN LIGNE ---------------------->

<!-- BEGIN disable_viewonline -->
<div class="bg-zinc-200 dark:bg-zinc-800 shadow my-3 p-2 rounded flex gap-2">
	<div class="flex-1">
		<div class="flex gap-2">
			<div class="w-3/4">
				<div class="shadow">
					<div class="bg-white dark:bg-zinc-900 bgflex-1 rounded-t p-2 text-justify overflow-auto h-24" id="qeel__online_users_list" >
						{LOGGED_IN_USER_LIST}
					</div>
					<div class="bg-gradient flex rounded-b py-2 px-1 justify-around">
						<div id="qeel__online_users_stats" class="hidden">{TOTAL_USERS_ONLINE}</div>
					</div>
				</div>
				<div class="flex mt-3">
					<div class="flex items-center mr-3 uppercase font-sm bg-white dark:bg-zinc-900 p-1 shadow rounded hidden">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 512 512" class="mr-1"><path d="M293.5 25.08c-19.9 21.16-44 43.18-75.6 51.3 9.6 13.18 16.6 28.02 22.6 40.22 4.7-.8 9.4-1.3 14.2-1.3 1.8 0 3.6.1 5.4.2-4.6-8.7-7.1-17.98-8.3-25.81l-.7-4.73 3.5-3.23c15.3-14.1 36.1-22.27 57.8-30.82-8.1-8.47-14.2-17.16-18.9-25.83zM254.7 133.3c-27.1 0-52.6 18.2-71.9 50.1-19.3 31.9-31.7 76.9-31.7 126.7s12.4 94.8 31.7 126.7c19.3 31.9 44.8 50.1 71.9 50.1 27.1 0 52.6-18.2 71.9-50.1 19.3-31.9 31.7-76.9 31.7-126.7s-12.4-94.8-31.7-126.7c-19.3-31.9-44.8-50.1-71.9-50.1zm-98.5 12.1c-18.1 0-36.8 16-51.2 45.9-14.42 29.8-23.69 72.2-23.69 119.1 0 46.9 9.27 89.3 23.69 119.1 14.4 29.9 33.1 45.9 51.2 45.9 8.3 0 16.8-3.4 24.9-9.9-4.9-6-9.5-12.5-13.7-19.4-21.4-35.3-34.3-83.2-34.3-136s12.9-100.7 34.3-136c4.1-6.8 8.6-13.2 13.4-19-8-6.4-16.4-9.7-24.6-9.7zm205.4 2.4c-9.6 0-19.3 4.5-28.5 13.1 3.1 4.2 6.1 8.6 8.9 13.2 21.4 35.3 34.3 83.2 34.3 136s-12.9 100.7-34.3 136c-3.5 5.8-7.2 11.2-11.2 16.3 9.8 10.1 20.4 15.4 30.8 15.4 18.1 0 36.8-16 51.2-45.9 14.4-29.8 23.7-72.2 23.7-119.1 0-46.9-9.3-89.3-23.7-119.1-14.4-29.9-33.1-45.9-51.2-45.9zm-267.77.9c-17.89 0-36.02 14.8-50.05 42.4-14.02 27.6-23.07 66.8-23.07 110.2 0 43.4 9.05 82.6 23.07 110.2 14.03 27.6 32.16 42.4 50.05 42.4 1.32 0 2.63-.1 3.95-.3-3.22-5-6.23-10.5-9.01-16.3-15.96-33.1-25.46-77.7-25.46-126.9s9.5-93.8 25.46-126.9c5.76-12 12.53-22.6 20.13-31.3-5-2.3-10.06-3.5-15.07-3.5zm324.37 1.5c-3.8 0-7.6.7-11.4 2 8.5 9.1 15.9 20.6 22.2 33.7 16 33.1 25.5 77.7 25.5 126.9S445 406.6 429 439.7c-2.6 5.5-5.5 10.7-8.5 15.6 17.1-1.2 34.3-15.9 47.7-42.3 14.1-27.6 23.1-66.8 23.1-110.2 0-43.4-9-82.6-23.1-110.2-14-27.6-32.1-42.4-50-42.4z"></path></svg>
						<span id="DITM_qeel_online">{TOTAL_USERS_ONLINE}</span>
					</div>
					<div class="flex items-center mr-3 uppercase font-sm bg-white dark:bg-zinc-900 p-1 shadow rounded">
						<img src="https://em-content.zobj.net/source/google/439/christmas-tree_1f384.png" alt="" class="mr-1 h-4">
						<div id="DITM_qeel_members">{TOTAL_USERS}</div>
					</div>
					<div class="flex items-center mr-3 uppercase font-sm bg-white dark:bg-zinc-900 p-1 shadow rounded">
						<img src="https://em-content.zobj.net/source/google/439/cloud-with-snow_1f328-fe0f.png" alt="" class="mr-1 h-4">
						<span id="DITM_qeel_posts">{TOTAL_POSTS}</span>
					</div>
					<div class="flex items-center uppercase font-sm bg-white dark:bg-zinc-900 p-1 shadow rounded flex-1">
						<img src="https://em-content.zobj.net/source/animated-noto-color-emoji/427/wrapped-gift_1f381.gif" alt="" class="mr-1 h-4">
						<span id="DITM_birthday_list">{L_WHOSBIRTHDAY_TODAY}</span>
					</div>
				</div>
			</div>
			<div id="DITM_last_connected" class="w-1/4 flex flex-col" style="max-height: 182px;">
				<div class="bg-gradient flex rounded-t py-2 px-1">
					<div class="bg-white dark:bg-zinc-900 rounded py-1 px-4 font-bold uppercase font-roboto mx-auto">
						<span id="qeel_nb-active-users" class="text-gradient"></span>
					</div>
				</div>
				<div class="rounded-b bg-white dark:bg-zinc-900 shadow p-2 grow text-justify overflow-auto">
					{L_CONNECTED_MEMBERS}
				</div>
			</div>
		</div>
		<div class="flex gap-2 mt-3">
			<div class="w-1/2 bg-white dark:bg-zinc-900 p-2 shadow flex rounded items-center">
				<span id="lastuser_avatar" class="mr-2" style="width:50px;height:50px;"></span>
				<div>
					<span id="newest_user">{NEWEST_USER}</span>,<br> bienvenue à la Nouvelle-Orléans !
				</div>
			</div>

			<div class="w-1/2 flex flex-col gap-2">
				<div class="flex gap-2 h-1/2">
					<div class="flex-1 rounded shadow hover:text-white text-center bg-white dark:bg-zinc-900 dark:hover:bg-orange-500 hover:bg-orange-500 text-orange-500 duration-700 ease-in-out flex items-center justify-center">Born of the Sun</div>
					<div class="flex-1 rounded shadow hover:text-white text-center bg-white dark:bg-zinc-900 dark:hover:bg-blue-500 hover:bg-blue-500 text-blue-500 duration-700 ease-in-out flex items-center justify-center">Cracked from the Swamp</div>
				</div>
				<div class="flex gap-2 h-1/2">
					<div class="flex-1 rounded shadow hover:text-white text-center bg-white dark:bg-zinc-900 dark:hover:bg-pink-500 hover:bg-pink-500 text-pink-500 duration-700 flex items-center justify-center">Charmed Strangers</div>
					<div class="flex-1 rounded shadow text-center bg-white dark:bg-zinc-900 hover:bg-teal-500 dark:hover:bg-teal-500 text-teal-500 hover:text-white duration-700 flex items-center justify-center">Passing Souls</div>
				</div>
			</div>
		</div>
	</div>
	<div class="w-10 flex flex-col justify-between">
		<a href="https://dancinginthemoon.forumactif.com/t1-reglement" class="text-white bg-gradient rounded shadow h-10 flex items-center font-normal hover:bg-white hover:bg-none">
			<i class="ri-git-repository-line mx-auto" style="font-size:20px;"></i>
		</a>
		<a href="https://dancinginthemoon.forumactif.com/t4-staff" class="text-white bg-gradient rounded shadow h-10 flex items-center font-normal hover:bg-white hover:bg-none">
			<i class="ri-vip-crown-line mx-auto" style="font-size:20px;"></i>
		</a>
		<a href="https://dancinginthemoon.forumactif.com/f20-all-i-need-is" class="text-white bg-gradient rounded shadow h-10 flex items-center font-normal hover:bg-white hover:bg-none">
			<i class="ri-team-line mx-auto" style="font-size:20px;"></i>
		</a>
		<a href="https://dancinginthemoon.forumactif.com/f6-guests-area" class="text-white bg-gradient rounded shadow h-10 flex items-center font-normal hover:bg-white hover:bg-none">
			<i class="ri-questionnaire-line mx-auto" style="font-size:20px;"></i>
		</a>
		<a href="https://dancinginthemoon.forumactif.com/t5-credits" class="text-white bg-gradient rounded shadow h-10 flex items-center font-normal hover:bg-white hover:bg-none">
			<i class="ri-copyright-line mx-auto" style="font-size:20px;"></i>
		</a>
	</div>
</div>

<!-- Changement de texte des informations du QEEL -->
<script type="text/javascript">
	$("#newest_user").html($("#newest_user").html().replace("L'utilisateur enregistré le plus récent est", ""));

	$("#DITM_qeel_posts").html($("#DITM_qeel_posts").html().replace("Nos membres ont posté un total de", ""));

	$("#DITM_qeel_members").html($("#DITM_qeel_members").html().replace("Nous avons", ""));
	$("#DITM_qeel_members").html($("#DITM_qeel_members").html().replace("enregistrés", ""));
	$("#DITM_qeel_members").html($("#DITM_qeel_members").html().replace("enregistré", ""));

	$("#DITM_qeel_online").html($("#DITM_qeel_online").html().replace("Il y a en tout", ""));
	$("#DITM_qeel_online").html($("#DITM_qeel_online").html().replace("utilisateur en ligne", "connecté"));
	$("#DITM_qeel_online").html($("#DITM_qeel_online").html().replace("utilisateurs en ligne", "connectés"));
	
	$("#qeel__online_users_list").html($("#qeel__online_users_list").html().replace("Utilisateurs enregistrés", "En ligne")); 

	$("#DITM_qeel_online").html($("#DITM_qeel_online").html().substring(1, $("#DITM_qeel_online").html().indexOf('::')-1));
	$("#DITM_last_connected").html($("#DITM_last_connected").html().replace(/Membres connectés au cours des \d+ dernières heures :/, "Connectés récemment : "));
	$("#DITM_birthday_list").html($("#DITM_birthday_list").html().replace("Aucun membre ne fête son anniversaire aujourd'hui", "Pas d'anniversaire"));

	var texte = $("#qeel__online_users_stats").text();

	/* L'expression régulière cherche :
	1. Un ou plusieurs chiffres (\\d+)
	2. Suivi d'un espace (\\s)
	3. Suivi du mot "Enregistré", "Invisible" ou "Invité"
	avec un 's' optionnel à la fin de chaque mot (s?)
	*/
	var regex = /(\d+\s(Enregistré|Invisible|Invité)s?)/g;

	/* La méthode match() retourne un tableau contenant toutes les correspondances trouvées. */
	var resultats = texte.match(regex);
	resultats[0] = resultats[0].replace('Enregistré', 'Membre');

	$("#qeel__online_users_stats").parent().append('<div class="bg-white dark:bg-zinc-900 rounded py-1 px-4 font-bold uppercase font-roboto">'+
		'<span class="text-gradient">'+resultats[0]+'</span>'+
	'</div>');

	$("#qeel__online_users_stats").parent().append('<div class="bg-white dark:bg-zinc-900 rounded py-1 px-4 font-bold uppercase font-roboto">'+
		'<span class="text-gradient">'+resultats[1]+'</span>'+
	'</div>');

	$("#qeel__online_users_stats").parent().append('<div class="bg-white dark:bg-zinc-900 rounded py-1 px-4 font-bold uppercase font-roboto">'+
		'<span class="text-gradient">'+resultats[2]+'</span>'+
	'</div>');

	$("#qeel_nb-active-users").text($("#DITM_last_connected a").length+' actifs'); 
</script>


<div id="ditm_chatbox">
	<!-- Conteneur des infos CB -->
	<!-- BEGIN switch_chatbox_activate -->
	
	<div>
		<!-- BEGIN switch_chatbox_popup -->
		<script type="text/javascript">
			insertChatBoxPopup('{disable_viewonline.switch_chatbox_activate.switch_chatbox_popup.U_FRAME_CHATBOX}', '{L_CLICK_TO_JOIN_CHAT}');
		</script>
		<!-- END switch_chatbox_popup -->
		
	</div>
	<!-- END switch_chatbox_activate -->
	<!-- Fin des infos CB -->
</div>


<!-- END disable_viewonline -->
<!-- Fin du QEEL -->


<!------------------------------------------>
<!-- CB (si affichée en bas) --------------->
{CHATBOX_BOTTOM}



{AUTO_DST}