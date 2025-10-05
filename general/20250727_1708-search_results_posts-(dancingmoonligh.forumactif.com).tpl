<br />
<div class="shadow rounded bg-zinc-200">
    <h1 class="DITM_page_title text-white text-center font-yeseva bg-gradient rounded-t py-2">{L_SEARCH_MATCHES}</h1>
    <div class="p-2">
        <!-- BEGIN searchresults -->
        <div class="DITM_post_search mb-4">
        
            <!-- Information du sujet -->
            <div class="postsearch_infos bg-white rounded p-2 mb-1 flex items-center justify-between">
                <h3 class="pb-0 uppercase mr-1"><a class="postdetails" href="{searchresults.U_TOPIC}">{searchresults.TOPIC_TITLE}</a></h3>
                    
                <div>
                    <span class="block">{searchresults.L_TOPIC_BY} {searchresults.POSTER_NAME}</span>
                    <span>{searchresults.L_TOPIC_ON} {searchresults.POST_DATE}</span>
                </div>
                <div class="hidden">
                    <hr />
                    <span>{L_FORUM}: <strong><a class="postdetails" href="{searchresults.U_FORUM}">{searchresults.FORUM_NAME}</a></strong></span>
                    <span>{L_REPLIES}: <strong>{searchresults.TOPIC_REPLIES}</strong></span>
                    <span>{L_VIEWS}: <strong>{searchresults.TOPIC_VIEWS}</strong></span>
                </div>
            </div>

            <!-- Contenu du message -->
            <div class="postsearch_content bg-white shadow rounded p-2">
                <h3 class="hidden"><a href="{searchresults.U_POST}">{searchresults.TOPIC_TITLE}</a></h3>
                {searchresults.MESSAGE}
            </div>
        </div>
        <!-- END searchresults -->

        <p id="search__pagination" class="DITM_pagination bg-white p-2 rounded shadow text-center">{PAGINATION}</p>
    </div>
</div>

{JUMPBOX}


<script type="text/javascript">
    $("#search__pagination").html($("#search__pagination").html().replace('•<span> <strong>1</strong>', '<span><strong>1</strong>'));
</script>

<!-- BEGIN switch_image_resize -->
<script type="text/javascript">
    //<![CDATA[
    $(resize_images({
        'selector': '.postbody',
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