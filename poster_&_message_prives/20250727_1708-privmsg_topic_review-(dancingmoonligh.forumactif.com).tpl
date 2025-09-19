<div class="bg-zinc-200 rounded shadow p-2 my-3">
  
    <!-- BEGIN switch_inline_mode -->
    <h2>{L_TOPIC_REVIEW}</h2>
    <!-- END switch_inline_mode -->

    <!-- Affichage d'un message simplifié -->
    <!-- BEGIN postrow -->
    <div class="panel {postrow.ROW_CLASS}{postrow.CURRENT_MSG}">

        <div class="flex">
            <!-- Avatar -->
            <div class="mini_img">{postrow.POSTER_AVATAR}</div>

            <div>
            	<!-- Message par - Auteur - le - date -->
            	<span class="author">{postrow.L_TOPIC_BY} {postrow.POSTER_NAME} {postrow.L_TOPIC_ON} {postrow.POST_DATE}</span>
        		<!-- Message -->
        		<div class="content">{postrow.MESSAGE}</div>
            </div>
        </div>


    </div>
    <!-- END postrow -->

    <div class="pagination">
        {PM_PAGINATION}
    </div>
</div>

            