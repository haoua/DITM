<!---------------------------------->
<!-- BARRE DE GESTION -------------->

<div class="my-5">
    <!-- BEGIN switch_user_logged_in -->
    <span>
        <!-- Messages depuis la dernière visite -->
        <a id="lastvisit_posts" href="{U_SEARCH_NEW}">Messages depuis la dernière visite</a>&nbsp;•&nbsp;

        <!-- Voir ses messages -->
        <a href="{U_SEARCH_SELF}">Voir ses messages</a>&nbsp;•&nbsp;

        <!-- Messages sans réponses -->
        <a id="posts_unanswered" href="{U_SEARCH_UNANSWERED}">Message sans réponses</a>
    </span>
    <!-- END switch_user_logged_in -->


    <!-- BEGIN switch_user_logged_in -->
    <!-- Marquer les forums comme lus -->
    <a class="specials_links right" id="mark_read" href="{U_MARK_READ}" accesskey="m">Tout marquer comme lu</a>
    <!-- END switch_user_logged_in -->
</div>


<!---------------------------->
<!-- CATEGORIES -------------->

<!-- Conteneur d'une catégorie -->
<!-- BEGIN catrow -->

<!-- BEGIN tablehead -->
<div class="DITM_category bg-zinc-200 dark:bg-zinc-700 rounded shadow" id="{catrow.tablehead.ID}">

	<!-- Titre catégorie -->
	<div class="DITM_cate_title font-bold rounded-t p-3 bg-gradient shadow flex items-center justify-around">
		<svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-6 mr-1 text-white">
			<path stroke-linecap="round" stroke-linejoin="round" d="M9.813 15.904 9 18.75l-.813-2.846a4.5 4.5 0 0 0-3.09-3.09L2.25 12l2.846-.813a4.5 4.5 0 0 0 3.09-3.09L9 5.25l.813 2.846a4.5 4.5 0 0 0 3.09 3.09L15.75 12l-2.846.813a4.5 4.5 0 0 0-3.09 3.09ZM18.259 8.715 18 9.75l-.259-1.035a3.375 3.375 0 0 0-2.455-2.456L14.25 6l1.036-.259a3.375 3.375 0 0 0 2.455-2.456L18 2.25l.259 1.035a3.375 3.375 0 0 0 2.456 2.456L21.75 6l-1.035.259a3.375 3.375 0 0 0-2.456 2.456ZM16.894 20.567 16.5 21.75l-.394-1.183a2.25 2.25 0 0 0-1.423-1.423L13.5 18.75l1.183-.394a2.25 2.25 0 0 0 1.423-1.423l.394-1.183.394 1.183a2.25 2.25 0 0 0 1.423 1.423l1.183.394-1.183.394a2.25 2.25 0 0 0-1.423 1.423Z" />
		</svg>

		<div class="cate_title_a uppercase text-white">
			{catrow.tablehead.L_FORUM}
		</div>

		<svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-6 ml-1 text-white">
			<path stroke-linecap="round" stroke-linejoin="round" d="M9.813 15.904 9 18.75l-.813-2.846a4.5 4.5 0 0 0-3.09-3.09L2.25 12l2.846-.813a4.5 4.5 0 0 0 3.09-3.09L9 5.25l.813 2.846a4.5 4.5 0 0 0 3.09 3.09L15.75 12l-2.846.813a4.5 4.5 0 0 0-3.09 3.09ZM18.259 8.715 18 9.75l-.259-1.035a3.375 3.375 0 0 0-2.455-2.456L14.25 6l1.036-.259a3.375 3.375 0 0 0 2.455-2.456L18 2.25l.259 1.035a3.375 3.375 0 0 0 2.456 2.456L21.75 6l-1.035.259a3.375 3.375 0 0 0-2.456 2.456ZM16.894 20.567 16.5 21.75l-.394-1.183a2.25 2.25 0 0 0-1.423-1.423L13.5 18.75l1.183-.394a2.25 2.25 0 0 0 1.423-1.423l.394-1.183.394 1.183a2.25 2.25 0 0 0 1.423 1.423l1.183.394-1.183.394a2.25 2.25 0 0 0-1.423 1.423Z" />
		</svg>
	</div>


    <!-- Conteneur liste des forums -->
    <div class="forums p-3 mb-5 flex flex-col gap-5">

	<!-- END tablehead -->

        <!-- BEGIN forumrow -->
        <!-- Affichage d'un forum -->
        <div>
			<div class="forum row forum_row__row {catrow.forumrow.FOLDER_CLASSNAME} bg-white dark:bg-zinc-800 rounded">
				<img src="{catrow.forumrow.FORUM_FOLDER_IMG}" alt="" class="hidden forum-row__img-status">
				<div class="DITM_forum-container flex flex-col rounded shadow mb-1 p-3 gap-3 bg-no-repeat bg-right">
					<div class="flex">
						<div class="forum_avatar lastpostavatar rounded bg-gradient">
							<!-- Avatar du dernier posteur -->
							<!-- BEGIN avatar -->
							{catrow.forumrow.avatar.LAST_POST_AVATAR}
							<!-- END avatar -->
						</div>
						<div class="px-2" style="flex:9;">
							<div class="forum-row__row-title flex items-center gap-1 mb-1 justify-between">
								<!-- Titre forum -->
								<a href="{catrow.forumrow.U_VIEWFORUM}" class="hidden bg-gradient text-white uppercase rounded px-5 py-1">{catrow.forumrow.FORUM_NAME}</a>
								<a href="{catrow.forumrow.U_VIEWFORUM}" class="font-yeseva text-gradient font-normal text-2xl">{catrow.forumrow.FORUM_NAME}</a>
								<div class="forum-row__forum-status uppercase rounded bg-gradient px-1 text-white font-bold hidden">Nouveau !</div>
								
							</div>

							<div class="text-justify overflow-auto pr-2" style="max-height: 67px;">{catrow.forumrow.FORUM_DESC}</div>
						</div>
						<div class="forum-row__sublinks uppercase overflow-auto mr-1">
							{catrow.forumrow.L_LINKS}{catrow.forumrow.LINKS}
						</div>
						<div class="">
							<div class="flex gap-3 justify-around">
								<!-- Compteur sujets et message -->
								<div class="flex items-center">
									<span class="text-two font-yeseva text-2xl mr-1">{catrow.forumrow.TOPICS}</span> <span class="uppercase text-xs">{L_TOPICS}</span>
								</div>

								<div class="flex items-center">
									<span class="text-three font-yeseva text-2xl mr-1">{catrow.forumrow.POSTS}</span> <span class="uppercase text-xs">{L_POSTS}</span>
								</div>
							</div>
							<div class="forum-row__last_post_infos">
								<!-- Titre du dernier message -->
								<!-- BEGIN switch_topic_title -->
								<a href="{catrow.forumrow.U_LATEST_TOPIC}" title="{catrow.forumrow.LATEST_TOPIC_TITLE}" class="lastpost_link">
									{catrow.forumrow.LATEST_TOPIC_NAME}
								</a>
								<!-- END switch_topic_title -->

								<!-- Date et auteur -->      
								<div>
									{catrow.forumrow.USER_LAST_POST}
								</div>
							</div>
						</div>
					</div>
				</div>				
			</div>
		</div>
		<!-- Fin affichage d'un forum -->
    <!-- END forumrow -->

<!-- BEGIN tablefoot -->
</div>
<!-- Fin liste des forums -->


</div>
<!-- END tablefoot -->
<!-- END catrow -->
<!-- Fin du conteneur de catégorie -->

<script type="text/javascript">
	$('img.forum-row__img-status').each(function() {
		const imgSrc = $(this).attr('src');

		if (imgSrc && imgSrc.includes('new')) {
			const $parentContainer = $(this).closest('.forum_row__row');
			$parentContainer.find('.forum-row__forum-status').removeClass('hidden');
		}
	});

	$(".forum-row__sublinks").each(function(){
		if($(this).html() == ''){
			$(this).addClass("hidden");
		}
	}) 
</script>
