<br />


<!-- Début des interactions par MP -->
<form action="{S_PRIVMSGS_ACTION}" method="post" name="privmsg_list">

    <!---------------------------------->
    <!-- BARRE DE GESTION -------------->
    <!-- MENU DE LA BOITE DE RECEPTION -------------->
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
        <!-- Bouton "nouveau" -->
        <div class="bg-zinc-200 dark:bg-zinc-800 w-fit rounded shadow p-3">
            <a href="/privmsg?mode=post" class="newpm_button text-gradient font-roboto uppercase">
                <i class="ri-send-plane-line mr-1 font-normal"></i>
                Nouveau message privé
            </a>
        </div>
    </div>


    <!------------------------------->
    <!-- LISTE DES MPs -------------->

    <!-- Conteneur-->
    <div class="bg-zinc-200 dark:bg-zinc-800 rounded p-2">

    <!-- Filtrer tous les messsages -->
        <div class="text-right mt-1 mb-3">
            <select name="msgdays" class="p-1 rounded bg-zinc-100 dark:bg-zinc-700">{S_SELECT_MSG_DAYS}</select>&nbsp;
            <input class="button2 p-1 rounded uppercase font-roboto font-normal bg-zinc-100 dark:bg-zinc-700" type="submit" name="submit_msgdays" value="Filtrer" />
        </div>

        <!-- Début d'un message privé -->
        <!-- BEGIN listrow -->
        <div class="flex bg-white dark:bg-zinc-900 shadow rounded items-center p-3 my-4">
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
        <div class="text-center bg-zinc-100 dark:bg-zinc-900 rounded py-2 shadow">{L_NO_MESSAGES}</div>
        <!-- END switch_no_messages -->

        
        <div class="flex mt-3 justify-between">        
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

<div class="my-5 flex justify-between">
    <!-- Bouton "Nouveau" -->
    <div class="bg-zinc-200 dark:bg-zinc-800 w-fit rounded shadow p-3">
        <a href="/privmsg?mode=post" class="newpm_button text-gradient font-roboto uppercase">
            <i class="ri-send-plane-line mr-1 font-normal"></i>
            Nouveau message privé
        </a>
    </div>
  
    <!-- Pagination -->
    <span class="pagination right">{PAGINATION} {PAGE_NUMBER}</span>
</div>


<!-- Sauter vers un forum -->
{JUMPBOX}

<script type="text/javascript">
$(document).ready(function () {
    let user_img = [];
    /* TEST */
    console.log('bonjour');
    
    function applySenderImage($userLink, uID) {
        let $senderImg = $userLink.parent().parent().parent().parent().find('.sender_img');

        if (user_img[uID] !== undefined) {
            console.log('Image trouvée en cache pour uID: ' + uID);
            $senderImg.css('background-image', 'url("' + user_img[uID] + '")');
            
        } else {
            $.get($userLink.attr('href'), function (d) {
                let $avatar = $('#user_avatar img', $(d));
                
                if ($avatar.length) {
                    let img_url = $avatar.attr('src');
                    
                    user_img[uID] = img_url;
                    console.log('Image chargée et mise en cache pour uID: ' + uID);
                    
                    $senderImg.css('background-image', 'url("' + img_url + '")');
                }
            }).fail(function() {
                console.error('Erreur 404 ou autre lors du chargement du profil pour uID: ' + uID);
            }); 
        }
    }
    

    $(".user_sender a[href^=\'/u\']").each(function(){
        let $userLink = $(this);
        let uID = $userLink.attr('href').substring(2).replace("?tt=1", "");
        
        applySenderImage($userLink, uID);
    });

    $(".mp_img img").each(function(){
        if($(this).attr("src").indexOf("new") == -1){
            $(this).parent().parent().find(".sender_img").addClass('grayscale');
        }
    });
});
</script>
            