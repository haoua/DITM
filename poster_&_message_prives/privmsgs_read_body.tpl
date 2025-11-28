<br />

<!----------------------------------------------->
<!-- MENU DE LA BOÎTE DE RECEPTION -------------->
<div class="my-5 flex justify-between items-center">
	<ul id="privmsgs-menu">
		<!-- Boîte de reception (image / lien) -->
		<li>{INBOX_IMG} {INBOX}</li>
		<!-- Messages envoyés (image / lien) -->
		<li>{SENTBOX_IMG} {SENTBOX}</li>
		<!-- Boîte d'envoi (image / lien) -->
		<li>{OUTBOX_IMG} {OUTBOX}</li>
		<!-- Archives (image / lien) -->
		<li>{SAVEBOX_IMG} {SAVEBOX}</li>
	</ul>
	<!-- Bouton: répondre -->
	<!-- BEGIN switch_post_reply -->
	<div class="bg-gradient w-fit rounded shadow ml-2">
		<a href="{REPLY_PM_URL}" rel="nofollow" title="{REPLY_PM_IMG}" class="newpm_button p-3 text-white flex items-center uppercase font-roboto">
			<i class="ri-reply-line font-normal mr-1"></i>

			Répondre
		</a>
	</div>
	<!-- END switch_post_reply -->
</div>



<form action="{S_PRIVMSGS_ACTION}" method="post">
	<!-------------------------------------->
	<!-- AFFICHAGE DU MESSAGE -------------->
	<div class="shadow mb-5 rounded bg-zinc-200 dark:bg-zinc-800">
		<!-- Titre -->
		<div class="title_container rounded-t p-4 text-white bg-gradient ">
			<div class="flex gap-2 items-center">
				<h1 class=" font-yeseva flex-1">{POST_SUBJECT}</h1>

				<div class="text-right">
					{MESSAGE_FROM} <br>
					{POST_DATE}
				</div>

				<div class="mp-single__sender_img relative h-14 w-14 rounded overflow-hidden">
					{AVATAR_FROM}
					<div class="absolute border rounded top-0 m-1 w-12 h-12"></div>
				</div>
			</div>
		</div>

		<div class="mp-wrapper">
		<!-- MP container (profil + message) -->
			
			<div class="p-2 rounded-b">
				<!-- Conteneur des informations du message -->
				<div class="hidden message_infos">

					<!-- De XX à XX, date -->
					<span>{L_FROM} {MESSAGE_FROM} {L_TO} {MESSAGE_TO}, {POST_DATE}</span>

					<!-- Boutons d'édition -->
					<ul class="mp-icons">
						<!-- BEGIN switch_quote -->
						<li class="btn-quote">
							<a href="/privmsg?mode=quote">Citer</a>
						</li>
						<!-- END switch_quote -->

						<li class="btn-edit">
							<a href="/privmsg?mode=edit">Editer</a>
						</li>
					</ul>

				</div>

				<!-- Conteneur du message -->
				<div class="message rounded bg-white dark:bg-zinc-900">
					<!-- contenu du MP -->
					<div class="message_content postbody content">
						{MESSAGE}
					</div>

				</div>
			</div>
			<!-- Fin du conteneur message -->
		</div>
	</div>
		
	<!------------------------------------>
	<!-- BOUTONS DE GESTION -------------->
	<fieldset class="submit-buttons">
		{S_HIDDEN_FIELDS}
		<!-- BEGIN switch_save -->
		<input class="button2" type="submit" name="save" value="{L_SAVE_MSG}" />&nbsp;&nbsp;
		<!-- END switch_save -->

		<!-- BEGIN switch_move_profile -->
		<input class="button2" type="submit" name="moveprofile" value="{L_MOVE_PROFILE}" />&nbsp;&nbsp;
		<!-- END switch_move_profile -->

		<input class="button2" type="submit" name="delete" value="{L_DELETE_MSG}" />
	</fieldset>
	

	<!-- Fin de l'affichage du message -->
</form>

<!----------------------------------------------->
<!-- HISTORIQUE DES MESSAGES -------------->
<!-- (template : privmsg_topic_review)-->

<!-- BEGIN switch_review_box -->
{TOPIC_REVIEW_BOX}
<!-- END switch_review_box -->




<!-- Sauter vers un forum -->
{JUMPBOX}



<!-- BEGIN switch_image_resize -->
<script type="text/javascript">
	//<![CDATA[
	$(resize_images({
		'selector': '.postbody .content',
		'max_width': {
			switch_image_resize.IMG_RESIZE_WIDTH
		},
		'max_height': {
			switch_image_resize.IMG_RESIZE_HEIGHT
		}
	}));
	//]]>

</script>
<!-- END switch_image_resize -->

<!-- Bouton editer/citer text -->
<script type="text/javascript">
const post = document.querySelector('input[type="hidden"][name="mark[]"][value]').value;
	
const quoteBtn = document.querySelector('a[href="/privmsg?mode=quote"]');
if('{QUOTE_PM_IMG}' && quoteBtn) { quoteBtn.href = '/privmsg?mode=quote&p=' + post} else {quoteBtn?.remove();}

const editBtn = document.querySelector('a[href="/privmsg?mode=edit"]');
if('{EDIT_PM_IMG}' && editBtn) { editBtn.href = '/privmsg?mode=edit&p=' + post } else {editBtn.remove();}

const container = document.querySelector(".message_from");
if (!container) {
  console.alert('[Affichage MP] Le pseudo et l\'image de renvoit vers le profil ne sont pas contenu dans le selecteur .message_from');
}
const link = container?.querySelector("a");
const span = container?.querySelector("span");

if (link && span) {
	link.innerHTML = span.outerHTML; 
	span.remove(); 
	link.querySelector("img")?.remove();
}
</script>
