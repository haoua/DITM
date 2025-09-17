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
            <a href="/privmsg?mode=post" class="newpm_button p-3 text-gradient">Nouveau message privé</a>
        </div>
    </div>


    <!------------------------------->
    <!-- LISTE DES MPs -------------->

    <!-- Conteneur-->
    <div class="bg-zinc-200 rounded p-2">

    <!-- Filtrer tous les messsages -->
        <div class="text-right">
            <select name="msgdays">{S_SELECT_MSG_DAYS}</select>&nbsp;
            <input class="button2" type="submit" name="submit_msgdays" value="Filtrer" />
        </div>

        <!-- Début d'un message privé -->
        <!-- BEGIN listrow -->
        <div class="flex bg-white shadow rounded items-center p-3 my-2">
            <div class="sender_img"></div>
            <!-- Image MP -->
            <div class="mp_img"><img src="{listrow.PRIVMSG_FOLDER_IMG}" /></div>

            <div class="mp_infos">
                <!-- Titre du MP -->
                <a href="{listrow.U_READ}" class="topictitle {listrow.MSG_UNANSWERED}">{listrow.SUBJECT}</a><br />
                <!-- Expéditeur et date -->
                <div><span class="user_sender">{listrow.FROM}</span> - {listrow.DATE}</div>
              
                <!-- Bouton de sélection -->
                <input class="right" type="checkbox" name="mark[]2" value="{listrow.S_MARK_ID}" />
            </div>
        </div>
        <!-- END listrow -->
        <!-- Fin d'un message privé -->

        <!-- Notion "pas de message" -->
        <!-- BEGIN switch_no_messages -->
        <center>{L_NO_MESSAGES}</center>
        <!-- END switch_no_messages -->

      <!-- Capacité de la boîte de réception -->
            <!-- BEGIN switch_box_size_notice -->
            <span>{BOX_SIZE_STATUS}</span>
            <!-- END switch_box_size_notice -->
      
        <!-- Tout sélectionner/déselectionner -->
        <span class="right"><a href="javascript:select_switch_privmsg(true);">{L_MARK_ALL}</a> ou <a href="javascript:select_switch_privmsg(false);">{L_UNMARK_ALL}</a></span>
        <br />
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

<br style="clear:both" />

<script type="text/javascript">
    let user_img = [];
    $(".user_sender a[href^=\'/u\']").each(function(){
        let img;
        let uID = $(this).attr('href').substring(2);
        uID = uID.replace("?tt=1", "");
        if(!user_img[uID]){
            $.get($(this)[0].href, function (d) {
                (a = $('#user_avatar img', $(d))).length;
                console.log(a[0].src);
                img = a[0].src;
                user_img[uID] = img;
            })
        }

        $('.sender_img').html('<img src="'+user_img[uID]+'">')
        /*
        let uID = $(this).attr('href').substring(2);
        let img;
        uID = uID.replace("?tt=1", "");
        if(user_img[uID] === undefined){
            img = $('#user_avatar img', $(this)[0].href).length;
            user_img[uID] = img;
        }else{
            img = user_img[uID];
        }
        console.log('image');
        console.log(img);
        console.log('image');

        $('.sender_img').html(img)

        console.log($(this)[0].href);
        console.log(uID);
        */
    });
$(function () {
  try {
    $.get($('.user_sender a[href^=\'/u\']') [0].href, function (d) {
      (a = $('#user_avatar img', $(d))).length && $('.sender_img').html(a);
      console.log(a[0].src);
    })
  } catch(e) {}
});
</script>
            