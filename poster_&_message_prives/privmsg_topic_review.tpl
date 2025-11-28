<!-- BEGIN switch_inline_mode -->
<h2 class="font-bold rounded-t p-3 bg-gradient uppercase">{L_TOPIC_REVIEW}</h2>
<!-- END switch_inline_mode -->

<div class="bg-zinc-200 dark:bg-zinc-800 rounded shadow p-2 flex flex-col gap-2 mb-3">

    <!-- Affichage d'un message simplifié -->
    <!-- BEGIN postrow -->
    <div class="p-2 bg-white dark:bg-zinc-900 rounded shadow {postrow.ROW_CLASS}{postrow.CURRENT_MSG}">

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

<script>
    if($('.pagination').text() == ''){
        $('.pagination').addClass('hidden');
    }
</script>