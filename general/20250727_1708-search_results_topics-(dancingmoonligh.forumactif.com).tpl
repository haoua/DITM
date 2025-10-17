<h1 class="DITM_page_title font-bold text-white text-center uppercase bg-gradient rounded-t py-2">{L_SEARCH_MATCHES}</h1>

<form action="{S_ACTION}" method="post" name="post" onsubmit="return verify_select();" class="bg-zinc-200 p-2 rounded-b">

    <!-- BEGIN searchresults -->	
    <div class="DITM_topicslist_row flex bg-white p-2 rounded shadow mb-2 items-center">
        
        <!-- Image d'un sujet -->
        <div class="topicslist-img mr-3">
            <img src="{searchresults.TOPIC_FOLDER_IMG}" class="h-14" />
        </div>

        <div class="topicslist_infos flex-1" {searchresults.TOPIC_ICON}>

            <!-- Icone de message -->
            <span class="topic_msgicon"></span>

            <!-- Label type de sujet : annonce, note, ... -->
            <span class="topic-type">{searchresults.TOPIC_TYPE}</span>

            <!-- Titre du sujet -->
            <a class="topictitle" href="{searchresults.U_VIEW_TOPIC}">{searchresults.TOPIC_TITLE}</a>&nbsp;

            <!-- Icon vous avez posté dans ce sujet -->
            {searchresults.PARTICIPATE_POST_IMG}

            <br />

            <span class="topic-author">
                {searchresults.L_BY} {searchresults.TOPIC_AUTHOR} {searchresults.L_IN} <a href="{searchresults.U_VIEW_FORUM}">{searchresults.FORUM_NAME}</a>
            </span>&nbsp;

            <!-- Pagination du sujet -->
            <span class="topicslist-pagination">
                {searchresults.GOTO_PAGE_NEW}
                <!-- BEGIN nav_tree -->
                {searchresults.TOPIC_NAV_TREE_NEW}
                <!-- END nav_tree -->
            </span>

        </div>


        <div>
            <!-- Statistiques -->
            <div class="DITM_topicslist-stats flex gap-3 justify-around items-center">
                <!-- Nombres // Indication "messages" -->
                <div>
                    <span class="text-two font-yeseva text-2xl mr-1">{searchresults.REPLIES}</span>
                    <span class="uppercase text-xs">{L_REPLIES}</span>
                </div>
                
                <!-- Nombres // Indication "vues" -->
                <div>
                    <span class="text-three font-yeseva text-2xl mr-1">{searchresults.VIEWS}</span>
                    <span class="uppercase text-xs">{L_VIEWS}
                </div>
            </div>

            <!-- Dernier message -->
            <div class="topicslist-lastpost">
                {searchresults.LAST_POST_TIME}&nbsp;
                <br />
                {searchresults.LAST_POST_AUTHOR}&nbsp;
                {searchresults.LAST_POST_IMG}
            </div>

        </div>



        
    </div>
    <!-- END searchresults -->
    
    <p class="pagination">{PAGINATION}</p>
</form>

{JUMPBOX}