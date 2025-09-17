<!----------------------------------------------->
<!-- BARRE DE GESTION -------------->

<div class="links_bar">
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


<!----------------------------------------------->
<!-- CATEGORIES -------------->

<!-- Conteneur d'une catégorie -->
<!-- BEGIN catrow -->

<!-- BEGIN tablehead -->
<div class="DITM_category" id="{catrow.tablehead.ID}">

	<!-- Titre catégorie -->
	<div class="DITM_cate_title text-center rounded-t p-3 bg-gradient shadow">
		<div class="cate_title_a">
			{catrow.tablehead.L_FORUM}
		</div>
	</div>


    <!-- Conteneur liste des forums -->
    <div class="forums rounded bg-zinc-200 p-3">

	<!-- END tablehead -->

        <!-- BEGIN forumrow -->
        <!-- Affichage d'un forum -->
        <div class="forum row {catrow.forumrow.FOLDER_CLASSNAME} mb-5 bg-white rounded">
            <!-- Titre forum -->
			<div class="DITM_forum-container flex flex-col rounded shadow mb-3 p-3 gap-3 bg-no-repeat bg-right" style="background-image: url('{catrow.forumrow.FORUM_FOLDER_IMG}');background-color: rgba(255,255,255,0.8);background-blend-mode: lighten;background-position:730px center;">
                
				<div class="forum_details flex items-center justify-between">
					<div class="forumtitle bg-zinc-100 rounded shadow">
						<a href="{catrow.forumrow.U_VIEWFORUM}" class="bg-gradient text-white uppercase rounded px-5 py-1">{catrow.forumrow.FORUM_NAME}</a>
					</div>
					<!-- Compteur sujets et message -->
					<span class="forum_stats">{catrow.forumrow.TOPICS}&nbsp;{L_TOPICS}&nbsp; • &nbsp;{catrow.forumrow.POSTS}&nbsp;{L_POSTS}</span>
				</div>

				<div class="flex">
					<div class="forum_avatar lastpostavatar rounded">
						<!-- Avatar du dernier posteur -->
						<!-- BEGIN avatar -->
						{catrow.forumrow.avatar.LAST_POST_AVATAR}
						<!-- END avatar -->
					</div>
					<div class="px-2" style="flex:9;max-height: 100px;">
						<div class="flex items-center gap-1 mb-1">
							<!-- Titre du dernier message -->
							<!-- BEGIN switch_topic_title -->
							<a href="{catrow.forumrow.U_LATEST_TOPIC}" title="{catrow.forumrow.LATEST_TOPIC_TITLE}" class="lastpost_link">
								{catrow.forumrow.LATEST_TOPIC_NAME}
							</a>
							<!-- END switch_topic_title -->

							<!-- Date et auteur -->      
							{catrow.forumrow.USER_LAST_POST}
						</div>

						<div class="text-justify">{catrow.forumrow.FORUM_DESC}</div>
					</div>
					<div class="flex flex-col hide-decoration" style="flex:3;">
						{catrow.forumrow.L_LINKS}{catrow.forumrow.LINKS}
					</div>
				</div>

				<div>
					{catrow.forumrow.L_LINKS}{catrow.forumrow.LINKS}
				</div>
				
    		<div class="forum_section hidden">
      
              	<!-- image de description -->
              	<div class="img_area overflow-auto rounded">                
              		<!-- Liens de sous-forum -->
                	<span id="subforum">{catrow.forumrow.L_LINKS}{catrow.forumrow.LINKS}</span>
            	</div>
              
          		<!-- Description -->
                <div class="forum_desc text-justify rounded p-2 overflow-auto">{catrow.forumrow.FORUM_DESC}</div>
              
                <div class="forum_avatar lastpostavatar">
                    <!-- Avatar du dernier posteur -->
                    <!-- BEGIN avatar -->
                    {catrow.forumrow.avatar.LAST_POST_AVATAR}
                    <!-- END avatar -->
                </div>
              
				<!-- Conteneur du du dernier message -->
				<div class="forum_lastpost lastpost p-2 rounded">
  					<div class="forum_lastpost_a">
    					<span>
							<!-- Titre du dernier message -->
							<!-- BEGIN switch_topic_title -->
							<a href="{catrow.forumrow.U_LATEST_TOPIC}" title="{catrow.forumrow.LATEST_TOPIC_TITLE}" class="lastpost_link">
								{catrow.forumrow.LATEST_TOPIC_NAME}
							</a><br />
      						<!-- END switch_topic_title -->

							<!-- Date et auteur -->      
							{catrow.forumrow.USER_LAST_POST}
						</span>
					</div>
				</div>
      
				
      			<div class=" hidden forum-img">
	                <!-- Statut du forum : sans réponse, nouvelle réponse, vérouillé -->
	                <img class="forum-img" src="{catrow.forumrow.FORUM_FOLDER_IMG}" />
          		</div>
       		</div>
    	</div>
		<!-- Fin affichage d'un forum -->
	</div>
    <!-- END forumrow -->

<!-- BEGIN tablefoot -->
</div>
<!-- Fin liste des forums -->


</div>
<!-- END tablefoot -->
<!-- END catrow -->
<!-- Fin du conteneur de catégorie -->
