<br />

<!----------------------------------------------->
<!-- MENU DE LA BOITE DE RECEPTION -------------->

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



<!-- Début des interactions par MP -->
<form action="{S_PRIVMSGS_ACTION}" method="post" name="privmsg_list">

    <!---------------------------------->
    <!-- BARRE DE GESTION -------------->
    <div class="my-5">
        <!-- Bouton "nouveau" -->
        <div class="bg-white w-fit rounded shadow">
            <a href="/privmsg?mode=post" class="newpm_button p-3 text-gradient">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope-plus" viewBox="0 0 16 16">
                    <path d="M2 2a2 2 0 0 0-2 2v8.01A2 2 0 0 0 2 14h5.5a.5.5 0 0 0 0-1H2a1 1 0 0 1-.966-.741l5.64-3.471L8 9.583l7-4.2V8.5a.5.5 0 0 0 1 0V4a2 2 0 0 0-2-2zm3.708 6.208L1 11.105V5.383zM1 4.217V4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v.217l-7 4.2z"/>
                    <path d="M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0m-3.5-2a.5.5 0 0 0-.5.5v1h-1a.5.5 0 0 0 0 1h1v1a.5.5 0 0 0 1 0v-1h1a.5.5 0 0 0 0-1h-1v-1a.5.5 0 0 0-.5-.5"/>
                </svg>
                Nouveau message privé
            </a>
        </div>
    </div>


    <!------------------------------->
    <!-- LISTE DES MPs -------------->

    <!-- Conteneur-->
    <div class="bg-zinc-200 rounded p-2">

    <!-- Filtrer tous les messsages -->
        <div class="text-right mt-1 mb-3">
            <select name="msgdays">{S_SELECT_MSG_DAYS}</select>&nbsp;
            <input class="button2" type="submit" name="submit_msgdays" value="Filtrer" />
        </div>

        <!-- Début d'un message privé -->
        <!-- BEGIN listrow -->
        <div class="flex bg-white shadow rounded items-center p-3 my-4">
            <!-- Image MP -->
            <div class="mp_img">
                <img class="h-14" src="{listrow.PRIVMSG_FOLDER_IMG}" />
            </div>

            <div class="sender_img w-14 h-14 bg-cover rounded shadow p-1 bg-zinc-200 mx-3">
                <div class="w-full h-full border rounded"></div>
            </div>


            <div class="mp_infos flex flex-1">
                <div class="flex-1">
                    <!-- Titre du MP -->
                    <a href="{listrow.U_READ}" class="topictitle {listrow.MSG_UNANSWERED}">{listrow.SUBJECT}</a><br />
                    <!-- Expéditeur et date -->
                    <span class="user_sender">{listrow.FROM}</span> - {listrow.DATE}
                </div>
              
                <!-- Bouton de sélection -->
                <input class="right" type="checkbox" name="mark[]2" value="{listrow.S_MARK_ID}" />
            </div>
        </div>
        <!-- END listrow -->
        <!-- Fin d'un message privé -->

        <!-- Notion "pas de message" -->
        <!-- BEGIN switch_no_messages -->
        <div class="text-center">{L_NO_MESSAGES}</div>
        <!-- END switch_no_messages -->

        
        <div class="flex mt-3">        
        <!-- Capacité de la boîte de réception -->
            <!-- BEGIN switch_box_size_notice -->
            <span>{BOX_SIZE_STATUS}</span>
            <!-- END switch_box_size_notice -->
      
            <!-- Tout sélectionner/déselectionner -->
            <span class="right"><a href="javascript:select_switch_privmsg(true);">{L_MARK_ALL}</a> ou <a href="javascript:select_switch_privmsg(false);">{L_UNMARK_ALL}</a></span>    
        </div>
    </div>


    <br />
    <!----------------------------------------------->
    <!-- BOUTONS DE GESTION -------------->

    <div>
        {S_HIDDEN_FIELDS}
        <!-- BEGIN switch_save -->
        <input class="button1" type="submit" name="save" value="{L_SAVE_MARKED}" />&nbsp;&nbsp;
        <!-- END switch_save -->
        <!-- BEGIN switch_move_profile -->
        <input class="button1" type="submit" name="moveprofile" value="{L_MOVE_PROFILE_MARKED}" />&nbsp;&nbsp;
        <!-- END switch_move_profile -->
        <!-- BEGIN switch_mark_as_read -->
        <input class="button2" type="submit" name="mark_as_read" value="{switch_mark_as_read.L_MARK_AS_READ}" />&nbsp;&nbsp;
        <input class="button2" type="submit" name="mark_as_unread" value="{switch_mark_as_read.L_MARK_AS_UNREAD}" />&nbsp;&nbsp;
        <!-- END switch_mark_as_read -->
        <input class="button2" type="submit" name="delete" value="{L_DELETE_MARKED}" />&nbsp;&nbsp;
        <input class="button2" type="submit" name="deleteall" value="{L_DELETE_ALL}" />
    </div>


</form>
<!-- Fin des interactions par MP -->


<!----------------------------------------------->
<!-- BARRE DE GESTION -------------->

<div class="links_bar">
    <!-- Bouton "Nouveau" -->
    <a href="/privmsg?mode=post" class="newpm_button buttons">Nouveau message privé</a>
  
    <!-- Pagination -->
    <span class="pagination right">{PAGINATION} {PAGE_NUMBER}</span>
</div>


<!-- Sauter vers un forum -->
{JUMPBOX}

<script type="text/javascript">
    /* On affiche l'avatar de l'utilisateur qui a envoyé un message  */
    let user_img = [];
    $(".user_sender a[href^=\'/u\']").each(function(){
        let img;
        let uID = $(this).attr('href').substring(2);
        uID = uID.replace("?tt=1", "");
        console.log('uID = '+uID);
        if(user_img[uID] === undefined){
            console.log("non");
            $.get($(this)[0].href, function (d) {
                (a = $('#user_avatar img', $(d))).length && (user_img = handleUserImage(a[0].src, user_img, uID)) && console.log(user_img);
            });       
        }else{
            console.log('oui');
            handleUserImage(user_img[uID])
        }
    });

    $(".mp_img img").each(function(){
        if($(this).attr("src").indexOf("new") == -1){
            $(this).parent().parent().find(".sender_img").addClass('grayscale');
        }
    });


    function handleUserImage(img_url, imgs_array = [], uID = 0){
        if(uID != 0){
            imgs_array[uID] = img_url;
        }
        $('.sender_img').css('background-image', 'url("'+img_url+'")');
        return imgs_array;
    }
</script>
            