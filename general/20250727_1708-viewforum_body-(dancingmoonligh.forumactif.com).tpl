<!-- Affichage des sous forums (template : index_box) -->
{BOARD_INDEX}
<br />

<!----------------------------------------------->
<!-- LIEN DE NAVIGATION ------------------------->

<div class="bg-gradient text-white rounded p-2">

    <!-- Chaîne de lien : Catégorie > Forum > Sous-fo -->
    <div class="navigation_chain">
        {NAV_CAT_DESC}
    </div>

    <!-- Pagination -->
    <span class="right pagination page-topic">
        {PAGINATION}
    </span>

</div>


<!----------------------------------------------->
<!-- BARRE DE GESTION --------------------------->

<div class="my-5 flex items-center justify-between">
    <!-- Lien Surveiller ce forum -->
    <!-- BEGIN switch_user_logged_in -->
    <div>
        {S_WATCH_FORUM}
    </div>
    <!-- END switch_user_logged_in -->

    <!-- Boutons : nouveau, répondre, verrouillé -->
    <!-- BEGIN switch_user_authpost -->
    <a class="bg-gradient rounded py-1 px-3 text-white font-roboto uppercase shadow" href="{U_POST_NEW_TOPIC}" accesskey="n" rel="nofollow">Poster un nouveau sujet</a>
    <!-- END switch_user_authpost -->
</div>


<!----------------------------------------------->
<!-- LISTE DES SUJETS --------------------------->
<!--(template: topics_list_box) -->

<!-- Titre liste des sujets -->

<!-- Description du forum -->
<!-- BEGIN switch_forum_desc -->
<div class="forum-page_desc hidden">
    {SINGLE_FORUM_DESC}
</div>
<!-- END switch_forum_desc -->

<div class="bg-zinc-200 rounded p-2">
    <!-- Liste des sujets -->
    {TOPICS_LIST_BOX}
</div>



<!-- Bouton pour trier les sujets -->
<!-- BEGIN switch_sort_options -->
<div id="sort-topics" class="button">

    <span id="sort-btn"><i class="bi bi-filter"></i> Trier les sujets</span>

    <form method="post" class="sort-form">

        <h3>{switch_sort_options.L_SORT_BY}</h3>
        <select name="sort_method">{switch_sort_options.S_OPTIONS}</select>

        <br /><br />

        <h3>{switch_sort_options.L_ORDER}</h3>
        <label><input type="radio" name="sort_order" id="sort_order_d" value="0" {switch_sort_options.DESC_CHECKED} />
            {switch_sort_options.L_DESC}</label>
        <label><input type="radio" name="sort_order" id="sort_order_a" value="1" {switch_sort_options.ASC_CHECKED} />
            {switch_sort_options.L_ASC}</label>

        <br /><br />
        <input class="right" type="submit" value="{switch_sort_options.L_SORT}">
    </form>
</div>
<!-- END switch_sort_options -->


<!----------------------------------------------->
<!-- BARRE DE GESTION --------------------------->

<div class="my-5 flex items-center justify-between">
    <!-- BEGIN switch_user_logged_in -->
    <div>
        <a href="{U_MARK_READ}">{L_MARK_TOPICS_READ}</a>
    </div>
    <!-- END switch_user_logged_in -->

    <!-- Boutons : nouveau, répondre, verrouillé -->
    <!-- BEGIN switch_user_authpost -->
    <a class="bg-gradient rounded py-1 px-3 text-white font-roboto uppercase shadow" href="{U_POST_NEW_TOPIC}" accesskey="n" rel="nofollow">Poster un nouveau sujet</a>
    <!-- END switch_user_authpost -->

</div>



<!-- Conteneur : utilisateurs et pagination -->
<div class="bg-gradient text-white rounded p-2">

    <!-- Utilisateurs parcourant ce forum -->
    <span id="users_here" class="hidden">
        {LOGGED_IN_USER_LIST}
    </span>
    <!-- Modification de la phrase "utilisateur parcourant ce forum" -->
    <!-- 
        <script type="text/javascript">
            $("#users_here").html($("#users_here").html().replace("Utilisateurs parcourant actuellement ce forum",
                "Actuellement sur ce forum"));
        </script>
    -->


    <!-- Pagination -->
    <span class="right pagination page-topic">
        {PAGINATION}
    </span>
</div>

<!----------------------------------------------->
<!---------------->

<div class="separator"></div>


<!----------------------------------------------->
<!-- SAUTER VERS UN FORUM ----------------------->

<div class="right">
    <form action="{S_JUMPBOX_ACTION}" method="get" name="jumpbox"
        onsubmit="if(document.jumpbox.f.value == -1){return false;}">
        <fieldset class="vf_jumpbox">
            <label>{L_JUMP_TO}:</label><br />
            {S_JUMPBOX_SELECT} &nbsp;
            <input class="button2" type="submit" value="{L_GO}" />
        </fieldset>
    </form>
</div>


<!----------------------------------------------->
<!-- LIENS UTILES ------------------------------->

<a href="{U_EGOSEARCH_JS_PLUS_MENU}">Voir ses messages</a><br />
<a href="{U_NEWPOSTS_JS_PLUS_MENU}">Nouveaux messages depuis la dernière visite</a><br />
<a href="{U_UNANSWERED_JS_PLUS_MENU}">Messages sans réponses</a>

<br /><br />

<!----------------------------------------------->
<!-- OUTILS DE MODERATION ----------------------->
<div id="moderation_forum_tools">
    {S_AUTH_LIST}
</div>

<!-- Changement de texte du lien "modérer ce forum" -->
<script type="text/javascript">
    document.getElementById('moderation_forum_tools').innerHTML = document.getElementById('moderation_forum_tools')
        .innerHTML.replace(/modérer ce forum/, "Modérer les sujets du forum");
</script>




<br />
<div class="clear"></div>





<!-- BEGIN switch_sort_options -->
<script type="text/javascript">
    //<![CDATA[
    $(document).ready(function () {
        var sort_btn = $('#sort-btn');
        sort_btn.on('click', function () {
            sort_btn.toggleClass('expanded');
        });

        document.onclick = function (e) {
            if ($(e.target).parents('#sort-topics').length == 0) {
                document.getElementById('sort-btn').classList.remove('expanded');
            }
        };
    });
    //]]>
</script>
<!-- END switch_sort_options --> un nouveau sujet</a>
    <!-- END switch_user_authpost -->

</div>



<!----------------------------------------------->
<!---------------->

<br />
<div class="separator"></div>
<br />


<!----------------------------------------------->
<!-- SAUTER VERS UN FORUM ----------------------->

<div class="right">
    <form action="{S_JUMPBOX_ACTION}" method="get" name="jumpbox"
        onsubmit="if(document.jumpbox.f.value == -1){return false;}">
        <fieldset class="vf_jumpbox">
            <label>{L_JUMP_TO}:</label><br />
            {S_JUMPBOX_SELECT} &nbsp;
            <input class="button2" type="submit" value="{L_GO}" />
        </fieldset>
    </form>
</div>


<!----------------------------------------------->
<!-- LIENS UTILES ------------------------------->

<a href="{U_EGOSEARCH_JS_PLUS_MENU}">Voir ses messages</a><br />
<a href="{U_NEWPOSTS_JS_PLUS_MENU}">Nouveaux messages depuis la dernière visite</a><br />
<a href="{U_UNANSWERED_JS_PLUS_MENU}">Messages sans réponses</a>

<br /><br />

<!----------------------------------------------->
<!-- OUTILS DE MODERATION ----------------------->
<div id="moderation_forum_tools">
    {S_AUTH_LIST}
</div>

<!-- Changement de texte du lien "modérer ce forum" -->
<script type="text/javascript">
    document.getElementById('moderation_forum_tools').innerHTML = document.getElementById('moderation_forum_tools')
        .innerHTML.replace(/modérer ce forum/, "Modérer les sujets du forum");
</script>


<br />
<div class="clear"></div>


<!-- BEGIN switch_sort_options -->
<script type="text/javascript">
    //<![CDATA[
    $(document).ready(function () {
        var sort_btn = $('#sort-btn');
        sort_btn.on('click', function () {
            sort_btn.toggleClass('expanded');
        });

        document.onclick = function (e) {
            if ($(e.target).parents('#sort-topics').length == 0) {
                document.getElementById('sort-btn').classList.remove('expanded');
            }
        };
    });
    //]]>
</script>
<!-- END switch_sort_options -->


Ce code en haut me donne cette erreur : La balise a été fermée avant d'avoir été ouverte ou la balise n'a pas été ouverte.