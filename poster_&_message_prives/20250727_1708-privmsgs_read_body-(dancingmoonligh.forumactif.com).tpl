<br />

<!----------------------------------------------->
<!-- MENU DE LA BOÎTE DE RECEPTION -------------->

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

<!---------------------------------->
<!-- BARRE DE GESTION -------------->
<div class="my-5 flex justify-end">
	<!-- Bouton: répondre -->
	<!-- BEGIN switch_post_reply -->
	<div class="bg-white w-fit rounded shadow">
		<a href="{REPLY_PM_URL}" rel="nofollow" title="{REPLY_PM_IMG}" class="newpm_button p-3 text-gradient flex items-center">
			<svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" fill="currentColor" class="mr-1 text-one" viewBox="0 0 16 16">
				<path d="M6.598 5.013a.144.144 0 0 1 .202.134V6.3a.5.5 0 0 0 .5.5c.667 0 2.013.005 3.3.822.984.624 1.99 1.76 2.595 3.876-1.02-.983-2.185-1.516-3.205-1.799a8.7 8.7 0 0 0-1.921-.306 7 7 0 0 0-.798.008h-.013l-.005.001h-.001L7.3 9.9l-.05-.498a.5.5 0 0 0-.45.498v1.153c0 .108-.11.176-.202.134L2.614 8.254l-.042-.028a.147.147 0 0 1 0-.252l.042-.028zM7.8 10.386q.103 0 .223.006c.434.02 1.034.086 1.7.271 1.326.368 2.896 1.202 3.94 3.08a.5.5 0 0 0 .933-.305c-.464-3.71-1.886-5.662-3.46-6.66-1.245-.79-2.527-.942-3.336-.971v-.66a1.144 1.144 0 0 0-1.767-.96l-3.994 2.94a1.147 1.147 0 0 0 0 1.946l3.994 2.94a1.144 1.144 0 0 0 1.767-.96z"/>
			</svg>

			Répondre au message
		</a>
	</div>

	<div class="bg-gradient w-fit rounded shadow ml-2">
		<a href="{REPLY_PM_URL}" rel="nofollow" title="{REPLY_PM_IMG}" class="newpm_button p-3 text-white flex items-center">
			<svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" fill="currentColor" class="mr-1" viewBox="0 0 16 16">
				<path d="M6.598 5.013a.144.144 0 0 1 .202.134V6.3a.5.5 0 0 0 .5.5c.667 0 2.013.005 3.3.822.984.624 1.99 1.76 2.595 3.876-1.02-.983-2.185-1.516-3.205-1.799a8.7 8.7 0 0 0-1.921-.306 7 7 0 0 0-.798.008h-.013l-.005.001h-.001L7.3 9.9l-.05-.498a.5.5 0 0 0-.45.498v1.153c0 .108-.11.176-.202.134L2.614 8.254l-.042-.028a.147.147 0 0 1 0-.252l.042-.028zM7.8 10.386q.103 0 .223.006c.434.02 1.034.086 1.7.271 1.326.368 2.896 1.202 3.94 3.08a.5.5 0 0 0 .933-.305c-.464-3.71-1.886-5.662-3.46-6.66-1.245-.79-2.527-.942-3.336-.971v-.66a1.144 1.144 0 0 0-1.767-.96l-3.994 2.94a1.147 1.147 0 0 0 0 1.946l3.994 2.94a1.144 1.144 0 0 0 1.767-.96z"/>
			</svg>

			Répondre au message
		</a>
	</div>
	<!-- END switch_post_reply -->
</div>



<form action="{S_PRIVMSGS_ACTION}" method="post">
	<!-------------------------------------->
	<!-- AFFICHAGE DU MESSAGE -------------->

	<div class="shadow mb-5">
		<!-- Titre -->
		<div class="title_container rounded-t p-4 text-white bg-gradient">
			<div class="flex gap-2">
				<div class="mp-single__sender_img relative">
					{AVATAR_FROM}
					<div class="absolute border rounded-full top-0 m-1 w-12 h-12"></div>
				</div>

				<div>
					{MESSAGE_FROM} <br>
					{POST_DATE}
				</div>

				<h1 class="text-right uppercase flex-1">{POST_SUBJECT}</h1>
			</div>
		</div>

		<div class="mp-wrapper">
		<!-- MP container (profil + message) -->
			
			<div class="p-2 rounded-b bg-zinc-200">
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
				<div class="message">
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
