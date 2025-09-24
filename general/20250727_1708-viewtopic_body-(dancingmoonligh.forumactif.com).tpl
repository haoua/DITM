<br />

 

<!----------------------------------------------->
<!-- BOUTONS NOUVEAU SUJET ET REPONDRE ---------->

<div class="mb-3 flex justify-end gap-2">
        <!-- Boutons : nouveau -->
        <!-- BEGIN switch_user_authpost -->
        <div class="bg-white dark:bg-zinc-900 rounded">
            <a class="text-gradient px-2 py-1 uppercase font-roboto" href="{U_POST_NEW_TOPIC}" rel="nofollow" title="{T_POST_NEW_TOPIC}">{L_POST_NEW_TOPIC}</a>&nbsp;
        </div>        
        <!-- END switch_user_authpost -->

        <!-- Bouton : répondre -->
        <!-- BEGIN switch_user_authreply -->
        <div class="bg-gray-200 dark:bg-zinc-900 rounded">
            <a class="text-gradient px-2 py-1 uppercase font-roboto" href="{U_POST_REPLY_TOPIC}" title="{T_POST_REPLY_TOPIC}">{L_POST_REPLY_TOPIC}</a>
        </div>
        <!-- END switch_user_authreply -->

</div>

<!----------------------------------------------->
<!-- MESSAGE -------------->
<!--Titre du poste -->
<div class="shadow mb-6 rounded bg-zinc-200 dark:bg-zinc-800">
    <div class="title_container bg-gradient rounded-t">
        <h1 class="page-title font-roboto py-4">{TOPIC_TITLE}</h1>
    </div>
    <div class="rounded-b flex justify-between items-center px-3 py-2 dark:text-gray-300">
        <div class="text-xs">
            <!-- Chaîne de lien : Catégorie > Forum > Sous-fo -->
            <span class="navigation_chain">
                {NAV_CAT_DESC}
            </span>

        </div>

        <!-- Pagination -->
        <div class="pagination">
            {PAGINATION}
        </div>
    </div>
</div>
<!-- Affichage d'un message -->
<!-- BEGIN postrow -->
<!-- BEGIN displayed -->
<div class="post DITM_post_row post--{postrow.displayed.U_POST_ID} shadow rounded mb-5 bg-zinc-200 dark:bg-zinc-800" id="{postrow.displayed.U_POST_ID}" data-postID="{postrow.displayed.U_POST_ID}">
    <div class="flex justify-between py-4 px-8 rounded-t items-center hidden">
        <div>
            <!-- Pseudo -->
            <div class="post_pseudo">{postrow.displayed.POSTER_NAME}</div>
            
            <!-- Rang -->
            <div class="post_rank">
                {postrow.displayed.POSTER_RANK_NEW}
            </div>
        </div>

        <img src="" alt="" class="user_secondary_image rounded-full border-4 border-white hidden" style="width: 100px;" id="user_sec_img_{postrow.displayed.U_POST_ID}">
    </div>

    <div class="flex">
        <div class="flex p-4 gap-2">
            <!-- Citer -->
            <a href="{postrow.displayed.QUOTE_URL}" class="border p-4 bg-white text-one" style="border-color:rgba(var(--one), 1);">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chat-left-quote" viewBox="0 0 16 16">
                    <path d="M14 1a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H4.414A2 2 0 0 0 3 11.586l-2 2V2a1 1 0 0 1 1-1zM2 0a2 2 0 0 0-2 2v12.793a.5.5 0 0 0 .854.353l2.853-2.853A1 1 0 0 1 4.414 12H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2z"/>
                    <path d="M7.066 4.76A1.665 1.665 0 0 0 4 5.668a1.667 1.667 0 0 0 2.561 1.406c-.131.389-.375.804-.777 1.22a.417.417 0 1 0 .6.58c1.486-1.54 1.293-3.214.682-4.112zm4 0A1.665 1.665 0 0 0 8 5.668a1.667 1.667 0 0 0 2.561 1.406c-.131.389-.375.804-.777 1.22a.417.417 0 1 0 .6.58c1.486-1.54 1.293-3.214.682-4.112z"/>
                </svg>
            </a>

            <!-- Editer -->
            <a href="{postrow.displayed.EDIT_URL}" class="border p-4 bg-white text-one" style="border-color:rgba(var(--one), 1);">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pen" viewBox="0 0 16 16">
                    <path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001m-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708z"/>
                </svg>
            </a>

            <!-- Supprimer -->
            <a href="{postrow.displayed.DELETE_URL}" class="border p-4 bg-white text-one" style="border-color:rgba(var(--one), 1);">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                    <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5m2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5m3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0z"/>
                    <path d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4zM2.5 3h11V2h-11z"/>
                </svg>
            </a>

            <!-- IP -->
            <a href="{postrow.displayed.IP_URL}" class="border p-4 bg-white text-one" style="border-color:rgba(var(--one), 1);">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-globe" viewBox="0 0 16 16">
                    <path d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m7.5-6.923c-.67.204-1.335.82-1.887 1.855A8 8 0 0 0 5.145 4H7.5zM4.09 4a9.3 9.3 0 0 1 .64-1.539 7 7 0 0 1 .597-.933A7.03 7.03 0 0 0 2.255 4zm-.582 3.5c.03-.877.138-1.718.312-2.5H1.674a7 7 0 0 0-.656 2.5zM4.847 5a12.5 12.5 0 0 0-.338 2.5H7.5V5zM8.5 5v2.5h2.99a12.5 12.5 0 0 0-.337-2.5zM4.51 8.5a12.5 12.5 0 0 0 .337 2.5H7.5V8.5zm3.99 0V11h2.653c.187-.765.306-1.608.338-2.5zM5.145 12q.208.58.468 1.068c.552 1.035 1.218 1.65 1.887 1.855V12zm.182 2.472a7 7 0 0 1-.597-.933A9.3 9.3 0 0 1 4.09 12H2.255a7 7 0 0 0 3.072 2.472M3.82 11a13.7 13.7 0 0 1-.312-2.5h-2.49c.062.89.291 1.733.656 2.5zm6.853 3.472A7 7 0 0 0 13.745 12H11.91a9.3 9.3 0 0 1-.64 1.539 7 7 0 0 1-.597.933M8.5 12v2.923c.67-.204 1.335-.82 1.887-1.855q.26-.487.468-1.068zm3.68-1h2.146c.365-.767.594-1.61.656-2.5h-2.49a13.7 13.7 0 0 1-.312 2.5m2.802-3.5a7 7 0 0 0-.656-2.5H12.18c.174.782.282 1.623.312 2.5zM11.27 2.461c.247.464.462.98.64 1.539h1.835a7 7 0 0 0-3.072-2.472c.218.284.418.598.597.933M10.855 4a8 8 0 0 0-.468-1.068C9.835 1.897 9.17 1.282 8.5 1.077V4z"/>
                </svg>
            </a>
        </div>
        <ul class="flex gap-1 mr-1 hidden">
            <li class="btn-quote">
                <a href="{postrow.displayed.QUOTE_URL}" class="hover:color-one">
                    Citer
                </a>
            </li>
            <li class="btn-edit">   
                <a href="{postrow.displayed.EDIT_URL}">
                    Editer
                </a>
            </li>
            <li class="btn-delete">
                <a href="{postrow.displayed.DELETE_URL}">
                    Supprimer
                </a>
            </li>
            <li class="btn-ip">
                <a href="{postrow.displayed.IP_URL}">
                    IP
                </a>
            </li>
        </ul>

        <div>
            {postrow.displayed.POSTER_NAME}
        </div>
    </div>

    <!-- Contenenur des messages -->
    <div class="containersujet flex">
        <!-- Colonne de profil -->
        <div id="profile{postrow.displayed.U_POST_ID}" class="DITM_post_profile flex flex-col rounded bg-white p-2 m-2 mt-0 items-center">
            <!-- Avatar -->
            <div class="post_avatar relative">
                {postrow.displayed.POSTER_AVATAR}
                <!-- En ligne -->
                <div class="{postrow.displayed.ONLINE_IMG_NEW} absolute bg-green-400 h-4 w-4 rounded-full border-2 border-white" style="bottom: 0px;right: 0px;"></div>
            </div>

            <br />
            
            <div class="DITM_post_userinfo rounded p-3 overflow-auto w-full">
               
               <!-- Champs de profil -->
                <!-- BEGIN profile_field -->
                    <div class="user_field">
                        <!-- Label d'un champs de profil -->
                        <span class="field_label uppercase font-roboto font-medium" style="color: rgba(var(--one), 1);">{postrow.displayed.profile_field.LABEL}</span>
                      
                        <!-- Contenu d'un champs de profil -->
                        <span class="field_content">{postrow.displayed.profile_field.CONTENT}</span>
                      
                        <!-- Séparateur entre champs de profil -->                      
                        <span class="field_separator">{postrow.displayed.profile_field.SEPARATOR}</span>
                    </div>
                <!-- END profile_field -->
                <!-- Fin de champs de profil -->

                <!-- Récompenses -->
                <div {postrow.displayed.AWARDS_SHOW} id="list_awards">
                    {postrow.displayed.AWARDS}
                </div>
                <div class="award_more"></div>

                <!-- Champs de profil de la feuille de personnage -->
                {postrow.displayed.POSTER_RPG}

            </div>

            <br />

            <!-- Lien de contact -->
            <div class="post_contact">
                {postrow.displayed.PM_IMG} &nbsp; <!-- MP -->
                <!-- Autre contact-->
                <!-- BEGIN contact_field -->
                {postrow.displayed.contact_field.CONTENT} <!-- Autre champs de contact -->
                <!-- END contact_field -->
            </div>
        </div> <!-- Fin colonne profil -->
        
        <!-- Conteneur informations du message-->
        <div class="DITM_post_content_right pt-0 p-2 flex-1 rounded">
            <div class="DITM_post_details p-1 flex items-center rounded-t bg-gradient-500 text-white">
                <span class="post_date">
                    <!-- Lien d'ancre vers le message -->
                    <a href="{postrow.displayed.POST_URL}">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-link-45deg" viewBox="0 0 16 16">  
                            <path d="M4.715 6.542 3.343 7.914a3 3 0 1 0 4.243 4.243l1.828-1.829A3 3 0 0 0 8.586 5.5L8 6.086a1 1 0 0 0-.154.199 2 2 0 0 1 .861 3.337L6.88 11.45a2 2 0 1 1-2.83-2.83l.793-.792a4 4 0 0 1-.128-1.287z"></path>
                            <path d="M6.586 4.672A3 3 0 0 0 7.414 9.5l.775-.776a2 2 0 0 1-.896-3.346L9.12 3.55a2 2 0 1 1 2.83 2.83l-.793.792c.112.42.155.855.128 1.287l1.372-1.372a3 3 0 1 0-4.243-4.243z"></path>
                        </svg>
                    </a>
                    &nbsp;
                    <!-- Date du message -->
                    <time>{postrow.displayed.POST_DATE_NEW}</time>
                </span>
              
                <!-- Boutons d'édition de message -->
                <ul class="flex gap-1 mr-1">
                    <li class="btn-quote">
                        <a href="{postrow.displayed.QUOTE_URL}" class="hover:color-one">
                            Citer
                        </a>
                    </li>
                    <li class="btn-edit">
                        <a href="{postrow.displayed.EDIT_URL}">
                            Editer
                        </a>
                    </li>
                    <li class="btn-delete">
                        <a href="{postrow.displayed.DELETE_URL}">
                            Supprimer
                        </a>
                    </li>
                    <li class="btn-ip">
                        <a href="{postrow.displayed.IP_URL}">
                            IP
                        </a>
                    </li>
                </ul>
          
                <!-- Conteneur du bouton like -->
                <!-- BEGIN switch_likes_active -->
                <div class="like_button">
                    <!-- Bouton "j'aime" -->
                    <button class="rep-button rounded py-1 px-4 {postrow.displayed.switch_likes_active.C_VOTE_LIKE}" data-href="{postrow.displayed.switch_likes_active.U_VOTE_LIKE}" data-href-rm="{postrow.displayed.switch_likes_active.U_VOTE_RM_LIKE}" style="background-color: rgba(var(--three), 1);">
                        <!-- Texte "j'aime" -->
                        <span class="like_text">{postrow.displayed.switch_likes_active.L_LIKE}</span>
                        <!-- Compte des "j'aime" -->
                        {postrow.displayed.switch_likes_active.COUNT_VOTE_LIKE}

                    </button>
                </div>
                <!-- END switch_likes_active -->
                <!-- Fin du bouton like -->


            </div>
            <!-- Fin détails -->

            <!-- Contenu du message -->
            <div class="post_message postbody content rounded-b p-6">
                <div>{postrow.displayed.MESSAGE}</div>

                <!-- Signature -->
                <!-- BEGIN switch_signature -->
                <div class="signature_div" id="sig{postrow.displayed.U_POST_ID}">
                    {postrow.displayed.SIGNATURE_NEW}
                </div>
                <!-- END switch_signature -->
            </div>
        </div>
        <!-- Fin du contenu du message -->
    </div>

</div>
    <!-- END displayed -->
    <!-- END postrow -->
    <!-- Fin affichage d'un message -->


<!-- Fin des messages -->

<!---------------------------------->
<!-- BARRE DE GESTION -------------->


<div class="links_bar">
  
        <!-- Lien "surveiller le sujet" -->
        <!-- BEGIN switch_user_logged_in -->
        <!-- BEGIN watchtopic -->
        <span class="specials_links">{S_WATCH_TOPIC}</span>
        <!-- END watchtopic -->
        <!-- END switch_user_logged_in -->
        
        <!-- BEGIN switch_plus_menu -->
        <!-- Lien "sujets surveillés" -->
        &nbsp;<a class="specials_links" href="{U_WATCHSEARCH_JS_PLUS_MENU}">Sujets surveillés</a>
        <!-- END switch_plus_menu -->

    <!-- Pagination -->
    <!-- BEGIN topicpagination -->
    <span class="pagination right">{PAGINATION}</span>
    <!-- END topicpagination -->

</div>


<!----------------------------------------------->
<!-- REGLES DE LA CATEGORIE (si activé) --------->

<!-- BEGIN switch_forum_rules -->
<div class="panel" id="forum_rules">

    <!-- Titre "règlement" -->
    <div class="h3">{L_FORUM_RULES}</div>

    <!-- Règlement -->
    <div class="postbody">
        <!-- Image du règlement -->
        <!-- BEGIN switch_forum_rule_image -->
        <img class="left logo" src="{RULE_IMG_URL}" alt="" />
        <!-- END switch_forum_rule_image -->

        <!-- Contenu -->
        {RULE_MSG}
    </div>

</div>
<!-- END switch_forum_rules -->


<!-------------------------------->
<!-- REPONSE RAPIDE -------------->

<div class="bg-zinc-200 rounded shadow quickreply p-2" id="quickreply_content">
    <!-- BEGIN switch_user_logged_in -->
        {QUICK_REPLY_FORM}
    <!-- END switch_user_logged_in -->
</div>


<!---------------------------------->
<!-- BARRE DE GESTION -------------->


<div class="links_bar">
        <!-- Boutons : nouveau -->
        <!-- BEGIN switch_user_authpost -->
        <a class="buttons" href="{U_POST_NEW_TOPIC}" rel="nofollow" title="{T_POST_NEW_TOPIC}">{L_POST_NEW_TOPIC}</a>&nbsp;
        <!-- END switch_user_authpost -->

        <!-- Bouton : répondre -->
        <!-- BEGIN switch_user_authreply -->
        <a class="buttons" href="{U_POST_REPLY_TOPIC}" title="{T_POST_REPLY_TOPIC}">{L_POST_REPLY_TOPIC}</a>
        <!-- END switch_user_authreply -->

    <!-- BEGIN switch_plus_menu -->
    <span class="right">
        <a href="{U_FAVOURITE_JS_PLUS_MENU}">Ajouter le sujet à ses favoris</a>
    </span>
  <!-- END switch_plus_menu -->

</div>

<br/>

<!-------------------------------------------->
<!-- SAUTER VERS UN AUTRE FORUM -------------->


<form action="{S_JUMPBOX_ACTION}" method="get" onsubmit="if(document.jumpbox.f.value == -1){return false;}" class="left">
    <fieldset class="jumpbox">
        <label>{L_JUMP_TO}:&nbsp;</label>
        {S_JUMPBOX_SELECT}&nbsp;
        <input class="button2" type="submit" value="{L_GO}" />
    </fieldset>
</form>


<!----------------------------------------------->
<!-- BOUTONS DE MODERATION -------------->

<!-- BEGIN viewtopic_bottom -->
<form method="get" action="{S_FORM_MOD_ACTION}" class="right">
    <fieldset class="quickmod">
        <input type="hidden" name="t" value="{TOPIC_ID}" />

        <!-- <input type="hidden" name="sid" value="{S_SID}" /> -->
        <input type="hidden" name="{SECURE_ID_NAME}" value="{SECURE_ID_VALUE}" />
        <label>{L_MOD_TOOLS}:&nbsp;</label>
        {S_SELECT_MOD}&nbsp;
        <input class="button2" type="submit" value="{L_GO}" />
    </fieldset>
  <span class="right">{S_TOPIC_ADMIN}</span>
</form>
<!-- END viewtopic_bottom -->



<div class="clear"></div>

<script>
//<![CDATA[
    $( window ).on( "load", function() {
        $(".post").each(function(){
            let img = $(this).find(".field-ta-bouille img").attr("src");
            if(img !== undefined){
                $(this).find(".user_secondary_image").attr("src", img);
                $(this).find(".user_secondary_image").removeClass("hidden");
                $(this).find(".field-ta-bouille").addClass("hidden");
            }
        });
    });
//]]>
</script>

<!-- Script image recadré -->
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


<!-- BEGIN switch_plus_menu -->
<script type="text/javascript">
    //<![CDATA[
    var multiquote_img_off = '{JS_MULTIQUOTE_IMG_OFF}',
        multiquote_img_on = '{JS_MULTIQUOTE_IMG_ON}';
    //]]>
</script>
<!-- END switch_plus_menu -->
<script type="text/javascript">
    //<![CDATA[
    var hiddenMsgLabel = {
        visible: '{JS_HIDE_HIDDEN_MESSAGE}',
        hidden: '{JS_SHOW_HIDDEN_MESSAGE}'
    };
    showHiddenMessage = function(id) {
        try {
            var regId = parseInt(id, 10);
            if (isNaN(regId)) {
                regId = 0;
            }

            if (regId > 0) {
                $('.post--' + id).toggle(0, function() {
                    if ($(this).is(":visible")) {
                        $('#hidden-title--' + id).html(hiddenMsgLabel.visible);
                    } else {
                        $('#hidden-title--' + id).html(hiddenMsgLabel.hidden);
                    }
                });
            }
        } catch (e) {}

        return false;
    };

    //]]>

</script>