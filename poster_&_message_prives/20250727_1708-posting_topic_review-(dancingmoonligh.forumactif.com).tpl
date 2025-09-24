<div class="mt-4 rounded bg-zinc-200">

    <!-- Titre "revue du sujet" -->
    <!-- BEGIN switch_inline_mode -->
    <div class="h3 bg-gradient rounded-t text-center p-2 uppercase text-white">{L_TOPIC_REVIEW}</div>
    <!-- END switch_inline_mode -->

    <!-- Affichage d'un message simplifié -->
    <!-- BEGIN postrow -->
    <!-- BEGIN displayed -->
    <div class="p-2 {postrow.displayed.displayed.ROW_CLASS}">

        <!-- Contenu -->
        <div class="postbody">
            <!-- Sujet par - Auteur - le - date -->
            <div class="p-2 rounded bg-white text-justify shadow mb-1"> {postrow.displayed.L_TOPIC_BY} {postrow.displayed.POSTER_NAME} {postrow.displayed.L_TOPIC_ON} {postrow.displayed.POST_DATE}</div>

            <!-- Message -->
            <div class="p-2 rounded bg-white text-justify shadow mb-5">{postrow.displayed.MESSAGE}</div>
        </div>

    </div>
    <!-- END displayed -->
    <!-- BEGIN hidden -->
    <div class="post">
        <p style="text-align:center">{postrow.hidden.MESSAGE}</p>
    </div>
    <!-- END hidden -->
    <!-- END postrow -->
    <!-- Fin de l'affichage -->


</div>
<br />

            