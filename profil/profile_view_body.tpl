<!-- IMPORTANT!!-->
<!-- ACTIVATE SIMPLE PROFILE: Users & Groups › Profiles › General options › Activate advanced profile: no -->

<br/>
<div class="rounded p-4 bg-gradient" id="wombat">

    <!-- Username -->
    <div class="flex items-center gap-1">
	    <div class="page-title rounded p-1 text-center shadow w-full bg-white dark:bg-zinc-800">
		    <h1 style="color:var(--color5);">
		    	{USERNAME}
			</h1>
	        <!-- Rank-->
			<span class="uppercase text-xs">
				{POSTER_RANK}
			</span>
		</div>
		<div class="flex flex-col gap-1">
			<div class="flex gap-1">
				<a class="shadow bg-white rounded w-36 uppercase text-center p-1" href="https://dancinginthemoon.forumactif.com/privmsg?mode=post&u={CUR_USER_ID}">Envoyer un MP</a>
				<a class="shadow bg-white rounded w-36 uppercase text-center p-1" href="https://dancinginthemoon.forumactif.com/spa/u{CUR_USER_ID}">Messages</a>
			</div>
			<div class="flex gap-1">
				<a class="shadow bg-white rounded w-36 uppercase text-center p-1" href="https://dancinginthemoon.forumactif.com/st/u{CUR_USER_ID}">Sujets ouverts</a>
				<a class="shadow bg-white rounded w-36 uppercase text-center p-1" href="https://dancinginthemoon.forumactif.com/sta/u{CUR_USER_ID}">Sujets participés</a>
			</div>
		</div>
		<div class="profile_link_tooltip_trigger hidden relative">
			<a href="https://dancinginthemoon.forumactif.com/privmsg?mode=post&u={CUR_USER_ID}" class="rounded shadow bg-white dark:bg-zinc-800 flex items-center profile_btn">
				<i class="bi bi-envelope text-gradient mx-auto"></i>
			</a>
			<span class="profile_link_tooltip uppercase absolute p-2 rounded shadow whitespace-nowrap">Contacter</span>
		</div>

		<div class="profile_link_tooltip_trigger hidden relative">
			<a href="https://dancinginthemoon.forumactif.com/st/u{CUR_USER_ID}" class="rounded shadow bg-white dark:bg-zinc-800 flex items-center profile_btn">
				<i class="bi bi-file-earmark-plus text-gradient mx-auto"></i>
			</a>
			<span class="profile_link_tooltip uppercase absolute p-2 rounded shadow whitespace-nowrap">Sujets ouverts</span>
		</div>

		<div class="profile_link_tooltip_trigger hidden relative">
			<a href="https://dancinginthemoon.forumactif.com/sta/u{CUR_USER_ID}" class="rounded shadow bg-white dark:bg-zinc-800 flex items-center profile_btn">
				<i class="bi bi-file-earmark-text text-gradient mx-auto"></i>
			</a>
			<span class="profile_link_tooltip uppercase absolute p-2 rounded shadow whitespace-nowrap">Sujets participés</span>
		</div>

		<div class="profile_link_tooltip_trigger hidden relative">
			<a href="https://dancinginthemoon.forumactif.com/spa/u{CUR_USER_ID}" class="rounded shadow bg-white dark:bg-zinc-800 flex items-center profile_btn">
				<i class="bi bi-pencil text-gradient mx-auto"></i>
			</a>
			<span class="profile_link_tooltip uppercase absolute p-2 rounded shadow whitespace-nowrap">Messages</span>
		</div>
    </div>

    <!-- Profile contents -->
    <div class="flex py-4 gap-4">
        <div>
        	<!-- Avatar -->
	        <div class="relative profile_avatar p-2 shadow rounded bg-white dark:bg-zinc-800" id="user_avatar">
	        	{AVATAR_IMG}
	        	<!-- Statut: en ligne -->
	            <!-- BEGIN switch_show_status -->
	            <div class="absolute bg-green-400 h-4 w-4 rounded-full border-2 border-white dark:border-zinc-800" style="bottom: 5px;right: 5px; "></div>
	            <!-- END switch_show_status -->
	        </div>
        </div>

      
		<div class="w-full">
			<div class="flex uppercase gap-4 mb-4">
				<div class="w-1/2 p-2 rounded shadow text-center bg-white dark:bg-zinc-800"><span id="nbmessages"></span> messages</div>
				<div class="w-1/2 p-2 rounded shadow text-center bg-white dark:bg-zinc-800"><span id="nbjetons"></span> jetons</div>
			</div>

	        <!-- Profile info -->
	        <div class="profile_infos w-full p-2 shadow rounded bg-white dark:bg-zinc-800">

	            <!-- Contact image link -->
	            <form action="{S_PROFILE_ACTION}" method="post" name="post" class="profile_contact" style="display: none;">
	                <!-- BEGIN contact_field -->
	                <div id="field_id{contact_field.ID}">{contact_field.CONTENT}</div>
	                <!-- END contact_field -->
	            </form>

	            <!-- PROFILE FIELDS -->
	            <div class="profile_content">
	                <!-- "Last visited" field -->
	                <div class="profile_field">
	                    <label class="text-one font-roboto uppercase font-semibold font-bold">{L_LAST_VISITED} :</label>
	                    <field>{LAST_VISIT_TIME}</field>
	                </div>

	               <!-- "Private messages" field -->
	                <!-- BEGIN switch_dhow_mp -->
	                <div class="profile_field">
	                    <label class="text-one font-roboto uppercase font-semibold font-bold">{L_PRIVATE_MSG} :</label>
	                    <field>{PRIVATE_MSG}</field>
	                </div>
	                <!-- END switch_dhow_mp -->

	                <!-- Other fields -->
	                <!-- BEGIN profile_field -->
	                <div class="profile_field" id="field_id{profile_field.ID}">
	                    <label class="text-one font-roboto uppercase font-semibold font-bold">{profile_field.LABEL}</label>
	                    <field>{profile_field.CONTENT}

	                        <!-- "Message" field contents -->
	                        <!-- BEGIN profil_type_user_posts -->
	                        <a rel="nofollow" href="/st/{PUSERNAME}" id="opentopics">{L_SEARCH_USER_POSTS} :</a><!-- topics opened by -->

	                        <br />
	                        <a rel="nofollow" href="/sta/{PUSERNAME}" id="alltopics">{L_TOPICS}</a> <!-- all topics -->
	                      		&nbsp;-&nbsp;
	                        <a rel="nofollow" href="/spa/{PUSERNAME}" id="allposts">{L_POSTS}</a> <!-- all posts -->
	                        <!-- END profil_type_user_posts -->
	                    </field>
	                </div>
	                <!-- END profile_field -->

	              
	              	<!-- Character sheet -->
	                <!-- BEGIN switch_rpg -->
	                <!-- BEGIN rpg_fields -->
	                <div class="profile_field">
	                    <label class="text-one font-roboto uppercase font-semibold font-bold">{switch_rpg.rpg_fields.F_NAME} :</label>
	                    <field>{switch_rpg.rpg_fields.F_VALUE_NEW}</field>
	                </div>
	                <!-- END rpg_fields -->

	                <fieldset class="submit-buttons">{U_ADMIN_RPG_NEW}</fieldset>
	                <!-- END switch_rpg -->


	            </div>
	            <!-- End of profile fields -->

	        </div>
		</div>


    </div>

    <div id="profile_liens" class="flex gap-4">
    	<a href="#" id="profile_pres" class="w-1/4 rounded shadow text-center p-2 profile_btn flex items-center justify-center bg-white dark:bg-zinc-800">
    		<i class="mr-1 bi bi-person-vcard"></i> 
    		Présentation
    	</a>
    	<a href="#" id="profile_fdl" class="w-1/4 rounded shadow text-center p-2 profile_btn flex items-center justify-center bg-white dark:bg-zinc-800">
    		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="mr-1 bi bi-person-plus-fill" viewBox="0 0 16 16">
    		  <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6"/>
    		  <path fill-rule="evenodd" d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5"/>
    		</svg>
    		Fiche de liens
    	</a>
    	<a href="#" id="profile_insta" class="w-1/4 rounded shadow text-center p-2 profile_btn flex items-center justify-center bg-white dark:bg-zinc-800">
    		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="mr-1 bi bi-instagram" viewBox="0 0 16 16">
    		  <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.9 3.9 0 0 0-1.417.923A3.9 3.9 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.9 3.9 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.9 3.9 0 0 0-.923-1.417A3.9 3.9 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599s.453.546.598.92c.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.5 2.5 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.5 2.5 0 0 1-.92-.598 2.5 2.5 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233s.008-2.388.046-3.231c.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92s.546-.453.92-.598c.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92m-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217m0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334"/>
    		</svg> 
    		Instagram
    	</a>
    	<a href="#" id="profile_tinder" class="w-1/4 rounded shadow text-center p-2 profile_btn flex items-center justify-center bg-white dark:bg-zinc-800">
    		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="mr-1 bi bi-fire" viewBox="0 0 16 16">
			  <path d="M8 16c3.314 0 6-2 6-5.5 0-1.5-.5-4-2.5-6 .25 1.5-1.25 2-1.25 2C11 4 9 .5 6 0c.357 2 .5 4-2 6-1.25 1-2 2.729-2 4.5C2 14 4.686 16 8 16m0-1c-1.657 0-3-1-3-2.75 0-.75.25-2 1.25-3C6.125 10 7 10.5 7 10.5c-.375-1.25.5-3.25 2-3.5-.179 1-.25 2 1 3 .625.5 1 1.364 1 2.25C11 14 9.657 15 8 15"/>
			</svg> 
			Tinder
		</a>
    </div>

    <!-- Liens de modération -->
    <div class="profile_admin">
    
        <!-- Bouton "suivre le membre" -->
        <!-- BEGIN switch_follow_member -->
        <button onclick="doFollowAction(this);" data-id="{CUR_USER_ID}" class="followBtn {C_CLASS} ion-android-notifications{C_ICLASS}">
            {CUR_FOLLOW_TEXT}
        </button>
        <!-- END switch_follow_member -->
      
      &nbsp;
      
      	<!-- Bouton d'administration du membre --> 
        <!-- BEGIN switch_auth_user -->
        {ADMINISTRATE_USER}{BAN_USER}
        <!-- END switch_auth_user -->
    
    </div>


</div>




<script src="{JQUERY_ROOT}json/jquery.json-1.3.min.js" type="text/javascript"></script>
<script type="text/javascript">
    //<![CDATA[
	let nbMessages = $("#field_id-6 .field_uneditable").text();
	$("#nbmessages").text(nbMessages);
	$("#field_id-6").hide();

	let nbJetons = $("#field_id-13 .field_uneditable").text();
	$("#nbjetons").text(nbJetons);
	$("#field_id-13").hide();

	let ficheLiens = $("#field_id-21 a").attr("href");
    if (ficheLiens !== undefined) {
    	$('#profile_fdl').css("display", "flex").attr("href", ficheLiens);
    }

    let pres = $("#field_id-10 a").attr("href");
    if (pres !== undefined) {
    	$('#profile_pres').css("display", "flex").attr("href", pres);
    }

    let insta = $("#field_id-22 a").attr("href");
    if (insta !== undefined) {
    	$('#profile_insta').css("display", "flex").attr("href", insta);
    }

    let tinder = $("#field_id-23 a").attr("href");
    if (tinder !== undefined) {
    	$('#profile_tinder').css("display", "flex").attr("href", tinder);
    }

    $(document).ready(function() {
        $('[id^=field_id]').each(function() {
            if ($(this).find('.field_editable').is('span, div')) {
                $(this).hover(function() {
                    if ($(this).find('.field_editable.invisible').is('span, div')) {
                        $(this).find('.field_editable').prev().addClass('ajax-profil_hover').parent().addClass('ajax-profil_parent').append('<div class="ajax-profil_edit"><img src="{AJAX_EDIT_IMG}" /></div>');
                        $(this).find('.ajax-profil_edit').attr({
                            alt: "{L_FIELD_EDIT_VALUE}",
                            title: "{L_FIELD_EDIT_VALUE}"
                        }).click(function() {
                            $(this).prev().prev().removeClass('ajax-profil_hover').addClass('invisible').next().removeClass('invisible').append('<img src="{AJAX_VALID_IMG}" class="ajax-profil_valid" />').find('input,select');
                            $(this).prev().find('.ajax-profil_valid').attr({
                                alt: "{L_VALIDATE}",
                                title: "{L_VALIDATE}"
                            }).click(function() {
                                var content = new Array();
                                $(this).parent().find('[name]').each(function() {
                                    var type_special = $(this).is('input[type=radio],input[type=checkbox]');
                                    if ((type_special && $(this).is(':checked')) || !type_special) {
                                        content.push(new Array($(this).attr('name'), $(this).attr('value')));
                                    }
                                });
                                var id_name = $(this).parents('[id^=field_id]').attr('id');
                                var id = id_name.substring(8, id_name.length);
                                $.post(
                                    "{U_AJAX_PROFILE}", {
                                        id: id,
                                        user: "{CUR_USER_ID}",
                                        active: "{CUR_USER_ACTIVE}",
                                        content: $.toJSON(content),
                                        tid: "{TID}"
                                    },
                                    function(data) {
                                        $.each(data, function(i, item) {
                                            $('[id=field_id' + i + ']').find('.field_uneditable').html(item).end().find('.ajax-profil_valid').remove().end().find('.field_editable').addClass('invisible').end().find('.field_uneditable').removeClass('invisible');
                                        });
                                    },
                                    "json"
                                );
                            });
                            $(this).remove();
                        });
                    }
                }, function() {
                    if ($(this).find('.field_editable.invisible').is('span, div')) {
                        $(this).find('.field_editable').prev().removeClass('ajax-profil_hover');
                        $(this).find('.ajax-profil_edit').remove();
                    }
                });
            }
        });
       
    });
    //]]>
</script>