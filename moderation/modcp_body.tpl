<form name="manage" action="{S_MODCP_ACTION}" method="post">
<!-- BEGIN switch_user_logged_in --><p class="right rightside">{LAST_VISIT_DATE}</p><!-- END switch_user_logged_in -->
<p>{CURRENT_TIME}</p>

<div class="topic-actions">
	<p>{L_INDEX}{NAV_CAT_DESC}</p>
</div>

<h1 class="DITM_page_title font-bold text-white text-center uppercase bg-gradient rounded-t py-2">{L_MOD_CP}</h1>
<div class="bg-zinc-200 p-2">
    <p class="linkmcp bg-white p-2 rounded shadow text-justify mb-3">{L_MOD_CP_EXPLAIN}</p>
    <div class="bg-white p-2 rounded shadow row3">
        <div class="inner"><span class="corners-top"><span></span></span>
        <div id="cp-main" class="mcp-main">
            <div class=" ">
                <div class="inner"><span class="corners-top"><span></span></span>
                <table class="table1" cellspacing="1">
                    <thead>
                        <tr>
                            <th class="text-left name">&nbsp;</th>
                            <th class="text-left name">{L_TOPICS}</th>
                            <th class="text-left">{L_REPLIES}</th>
                            <th class="text-left name">{L_LASTPOST}</th>
                            <th class="text-left">{L_SELECT}</th>
                        </tr>
                    </thead>
                    <tbody>
                    <!-- BEGIN topicrow -->
                        <tr class="{topicrow.ROW_CLASS}">
                            <td class="icon" style="background-image:url('{topicrow.TOPIC_FOLDER_IMG}'); background-repeat: no-repeat; background-position: center;">
                                {topicrow.ICON}
                            </td>
                            <td>{topicrow.TOPIC_TYPE}
                                <a class="topictitle" href="{topicrow.U_VIEW_TOPIC}">{topicrow.TOPIC_TITLE}</a>
                                <div class="topic-author">
                                    &nbsp;{topicrow.L_BY}&nbsp;<a href="{topicrow.U_VIEW_AUTHOR}">{topicrow.TOPIC_AUTHOR}</a>
                                </div>
                            </td>
                            <td class="posts">{topicrow.REPLIES}</td>
                            <td>{topicrow.LAST_POST_TIME}</td>
                            <td class="posts"><input type="checkbox" name="topic_id_list[]" value="{topicrow.TOPIC_ID}" /></td>
                        </tr>
                    <!-- END topicrow -->
                    </tbody>
                </table>
                <span class="corners-bottom"><span></span></span></div>
            </div>
            <p class="right-box"><a href="#" onclick="this.value=check('select','manage');return false;">{L_SELECT_ALL}</a>&nbsp;::&nbsp;<a href="#" onclick="this.value=check('unselect','manage');return false;">{L_USELECT_ALL}</a></p>
            <div class="clear"></div>
            <fieldset class="submit-buttons">
                {S_HIDDEN_FIELDS}
                <!-- BEGIN switch_delete --><input class="button2" type="submit" name="delete" value="{L_DELETE}" />&nbsp;
                <!-- END switch_delete -->
                <input class="button2" type="submit" name="trash" value="{L_TRASH}"/>&nbsp;
                <input class="button2" type="submit" name="move" value="{L_MOVE}" />&nbsp;
                <input class="button2" type="submit" name="lock" value="{L_LOCK}" />&nbsp;
                <input class="button2" type="submit" name="unlock" value="{L_UNLOCK}" />
                <!-- BEGIN switch_sticky --><input class="button2" type="submit" name="sticky" value="{L_STICKY}" />&nbsp;<!-- END switch_sticky -->
                <!-- BEGIN switch_announce --><input class="button2" type="submit" name="announce" value="{L_ANNOUNCE}" />&nbsp;<!-- END switch_announce -->
                <!-- BEGIN switch_normal --><input class="button2" type="submit" name="normal" value="{L_NORMAL}" /><!-- END switch_normal -->
            </fieldset>
        </div>
        <div class="clear"></div>
        <span class="corners-bottom"><span></span></span></div>
    </div>
</div>

<p class="left-box">{PAGE_NUMBER}</p>
<p class="pagination">{PAGINATION}</p>
<div class="clear"></div>
</form>

<form action="{S_JUMPBOX_ACTION}" method="get" name="jumpbox" onsubmit="if(document.jumpbox.f.value == -1){return false;}">
	<p class="right">{L_JUMP_TO}:&nbsp;{S_JUMPBOX_SELECT}&nbsp;<input class="button2" type="submit" value="{L_GO}" /></p>
</form>