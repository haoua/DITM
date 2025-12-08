<br/>{ERROR_BOX}

<form action="{S_POST_ACTION}" method="post" name="post" enctype="multipart/form-data">

    <!----------------------------------------------->
    <!-- ENTETE DE LA PAGE -------------->

    <!--Titre de la page -->
    <div class="title_container">
        <h1 class="DITM_page_title font-bold text-white text-center uppercase bg-gradient rounded-t py-2">{L_POST_A}</h1>
    </div>

    <div class="bg-zinc-200 dark:bg-zinc-800 rounded-b p-2">
        <!-- Affichage de la prévisualisation (template : posting_topic_review ) -->
        {POST_PREVIEW_BOX}

        <!----------------------------------------------->
        <!-- REGLES DE LA CATEGORIE (si activé) -------------->

        <!-- BEGIN switch_forum_rules -->
        <div class="panel" id="forum_rules">

            <!-- Titre "règlement" -->
            <h3>{L_FORUM_RULES}</h3>

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


        <!----------------------------------------------->
        <!-- AVERTISSEMENT (si trop de citation) -------------->

        <!-- BEGIN switch_quote_limit -->
        <div class="post">
            <br />
            <p class="center" style="color:red">{switch_quote_limit.L_QUOTE_LIMIT_WARNING}</p>
            <br />
        </div>
        <!-- END switch_quote_limit -->
        
        <!--------------------------------------------------------->
        <!-- CONTENU DE LA SECTION POSTER UN MESSAGE -------------->

        <div class="bg-white dark:bg-zinc-900 rounded my-3" id="postingbox">
            <!-- BEGIN switch_post_a -->
            <h3 class="p-3 px-2 font-bold text-base text-white bg-gradient-800 rounded-t font-roboto uppercase">{L_POST_A}</h3>
            <!-- END switch_post_a -->
            <fieldset class="fields1 p-2" style="min-width: inherit;">
                <!-- BEGIN switch_username_select -->
                <dl>
                    <dt><label class="font-roboto uppercase text-one">{L_USERNAME}</label></dt>
                    <dd><input class="inputbox" type="text" name="username" maxlength="25" value="{USERNAME}" /></dd>
                </dl>
                <!-- END switch_username_select -->

                <!-- BEGIN switch_reasons -->
                <dl>
                    <dt><label>{L_REASON}</label></dt>
                    <dd>{REASON_NEW}</dd>
                </dl>
                <!-- END switch_reasons -->
                <!-- BEGIN switch_privmsg -->
                <dl class="mb-2">
                    <dt><label class="font-roboto uppercase text-one">{L_USERNAME}</label></dt>
                    <dd class="flex gap-2 items-center">
                        <!-- BEGIN switch_username -->
                        <input class="inputbox w-2/3 rounded bg-zinc-100 dark:bg-zinc-700 shadow" type="text" name="username[]" value="{switch_privmsg.switch_username.USERNAME}" /><br />
                        <!-- END switch_username -->
                        <input class="inputbox w-1/2 rounded bg-zinc-100 dark:bg-zinc-700 shadow" type="text" id="username" name="username[]" value="{USERNAME}" tabindex="1" />&nbsp;
                        <img id="add_username" src="{ADD_USERNAME_IMG}" class="selectHover" style="vertical-align:middle" alt="" />&nbsp;
                        <input class="button2" type="button" id="find_user" value="{L_FIND_USERNAME}" />
                    </dd>
                </dl>

                <!-- BEGIN switch_privmsg_group -->
                <dl class="mb-2">
                    <dt><label class="font-roboto uppercase text-one">{switch_privmsg.switch_privmsg_group.L_OR_GROUP}</label></dt>
                    <dd>{switch_privmsg.switch_privmsg_group.MASS_PM}
                        <input type="button" value="  ?  " title="{switch_privmsg.switch_privmsg_group.MASS_PM_EXPLAIN}" class="button2" /></dd>
                </dl>
                <!-- END switch_privmsg_group -->
                <!-- END switch_privmsg -->

                <!-- BEGIN switch_icon_checkbox -->
                <dl>
                    <dt><label>{L_ICON_TITLE}</label></dt>
                    <dd>
                        <!-- BEGIN row -->
                        <!-- BEGIN cell -->
                        <label><input type="radio" name="post_icon" value="{switch_icon_checkbox.row.cell.ICON_ID}" {switch_icon_checkbox.row.cell.ICON_CHECKED} id="post_icon_{switch_icon_checkbox.row.cell.ICON_ID}" />&nbsp;<span onclick="document.forms['post'].post_icon_{switch_icon_checkbox.row.cell.ICON_ID}.checked=true">{switch_icon_checkbox.row.cell.ICON_IMG}</span></label> &nbsp;
                        <!-- END cell -->
                        <!-- END row -->
                    </dd>
                </dl>
                <!-- END switch_icon_checkbox -->

                <!-- BEGIN switch_subject -->
                <dl class="items-center mb-2">
                    <dt>
                        <label class="font-roboto uppercase text-one">{L_SUBJECT}</label>
                    </dt>
                    <dd>
                        <input class="inputbox medium bg-zinc-100 dark:bg-zinc-700 rounded w-full" type="text" name="subject" value="{SUBJECT}" maxlength="{TOPIC_TITLE_MAXLENGTH}" title="{TOPIC_TITLE_LENGTH_EXPLAIN}" onkeypress="if (event.keyCode==13){return false}" />

                        <!-- BEGIN switch_subject_color -->

                        <script type="text/javascript">
                            //<![CDATA[
                            input = document.getElementsByName('subject');
                            //]]>

                        </script>
                        <select class="hidden" name="topic_color" onchange="input[0].style.color = topic_color.value" style="margin-left:10px">
                            {switch_subject.switch_subject_color.TOPIC_TITLE_COLOR_OPTIONS}
                        </select>
                        <script type="text/javascript">
                            //<![CDATA[
                            input[0].style.color = '{switch_subject.switch_subject_color.TOPIC_TITLE_COLOR_DEFAULT}';
                            //]]>

                        </script>

                        <!-- END switch_subject_color -->
                    </dd>
                </dl>
                <!-- END switch_subject -->

                <!-- BEGIN switch_description -->
                <dl class="items-center mb-2">
                    <dt>
                        <label class="font-roboto uppercase text-one">{L_DESCRIPTION}</label>
                    </dt>
                    <dd>
                        <input class="inputbox medium bg-zinc-100 dark:bg-zinc-700 rounded w-full" type="text" name="description" value="{DESCRIPTION}" maxlength="{TOPIC_DESCRIPTION_MAXLENGTH}" onkeypress="if (event.keyCode==13){return false}" />
                    </dd>
                </dl>
                <!-- END switch_description -->

                <div class="message-edition">
                    <div id="smiley-box" class="bg-zinc-100 dark:bg-zinc-700 rounded pt-2">
                        <div id="smileyContainer">{L_SMILIES_PREVIEW_NEW}</div>
                    </div>
    
                    <div id="message-box">
                        <div class="left-box"><span id="helpbox" class="helpline"></span></div>
                        <div id="textarea_content">
                            <textarea id="text_editor_textarea" name="message">{MESSAGE}</textarea>
                        </div>
                    </div>
                </div> 

                <div class="clear"></div>
            </fieldset>
        </div>
    
        <!----------------------------------------------->
        <!-- BOUTONS (envoyer, prévisu,...) -------------->
        <fieldset class="submit-buttons posting-buttons flex justify-around gap-2">
            {S_HIDDEN_FORM_FIELDS}
            <input type="hidden" name="lt" value="{LAST_TOPIC_ID}" />
            <!-- BEGIN switch_preview -->
            <input class="button2 grow rounded shadow py-1 bg-white dark:bg-zinc-900 text-one" type="submit" name="preview" value="{L_PREVIEW}" tabindex="5" />&nbsp;
            <!-- END switch_preview -->
            <!-- BEGIN switch_draft -->
            <input class="button2 grow rounded shadow py-1 bg-white dark:bg-zinc-900 text-two {BTN_DRAFT_CLASS}" type="submit" name="draft" value="{L_DRAFT}" title="{L_DRAFT_TITLE}" tabindex="7" accesskey="d" {switch_draft.DISABLED_DRAFT} />&nbsp;
            <!-- END switch_draft -->
            <!-- BEGIN switch_publish -->
            <input class="button2 grow" type="submit" name="publish" value="{L_PUBLISH}" tabindex="8" accesskey="p" />&nbsp;
            <!-- END switch_publish -->
            <input class="button1 grow rounded shadow py-1 bg-gradient text-white" type="submit" name="post" value="{L_SUBMIT}" title="{L_SUBMIT_TITLE}" tabindex="6" accesskey="s" {DISABLED_SUBMIT} />
            <!-- BEGIN switch_signature -->
            <input type="hidden" name="submit" value="{L_SUBMIT}" />
            <!-- END switch_signature -->
            <!-- BEGIN switch_warning_msg -->
            <br/>
            <span class="info">{switch_warning_msg.WARNING_CONTENT}</span>
            <!-- END switch_warning_msg -->
        </fieldset>

    </div>
<br/>

    <!----------------------------------------------->
    <!-- SECTION : DÉS -------------->

    <!-- BEGIN switch_roll_dice -->
    <h3 class="font-bold text-white text-center uppercase bg-gradient rounded-t py-2">{ROLL_DICE_TITLE}</h3>
    <div class="p-2 bg-zinc-200 dark:bg-zinc-800 rounded-b mb-3">
        <script type="text/javascript">
            function add_dice(dice_number, dice, number) {
                var content = document.getElementById('post_dice').innerHTML;
                document.getElementById('dice_to_del').innerHTML = '';
                document.getElementById('dice_to_del').id = '';

                var new_tr = document.createElement('tr');
                new_tr.appendChild(document.createElement('td'));
                new_tr.firstChild.innerHTML = '<span class="uppercase font-roboto text-two font-medium w-36 inline-block">{ROLL_DICE_TITLE_LOW} #' + (dice_number + 1) + ' :&nbsp;</span><select name="post_dice_' + dice_number + '" id="post_dice_' + dice_number + '" value="' + dice + '" class="bg-zinc-100 dark:bg-zinc-700 rounded p-2 px-4">' + content + '</select>&nbsp;<label for="nb_rolls" class="uppercase font-roboto text-two font-medium ml-2">{switch_roll_dice.L_DICE_ROLLS} : </label><input type="text" class="bg-zinc-100 dark:bg-zinc-700 rounded w-16 mr-2" size="2" maxlength="3" name="nb_rolls_' + dice_number + '" id="nb_rolls" value="' + number + '" />&nbsp;<span id="dice_to_del"><a class="bg-zinc-200 dark:bg-zinc-800 rounded p-2" href="javascript:add_dice(' + (dice_number + 1) + ',\'\',1)">Ajouter un dé</a></span>';
                document.getElementById('list_dice').lastChild.appendChild(new_tr);

                var select_dice = document.getElementById('post_dice_' + dice_number);
                if (dice == '') {
                    select_dice.selectedIndex = 0;
                }
                for (var i = 1; select_dice.options[i]; i++) {
                    select_dice.options[i].selected = (select_dice.options[i].value == dice);
                }

                $('#list_dice tr:last').addClass('rounded bg-white dark:bg-zinc-900 shadow mt-1 inline-block w-full');
                $('#list_dice tr:last td').addClass('px-2 py-1');
            }

        </script>
        <table style="width:100%" id="list_dice">
            <tr class="rounded bg-white dark:bg-zinc-900 shadow inline-block w-full">
                <td class="px-2 py-1">
                    <span class="uppercase font-roboto text-two font-medium w-36 inline-block">{ROLL_DICE_TITLE_LOW} #1 :&nbsp;</span>
                    <select name="post_dice_0" id="post_dice" class="bg-zinc-100 dark:bg-zinc-700 rounded p-2 px-4">
                        <option value="">-</option>
                        <!-- BEGIN row_replace -->
                        <option value="{switch_roll_dice.row_replace.DICE_ID}" {switch_roll_dice.row_replace.DICE_SELECTED}>{switch_roll_dice.row_replace.DICE_NAME}</option>
                        <!-- END row_replace -->
                    </select>
                    &nbsp;<label for="nb_rolls" class="uppercase font-roboto text-two font-medium ml-2">{switch_roll_dice.L_DICE_ROLLS} : </label><input class="bg-zinc-100 dark:bg-zinc-700 rounded w-16 mr-2" type="text" size="2" maxlength="3" name="nb_rolls_0" id="nb_rolls" value="{switch_roll_dice.S_DICE_ROLLS_VALUE}" />
                    &nbsp;<span id="dice_to_del"><a class="bg-zinc-200 dark:bg-zinc-800 rounded p-2" href="javascript:add_dice(1,'',1)">Ajouter un dé</a></span>
                </td>
            </tr>
        </table>
        {switch_roll_dice.DICE_SCRIPT}
    </div>
    <!-- END switch_roll_dice -->


    <!--------------------------------------------->
    <!-- SECTION : OPTION DU MESSAGE -------------->
    <h3 class="font-bold text-white text-center uppercase bg-gradient rounded-t py-2">{L_OPTIONS}</h3>
    <div class="bg-zinc-200 dark:bg-zinc-800 p-2 rounded-b mb-3">
        <div class="bg-white dark:bg-zinc-900 p-2 rounded shadow">
            <!-- BEGIN switch_topic_modif -->
            <fieldset class="fields1">
                <!-- BEGIN switch_icon_checkbox -->
                <dl>
                    <label>{POST_ICON_TITLE}</label>
                    <dd>
                        <!-- BEGIN row -->
                        <!-- BEGIN cell -->
                        <label><input type="radio" name="post_icon" value="{switch_topic_modif.switch_icon_checkbox.row.cell.ICON_ID}" id="post_icon_{switch_topic_modif.switch_icon_checkbox.row.cell.ICON_ID}" {switch_topic_modif.switch_icon_checkbox.row.cell.ICON_CHECKED} />&nbsp;<span onclick="document.forms['post'].post_icon_{switch_topic_modif.switch_icon_checkbox.row.cell.ICON_ID}.checked=true">{switch_topic_modif.switch_icon_checkbox.row.cell.ICON_IMG}</span></label>
                        <!-- END cell -->
                        <!-- END row -->
                    </dd>
                </dl>
                <!-- END switch_icon_checkbox -->
                <dl class="items-center">
                    <dt><label for="modif_topic_title" class="font-medium font-roboto uppercase text-three">{L_TOPIC_TITLE_MODIFY}</label></dt>
                    <dd>
                        <input type="text" class="inputbox medium bg-zinc-100 dark:bg-zinc-700 w-full rounded" name="modif_topic_title" id="modif_topic_title" value="{MODIF_TOPIC_TITLE}" maxlength="{TOPIC_DESCRIPTION_MAXLENGTH}" onkeypress="if (event.keyCode==13){return false}" />
                        <!-- BEGIN switch_topic_button -->
                        &nbsp;<input type="button" class="button2" value="{L_SOLVED_WITHOUT_BRAKETS}" onclick="set_solved(this.form.elements['modif_topic_title'],'{L_SOLVED}')" style="display:none" id="button_solved" />
                        <script type="text/javascript">
                            //<![CDATA[
                            document.getElementById('button_solved').style.display = 'inline';
                            //]]>

                        </script>
                        <!-- END switch_topic_button -->
                    </dd>
                </dl>
            </fieldset>
            <hr class="border-blue-100 my-2" />
            <!-- END switch_topic_modif -->
            <fieldset class="fields1">
                <!-- BEGIN switch_html_checkbox -->
                <label><input type="checkbox" name="disable_html" {S_HTML_CHECKED} />&nbsp;{L_DISABLE_HTML}</label><br />
                <!-- END switch_html_checkbox -->

                <!-- BEGIN switch_bbcode_checkbox -->
                <label><input type="checkbox" name="disable_bbcode" {S_BBCODE_CHECKED} />&nbsp;{L_DISABLE_BBCODE}</label><br />
                <!-- END switch_bbcode_checkbox -->

                <!-- BEGIN switch_smilies_checkbox -->
                <label><input type="checkbox" name="disable_smilies" {S_SMILIES_CHECKED} />&nbsp;{L_DISABLE_SMILIES}</label><br />
                <!-- END switch_smilies_checkbox -->

                <!-- BEGIN switch_signature_checkbox -->
                <label><input type="checkbox" name="attach_sig" {S_SIGNATURE_CHECKED} />&nbsp;{L_ATTACH_SIGNATURE}</label><br />
                <!-- END switch_signature_checkbox -->

                <!-- BEGIN switch_notify_checkbox -->
                <label><input type="checkbox" name="notify" {S_NOTIFY_CHECKED} />&nbsp;{L_NOTIFY_ON_REPLY}</label><br />
                <!-- END switch_notify_checkbox -->

                <!-- BEGIN switch_delete_checkbox -->
                <label><input type="checkbox" name="delete" />&nbsp;{L_DELETE_POST}</label><br />
                <!-- END switch_delete_checkbox -->

                <!-- BEGIN switch_type_toggle -->
                <br />{S_TYPE_TOGGLE}
                <!-- END switch_type_toggle -->
            </fieldset>
        </div>
    </div>

    <!----------------------------------------------->
    <!-- SECTION : SONDAGE -------------->
    {POLLBOX}
</form>


<!----------------------------------------------->
<!-- SAUTER VERS UN FORUM -------------->
<!-- BEGIN switch_jumpbox -->
<form action="{S_JUMPBOX_ACTION}" method="get" name="jumpbox" onsubmit="if(document.jumpbox.f.value == -1){return false}" class="text-right">
    {L_JUMP_TO}:&nbsp;{S_JUMPBOX_SELECT}&nbsp;<input class="button2" type="submit" value="{L_GO}" />
</form>
<!-- END switch_jumpbox -->



<!----------------------------------------------->
<!-- HISTORIQUES DES MESSAGES -------------->
<!-- (template : posting_topic_review (message) // privmsg_topic_review (messages privés)-->

{TOPIC_REVIEW_BOX}


<!----------------------------------------------->
<!---------------->
<!-- BEGIN switch_privmsg -->
<div id="find_username" class="jqmWindow"></div>
<div id="group_pm_explain" class="jqmWindow"></div>

<script src="{JQUERY_DIR}jqmodal/jqmodal.js" type="text/javascript"></script>
<!-- END switch_privmsg -->
<script type="text/javascript">
    //<![CDATA[
    $(function(){
    <!-- BEGIN switch_privmsg -->
        privmsg_add_username('{U_SEARCH_USER}', '<br /><input class="inputbox" style="width:15%;margin:1px 0" type="text" name="username[]" />');
    <!-- END switch_privmsg -->
    <!-- BEGIN switch_image_resize -->
        resize_images({ 'selector' : '.postbody .content', 'max_width' : {switch_image_resize.IMG_RESIZE_WIDTH}, 'max_height' : {switch_image_resize.IMG_RESIZE_HEIGHT} });
    <!-- END switch_image_resize -->
    });
    //]]>
</script>

<script>
    if($('#postingbox h3').text().indexOf('Poster une réponse') != -1){
        $('#postingbox h3').text("Votre réponse");
    }

    if($('#postingbox h3').text().indexOf('Poster un nouveau sujet') != -1){
        $('#postingbox h3').text("Votre nouveau sujet");
    }

    $('select[name="usergroup"]').addClass('bg-zinc-100 dark:bg-zinc-700 rounded p-2 px-4 w-1/2');

    if($('html').hasClass('dark')){
        $('#sce_smilies_body').css('background', '#3f3f46');
    }else{
        $('#sce_smilies_body').css('background', '#f4f4f5');
    }
</script>

{SCEDITOR}