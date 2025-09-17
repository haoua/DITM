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
	<div class="bg-zinc-200 p-2 inline-block rounded shadow hover:bg-white uppe font-roboto uppercase"><a class="text-gradient" href="{U_TODAY_ACTIVE}">{L_TODAY_ACTIVE}</a></div>

	<!-- Top 20 des posteurs du jour -->
	<div class="bg-zinc-200 p-2 inline-block rounded shadow hover:bg-white uppe font-roboto uppercase"><a class="text-gradient" href="{U_TODAY_POSTERS}">{L_TODAY_POSTERS}</a></div>

	<!-- Top 20 des posteurs du forum -->
	<div class="bg-zinc-200 p-2 inline-block rounded shadow hover:bg-white uppe font-roboto uppercase"><a class="text-gradient" href="{U_OVERALL_POSTERS}">{L_OVERALL_POSTERS}</a></div>

	<!-- Supprimer des cookies du forum -->
	<!-- BEGIN switch_delete_cookies -->
	<div class="bg-zinc-200 p-2 inline-block rounded shadow hover:bg-white uppe font-roboto uppercase">
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
<div class="bg-zinc-200 shadow my-3 p-2 rounded">
	<div class="flex gap-2">
		<div class="flex-2">
			<div class="bg-white flex-1 rounded shadow p-2 text-justify" id="online_users">
				{LOGGED_IN_USER_LIST}
			</div>
			<div class="flex">
				<div class="flex items-center mr-3 uppercase font-sm">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 512 512" class="mr-1"><path d="M293.5 25.08c-19.9 21.16-44 43.18-75.6 51.3 9.6 13.18 16.6 28.02 22.6 40.22 4.7-.8 9.4-1.3 14.2-1.3 1.8 0 3.6.1 5.4.2-4.6-8.7-7.1-17.98-8.3-25.81l-.7-4.73 3.5-3.23c15.3-14.1 36.1-22.27 57.8-30.82-8.1-8.47-14.2-17.16-18.9-25.83zM254.7 133.3c-27.1 0-52.6 18.2-71.9 50.1-19.3 31.9-31.7 76.9-31.7 126.7s12.4 94.8 31.7 126.7c19.3 31.9 44.8 50.1 71.9 50.1 27.1 0 52.6-18.2 71.9-50.1 19.3-31.9 31.7-76.9 31.7-126.7s-12.4-94.8-31.7-126.7c-19.3-31.9-44.8-50.1-71.9-50.1zm-98.5 12.1c-18.1 0-36.8 16-51.2 45.9-14.42 29.8-23.69 72.2-23.69 119.1 0 46.9 9.27 89.3 23.69 119.1 14.4 29.9 33.1 45.9 51.2 45.9 8.3 0 16.8-3.4 24.9-9.9-4.9-6-9.5-12.5-13.7-19.4-21.4-35.3-34.3-83.2-34.3-136s12.9-100.7 34.3-136c4.1-6.8 8.6-13.2 13.4-19-8-6.4-16.4-9.7-24.6-9.7zm205.4 2.4c-9.6 0-19.3 4.5-28.5 13.1 3.1 4.2 6.1 8.6 8.9 13.2 21.4 35.3 34.3 83.2 34.3 136s-12.9 100.7-34.3 136c-3.5 5.8-7.2 11.2-11.2 16.3 9.8 10.1 20.4 15.4 30.8 15.4 18.1 0 36.8-16 51.2-45.9 14.4-29.8 23.7-72.2 23.7-119.1 0-46.9-9.3-89.3-23.7-119.1-14.4-29.9-33.1-45.9-51.2-45.9zm-267.77.9c-17.89 0-36.02 14.8-50.05 42.4-14.02 27.6-23.07 66.8-23.07 110.2 0 43.4 9.05 82.6 23.07 110.2 14.03 27.6 32.16 42.4 50.05 42.4 1.32 0 2.63-.1 3.95-.3-3.22-5-6.23-10.5-9.01-16.3-15.96-33.1-25.46-77.7-25.46-126.9s9.5-93.8 25.46-126.9c5.76-12 12.53-22.6 20.13-31.3-5-2.3-10.06-3.5-15.07-3.5zm324.37 1.5c-3.8 0-7.6.7-11.4 2 8.5 9.1 15.9 20.6 22.2 33.7 16 33.1 25.5 77.7 25.5 126.9S445 406.6 429 439.7c-2.6 5.5-5.5 10.7-8.5 15.6 17.1-1.2 34.3-15.9 47.7-42.3 14.1-27.6 23.1-66.8 23.1-110.2 0-43.4-9-82.6-23.1-110.2-14-27.6-32.1-42.4-50-42.4z"></path></svg>
					<span id="DITM_qeel_online">{TOTAL_USERS_ONLINE}</span>
				</div>
				<div class="flex items-center mr-3 uppercase font-sm">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 512 512" class="mr-1">
						<path d="M416.125 42.406c-57.576.457-104.863 25.804-144.813 64.875-41.984 41.063-75 97.61-100 155.5.78 4.503 3.06 8.946 7.094 13.658 5.158 6.024 13.183 12.113 23.188 17.593 20.01 10.962 47.79 19.545 75.5 24.47 27.71 4.925 55.505 6.21 75.156 3.438 9.825-1.386 17.538-3.91 21.813-6.563 4.274-2.653 4.916-3.957 4.812-6.625l.72-.03c-3.408-42.828-6-88.797.092-131.94 2.82-19.972 7.668-39.434 15.22-57.624-31.573 31.44-62.918 65.425-86.844 94.72 35.418-70.2 86.2-121.398 141.125-168.97-11.376-1.71-22.42-2.584-33.063-2.5zM155.21 238.994a406.802 406.802 0 0 0-13.334.131c-23.138.575-44.227 2.91-61.876 7.188-23.532 5.703-40.466 14.888-48.78 26.03-8.317 11.144-10.08 24.667-.97 45.532 32.86 75.263 117.185 130.26 207.844 148.594 90.66 18.33 186.108.147 242.28-66.75 13.59-16.185 15.297-29.312 9.938-43.22-5.358-13.908-19.586-28.878-40.78-42.75-14.745-9.65-32.683-18.737-52.75-27.03 1.506 22.59 3.555 44.877 5.124 65.967v.219c.607 11.402-5.49 21.585-14.344 27.938-8.853 6.353-20.268 10.08-33.437 12.406-26.337 4.654-60.026 3.398-93.344-2.188-33.317-5.585-66.085-15.466-90.28-29.312-12.097-6.923-22.145-14.85-28.875-24.47-6.73-9.617-9.76-21.554-6.594-33.374l.095-.375.125-.374c7.637-21.206 16.308-42.79 26.094-64.094a634.04 634.04 0 0 0-6.133-.068zm6.634 46.662A839.14 839.14 0 0 0 153.031 309c-1.595 6.246-.4 11.407 3.907 17.563 4.374 6.25 12.28 12.923 22.844 18.968 21.128 12.09 52.4 21.78 84.095 27.095 31.694 5.314 64.016 6.28 87 2.22 11.492-2.032 20.53-5.42 25.78-9.19 5.25-3.766 6.864-6.726 6.595-11.78-.517-6.93-1.088-14.027-1.688-21.25-7.448 4.03-16.47 6.367-26.718 7.813-22.732 3.206-51.79 1.665-81.03-3.532-29.242-5.196-58.5-14.055-81.22-26.5-11.36-6.222-21.122-13.34-28.375-21.812a58.994 58.994 0 0 1-2.376-2.938z"></path>
					</svg>
					<div id="DITM_qeel_members">{TOTAL_USERS}</div>
				</div>
				<div class="flex items-center mr-3 uppercase font-sm">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bluesky mr-1" viewBox="0 0 512 512">
						<path d="M103.432 17.844a86.782 86.782 0 0 0-3.348.08c-2.547.11-5.083.334-7.604.678-20.167 2.747-39.158 13.667-52.324 33.67-24.613 37.4 2.194 98.025 56.625 98.025.536 0 1.058-.012 1.583-.022v.704h60.565c-10.758 31.994-30.298 66.596-52.448 101.43a283.192 283.192 0 0 0-6.29 10.406l34.878 35.733-56.263 9.423c-32.728 85.966-27.42 182.074 48.277 182.074v-.002l9.31.066c23.83-.57 46.732-4.298 61.325-12.887 4.174-2.458 7.63-5.237 10.467-8.42h-32.446c-20.33 5.95-40.8-6.94-47.396-25.922-8.956-25.77 7.52-52.36 31.867-60.452a55.552 55.552 0 0 1 17.565-2.834v-.406h178.33c-.57-44.403 16.35-90.125 49.184-126 23.955-26.176 42.03-60.624 51.3-94.846l-41.225-24.932 38.272-6.906-43.37-25.807h-.005l.002-.002.002.002 52.127-8.85c-5.232-39.134-28.84-68.113-77.37-68.113C341.14 32.26 222.11 35.29 149.34 28.496c-14.888-6.763-30.547-10.723-45.908-10.652zm.464 18.703c13.137.043 27.407 3.804 41.247 10.63l.033-.07c4.667 4.735 8.542 9.737 11.68 14.985H82.92l10.574 14.78c10.608 14.83 19.803 31.99 21.09 42.024.643 5.017-.11 7.167-1.814 8.836-1.705 1.67-6.228 3.875-15.99 3.875-40.587 0-56.878-44.952-41.012-69.06C66.238 46.64 79.582 39.22 95.002 37.12a64.146 64.146 0 0 1 8.894-.573zM118.5 80.78h46.28c4.275 15.734 3.656 33.07-.544 51.51H131.52c1.9-5.027 2.268-10.574 1.6-15.77-1.527-11.913-7.405-24.065-14.62-35.74zm101.553 317.095c6.44 6.84 11.192 15.31 13.37 24.914 3.797 16.736 3.092 31.208-1.767 43.204-4.526 11.175-12.576 19.79-22.29 26h237.19c14.448 0 24.887-5.678 32.2-14.318 7.312-8.64 11.2-20.514 10.705-32.352a47.733 47.733 0 0 0-2.407-13.18l-69.91-8.205 42.017-20.528c-8.32-3.442-18.64-5.537-31.375-5.537H220.053zm-42.668.506a36.999 36.999 0 0 0-3.457.153 34.825 34.825 0 0 0-7.824 1.63c-15.11 5.02-25.338 21.54-20.11 36.583 3.673 10.57 15.347 17.71 25.654 13.938l1.555-.57h43.354c.946-6.36.754-13.882-1.358-23.192-3.71-16.358-20.543-28.483-37.815-28.54z"/>
					</svg>
					<span id="DITM_qeel_posts">{TOTAL_POSTS}</span>
				</div>
				<div class="flex items-center mr-3 uppercase font-sm">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cake2 mr-1" viewBox="0 0 16 16">
						<path d="m3.494.013-.595.79A.747.747 0 0 0 3 1.814v2.683q-.224.051-.432.107c-.702.187-1.305.418-1.745.696C.408 5.56 0 5.954 0 6.5v7c0 .546.408.94.823 1.201.44.278 1.043.51 1.745.696C3.978 15.773 5.898 16 8 16s4.022-.227 5.432-.603c.701-.187 1.305-.418 1.745-.696.415-.261.823-.655.823-1.201v-7c0-.546-.408-.94-.823-1.201-.44-.278-1.043-.51-1.745-.696A12 12 0 0 0 13 4.496v-2.69a.747.747 0 0 0 .092-1.004l-.598-.79-.595.792A.747.747 0 0 0 12 1.813V4.3a22 22 0 0 0-2-.23V1.806a.747.747 0 0 0 .092-1.004l-.598-.79-.595.792A.747.747 0 0 0 9 1.813v2.204a29 29 0 0 0-2 0V1.806A.747.747 0 0 0 7.092.802l-.598-.79-.595.792A.747.747 0 0 0 6 1.813V4.07c-.71.05-1.383.129-2 .23V1.806A.747.747 0 0 0 4.092.802zm-.668 5.556L3 5.524v.967q.468.111 1 .201V5.315a21 21 0 0 1 2-.242v1.855q.488.036 1 .054V5.018a28 28 0 0 1 2 0v1.964q.512-.018 1-.054V5.073c.72.054 1.393.137 2 .242v1.377q.532-.09 1-.201v-.967l.175.045c.655.175 1.15.374 1.469.575.344.217.356.35.356.356s-.012.139-.356.356c-.319.2-.814.4-1.47.575C11.87 7.78 10.041 8 8 8c-2.04 0-3.87-.221-5.174-.569-.656-.175-1.151-.374-1.47-.575C1.012 6.639 1 6.506 1 6.5s.012-.139.356-.356c.319-.2.814-.4 1.47-.575M15 7.806v1.027l-.68.907a.94.94 0 0 1-1.17.276 1.94 1.94 0 0 0-2.236.363l-.348.348a1 1 0 0 1-1.307.092l-.06-.044a2 2 0 0 0-2.399 0l-.06.044a1 1 0 0 1-1.306-.092l-.35-.35a1.935 1.935 0 0 0-2.233-.362.935.935 0 0 1-1.168-.277L1 8.82V7.806c.42.232.956.428 1.568.591C3.978 8.773 5.898 9 8 9s4.022-.227 5.432-.603c.612-.163 1.149-.36 1.568-.591m0 2.679V13.5c0 .006-.012.139-.356.355-.319.202-.814.401-1.47.576C11.87 14.78 10.041 15 8 15c-2.04 0-3.87-.221-5.174-.569-.656-.175-1.151-.374-1.47-.575-.344-.217-.356-.35-.356-.356v-3.02a1.935 1.935 0 0 0 2.298.43.935.935 0 0 1 1.08.175l.348.349a2 2 0 0 0 2.615.185l.059-.044a1 1 0 0 1 1.2 0l.06.044a2 2 0 0 0 2.613-.185l.348-.348a.94.94 0 0 1 1.082-.175c.781.39 1.718.208 2.297-.426"></path>
					</svg>
					<span id="DITM_birthday_list">{L_WHOSBIRTHDAY_TODAY}</span>
				</div>
			</div>
		</div>
		<div id="DITM_last_connected" class="flex-1 rounded bg-white shadow p-2">
			{L_CONNECTED_MEMBERS}
		</div>
	</div>
	<div class="w-full">
		<span id="newest_user">{NEWEST_USER}</span>, bienvenue à la Nouvelle-Orléans !
		<span id="lastuser_avatar" style="width:70px;height:70px;margin-right:15px;"></span>
	</div>
</div>
<div>
	<span id="DITM_last_user">{NEWEST_USER}</span>, bienvenue à la Nouvelle-Orléans !
</div>

<!-- Changement de texte des informations du QEEL -->
<script type="text/javascript">
	/* $("#last_user").html($("#last_user").html().replace("L'utilisateur enregistré le plus récent est", "")); */
	console.log("HAOUA");
	console.log("HAOUA");
	console.log("HAOUA");
	console.log("HAOUA");
	console.log("HAOUA");
	console.log("HAOUA");
	console.log("HAOUA");
	console.log("HAOUA");
	$("#newest_user").html($("#newest_user").html().replace("L'utilisateur enregistré le plus récent est", ""));

	/*

	$("#qeel_posts").html($("#qeel_posts").html().replace("Nos membres ont posté un total de", "")); */
	$("#DITM_qeel_posts").html($("#DITM_qeel_posts").html().replace("Nos membres ont posté un total de", ""));
/*
	$("#qeel_members").html($("#qeel_members").html().replace("Nous avons", ""));
	$("#qeel_members").html($("#qeel_members").html().replace("enregistrés", ""));
*/
	$("#DITM_qeel_members").html($("#DITM_qeel_members").html().replace("Nous avons", ""));
	$("#DITM_qeel_members").html($("#DITM_qeel_members").html().replace("enregistrés", ""));
	$("#DITM_qeel_members").html($("#DITM_qeel_members").html().replace("enregistré", ""));
	/*

	$("#total_users").html($("#total_users").html().replace("Il y a en tout", ""));
	$("#total_users").html($("#total_users").html().replace("utilisateur en ligne", "connecté"));
	$("#total_users").html($("#total_users").html().replace("utilisateurs en ligne", "connectés"));
*/
	$("#DITM_qeel_online").html($("#DITM_qeel_online").html().replace("Il y a en tout", ""));
	$("#DITM_qeel_online").html($("#DITM_qeel_online").html().replace("utilisateur en ligne", "connecté"));
	$("#DITM_qeel_online").html($("#DITM_qeel_online").html().replace("utilisateurs en ligne", "connectés"));
/*
	$("#online_users").html($("#online_users").html().replace("Utilisateurs enregistrés", "En ligne"));
	$("#DITM_qeel_online").html($("#DITM_qeel_online").html().substring(1, $("#DITM_qeel_online").html().indexOf('::')-1));

	$("#last_connected").html($("#last_connected").html().replace("Membres connectés au cours des 24 dernières heures :", "Connectés récemment"));
	$("#DITM_last_connected").html($("#DITM_last_connected").html().replace("Membres connectés au cours des 24 dernières heures :", "Connectés récemment : "));
	$("#birthday_list").html($("#birthday_list").html().replace("Membres fêtant leur anniversaire aujourd'hui :", ""));
	$("#DITM_birthday_list").html($("#DITM_birthday_list").html().replace("Membres fêtant leur anniversaire aujourd'hui :", ""));
	$("#DITM_birthday_list").html($("#DITM_birthday_list").html().replace("Aucun membre ne fête son anniversaire aujourd'hui", "Pas d'anniversaire"));
*/
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