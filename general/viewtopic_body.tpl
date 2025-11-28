<br />

<!----------------------------------------------->
<!-- BOUTONS NOUVEAU SUJET ET REPONDRE ---------->

<div class="mb-3 flex justify-end gap-2">
        <!-- Boutons : nouveau -->
        <!-- BEGIN switch_user_authpost -->
        <a class="bg-gradient hover:bg-white rounded py-1 px-3 text-white font-roboto uppercase shadow flex items-center" href="{U_POST_NEW_TOPIC}" accesskey="n" rel="nofollow">
            <i class="ri-file-add-line mr-1 font-normal"></i> Poster un nouveau sujet
        </a>
        <!-- END switch_user_authpost -->

        <!-- Bouton : répondre -->
        <!-- BEGIN switch_user_authreply -->
        <a class="bg-gradient hover:bg-none hover:bg-white dark:hover:bg-zinc-800 rounded py-1 px-3 text-white font-roboto uppercase shadow flex items-center" href="{U_POST_REPLY_TOPIC}" title="{T_POST_REPLY_TOPIC}">
            <i class="ri-reply-line mr-1 font-normal"></i> {L_POST_REPLY_TOPIC}
        </a>
        <!-- END switch_user_authreply -->
</div>

<!----------------------------------------------->
<!-- MESSAGE ------------------------------------>
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
<!-- Details -->
<div class="shadow bg-zinc-200 dark:bg-zinc-800 rounded">
    <div class="DITM_post_details p-2 flex justify-between items-center rounded-t bg-gradient-500 text-white">
        <span class="post_date">
            <!-- Lien d'ancre vers le message -->
            <a href="{postrow.displayed.POST_URL}">
                <i class="ri-link"></i>
            </a>
            &nbsp;
            <!-- Date du message -->
            <time>{postrow.displayed.POST_DATE_NEW}</time>
        </span>
                
        <!-- Conteneur du bouton like -->
        <!-- BEGIN switch_likes_active -->
        <div class="like_button">
            <!-- Bouton "j'aime" -->
            <button class="rep-button rounded py-1 px-2 font-bold font-roboto uppercase {postrow.displayed.switch_likes_active.C_VOTE_LIKE}" data-href="{postrow.displayed.switch_likes_active.U_VOTE_LIKE}" data-href-rm="{postrow.displayed.switch_likes_active.U_VOTE_RM_LIKE}" style="background-color: rgba(var(--three), 1);">
                <!-- Texte "j'aime" -->
                <i class="ri-poker-hearts-line mr-1"></i>
                <i class="ri-poker-hearts-fill mr-1"></i>

                <span class="like_text">{postrow.displayed.switch_likes_active.L_LIKE}</span>
                <!-- Compte des "j'aime" -->
                {postrow.displayed.switch_likes_active.COUNT_VOTE_LIKE}
            </button>
        </div>
        <!-- END switch_likes_active -->
        <!-- Fin du bouton like -->


    </div>
    <!-- Fin détails -->

    <div class="post DITM_post_row post--{postrow.displayed.U_POST_ID} rounded-b mb-5" id="{postrow.displayed.U_POST_ID}" data-postID="{postrow.displayed.U_POST_ID}">
        <div class="flex justify-between py-4 px-2 rounded-t items-center hidden">
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

        <div class="flex items-center justify-between p-4 px-2">
            <div class="postrow__poster-name font-yeseva text-2xl">
                {postrow.displayed.POSTER_NAME}
            </div>

            <div class="flex gap-2">
                <!-- Citer -->
                <a href="{postrow.displayed.QUOTE_URL}" class="rounded p-4 bg-two font-normal text-white h-14 w-14 flex items-center text-2xl justify-center">
                    <i class="ri-double-quotes-l"></i>
                </a>

                <!-- Editer -->
                <a href="{postrow.displayed.EDIT_URL}" class="rounded p-4 bg-two font-normal text-white h-14 w-14 flex items-center text-2xl justify-center">
                    <i class="ri-edit-2-line"></i>
                </a>

                <!-- Supprimer -->
                <a href="{postrow.displayed.DELETE_URL}" class="rounded p-4 bg-two font-normal text-white h-14 w-14 flex items-center text-2xl justify-center">
                    <i class="ri-chat-delete-line"></i>
                </a>

                <!-- IP -->
                <a href="{postrow.displayed.IP_URL}" class="rounded p-4 bg-two font-normal text-white h-14 w-14 flex items-center text-2xl justify-center">
                    <i class="ri-router-line"></i>
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
        </div>

        <!-- Contenenur des messages -->
        <div class="containersujet flex">
            <!-- Colonne de profil -->
            <div id="profile{postrow.displayed.U_POST_ID}" class="DITM_post_profile flex flex-col rounded bg-white dark:bg-zinc-900 p-2 m-2 mt-0 items-center">
                <!-- Avatar -->
                <div class="post_avatar relative">
                    {postrow.displayed.POSTER_AVATAR}
                    <!-- En ligne -->
                    <div class="{postrow.displayed.ONLINE_IMG_NEW} absolute bg-green-400 h-4 w-4 rounded-full border-2 border-white dark:border-zinc-900 hidden" style="bottom: -2px;right: -2px;"></div>
                    <div class="absolute flex flex-col w-full h-full top-0 bg-zinc-100 dark:bg-zinc-700 rounded opacity-0 transition-all duration-300 ease-in-out translate-y-full">
                        <div class="post_rank bg-gradient uppercase text-white p-2 rounded-t">
                            <div class="border p-2 rounded-t">
                                {postrow.displayed.POSTER_RANK_NEW}
                            </div>
                        </div>
                        <div class="p-2 flex flex-col gap-2" style="height: 83%;">
                            <div class="flex gap-2">
                                <div class="w-1/2" style="height: 92px;">
                                    <img src="https://64.media.tumblr.com/ceac39dd9ca3c9d08a21eb2469774a13/50c3d4c7f402cba8-53/s400x600/f6ad1c4a7d041f51b9501c2c43b2e0b7b66bb3c9.jpg" alt="" class="profile_picture w-full h-full object-center object-cover">
                                </div>
                                <div class="flex-1 flex flex-col gap-1">
                                    <div class="flex gap-1 h-1/2">
                                        <a class="message__profile-links-pres opacity-0 bg-gradient text-white rounded w-1/2 flex items-center justify-around" style="height: 40px;" href="#">
                                            <i class="bi bi-person-vcard"></i>
                                        </a>
                                        <a class="message__profile-links-lien opacity-0 bg-gradient text-white rounded w-1/2 flex items-center justify-around" style="height: 40px;" href="#">
                                            <i class="bi bi-link-45deg"></i>
                                        </a>
                                    </div>
                                    <div class="flex gap-1 h-1/2">
                                        <a class="message__profile-links-insta opacity-0 bg-gradient text-white rounded w-1/2 flex items-center justify-around" style="height: 40px;" href="#">
                                            <i class="bi bi-instagram"></i>
                                        </a>
                                        <a class="message__profile-links-tinder opacity-0 bg-gradient text-white rounded w-1/2 flex items-center justify-around" style="height: 40px;" href="#">
                                            <i class="bi bi-fire"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="h-1/3 text-justify bg-white dark:bg-zinc-800 shadow p-1 rounded pt-0 overflow-auto">
                                <span class="text-gradient font-roboto font-bold font-medium">triggers warning :</span> <span class="viewtopic_body__profile-triggers"></span>
                            </div>

                            <div class="h-1/3 text-justify bg-white dark:bg-zinc-800 shadow p-1 rounded pt-0 overflow-auto">
                                <span class="text-gradient font-roboto font-bold font-medium">content warning :</span> <span class="viewtopic_body__profile-content-warning"></span>
                            </div>
                        </div>
                    </div>
                </div>

                <br />
                
                <div class="DITM_post_userinfo rounded overflow-auto w-full text-justify max-h-96 mt-5">
                
                    <!-- Champs de profil -->
                    <!-- BEGIN profile_field -->
                        <div class="user_field">
                            <!-- Label d'un champs de profil -->
                            <span class="field_label uppercase font-roboto font-medium text-two">{postrow.displayed.profile_field.LABEL}</span>
                        
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
                    <a href="" class="viewtopic_body__contact-dm uppercase bg-gradient w-full inline-block px-2 py-1 rounded shadow text-white">Envoyer un mp</a>
                    {postrow.displayed.PM_IMG} <!-- MP -->
                    <!-- Autre contact-->
                    <div class="viewtopic_body__contact_links hidden">
                        <!-- BEGIN contact_field -->
                        {postrow.displayed.contact_field.CONTENT} <!-- Autre champs de contact -->
                        <!-- END contact_field -->
                    </div>
                </div>
            </div> <!-- Fin colonne profil -->
            
            <!-- Conteneur informations du message-->
            <div class="DITM_post_content_right flex-1 rounded">

                <!-- Contenu du message -->
                <div class="bg-white dark:bg-zinc-900 postbody content rounded p-6 mr-2 mb-2">
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
</div>
<!-- END displayed -->
<!-- END postrow -->
<!-- Fin affichage d'un message -->

<!-- Fin des messages -->

<!---------------------------------->
<!-- BARRE DE GESTION -------------->


<div class="my-5">

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

<div class="bg-zinc-200 dark:bg-zinc-800 rounded shadow quickreply p-2" id="quickreply_content">
    <!-- BEGIN switch_user_logged_in -->
        {QUICK_REPLY_FORM}
    <!-- END switch_user_logged_in -->
</div>


<!---------------------------------->
<!-- BARRE DE GESTION -------------->


<div class="my-5 flex justify-between">
    <!-- Boutons : nouveau -->
    <div class="flex gap-2">
        <!-- BEGIN switch_user_authpost -->
        <a class="bg-gradient hover:bg-white rounded py-1 px-3 text-white font-roboto uppercase shadow flex items-center" href="{U_POST_NEW_TOPIC}" accesskey="n" rel="nofollow">
            <i class="ri-file-add-line mr-1 font-normal"></i> {L_POST_REPLY_TOPIC}
        </a>

        <!-- END switch_user_authpost -->

        <!-- Bouton : répondre -->
        <!-- Bouton : répondre -->
        <!-- BEGIN switch_user_authreply -->
        <a class="bg-gradient hover:bg-none hover:bg-white dark:hover:bg-zinc-800 rounded py-1 px-3 text-white font-roboto uppercase shadow flex items-center" href="{U_POST_REPLY_TOPIC}" title="{T_POST_REPLY_TOPIC}">
            <i class="ri-reply-line mr-1 font-normal"></i> {L_POST_REPLY_TOPIC}
        </a>
        <!-- END switch_user_authreply -->
    </div>
    
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
<span class="right hidden">{S_TOPIC_ADMIN}</span>
</form>
<!-- END viewtopic_bottom -->



<div class="clear"></div>

<script>
//<![CDATA[
    $( window ).on( "load", function() {
        $(".online").each(function(){
            $(this).removeClass('hidden');
        });
        
        $(".post").each(function(){
            /* Warning et triggers */
            $('.viewtopic_body__profile-triggers').text($('.user_field.field-triggers span.field_content').text());
            $('.viewtopic_body__profile-content-warning').text($('.user_field.field-warnings span.field_content').text());
            $('.user_field.field-triggers span.field_content').parent().addClass('hidden');
            $('.user_field.field-warnings span.field_content').parent().addClass('hidden');


            $(this).find('.viewtopic_body__contact-dm').attr('href', $(this).find('.post_contact .profile-icon').attr('href'));
            $(this).find('.post_contact .profile-icon').addClass('hidden');
            let $postContainer = $(this); 
            
            let img = $(this).find(".field-ta-bouille img").attr("src");
            if(img !== undefined){
                $(this).find(".profile_picture").attr('src', img);
                $(this).find(".field-ta-bouille").addClass("hidden");
            }

            $('.field-date-dinscription .field_label').text("Inscription");

            $(this).find('.viewtopic_body__contact_links a').each(function (index, element){
                let link_img_url = element.firstChild.src;
                if(link_img_url.indexOf('www') != -1){
                    $postContainer.find('.message__profile-links-pres').removeClass('opacity-0');
                    $postContainer.find('.message__profile-links-pres').attr('href', $(this).attr('href'));
                }

                if(link_img_url.indexOf('fb') != -1){
                    $postContainer.find('.message__profile-links-lien').removeClass('opacity-0');
                    $postContainer.find('.message__profile-links-lien').attr('href', $(this).attr('href'));
                }

                if(link_img_url.indexOf('twitter') != -1){
                    $postContainer.find('.message__profile-links-insta').removeClass('opacity-0');
                    $postContainer.find('.message__profile-links-insta').attr('href', $(this).attr('href'));
                }

                if(link_img_url.indexOf('pinterest') != -1){
                    $postContainer.find('.message__profile-links-tinder').removeClass('opacity-0');
                    $postContainer.find('.message__profile-links-tinder').attr('href', $(this).attr('href'));
                }

            }); 
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
    /*<![CDATA[*/
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
        } catch (e) {
        }

        return false;
    };
    /* //]]> */
</script>