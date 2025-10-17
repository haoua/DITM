<!----------------------------------------------->
<!-- LISTE DES SUJETS --------------------------->
<!-- BEGIN topics_list_box -->

<!----------------------------------------------->
<!-- AFFICHAGE D'UN SUJET ----------------------->
<!-- BEGIN row -->
<!-- BEGIN topic -->

<!-- BEGIN line_sticky -->
<div class="topic_separator"></div> <!-- Ligne qui séparent les annonces et les notes des autres sujets (à activer dans "message > configuration") -->
<!-- END line_sticky -->


<!-- Conteneur d'un sujet -->
<div class="DITM_topicslist_row row {topics_list_box.row.FOLDER_CLASSNAME} {topics_list_box.row.TOPIC_READ_STATUS} bg-white dark:bg-zinc-900 p-2 flex shadow mb-3 rounded items-center">


    <!-- Image statut d'un sujet -->
    <div class="">
        <img class="h-14" src="{topics_list_box.row.TOPIC_FOLDER_IMG}" />
    </div>
    
    <!-- Avatar du dernier posteur-->
    <div class="topicslist-row__lastpost-user-img w-14 h-14 bg-cover rounded shadow p-1 bg-zinc-200 dark:bg-zinc-800 mx-3">
        <div class="w-full h-full border rounded"></div>
        <div class="hidden">
            <!-- BEGIN avatar -->
            {topics_list_box.row.topic.avatar.LAST_POST_AVATAR}
            <!-- END avatar -->
        </div>
    </div>


    <div class="flex-1" {topics_list_box.row.ICON}>

        <!-- Sélection d'un sujet 
                (utile uniquement durant la modération des sujets, permet de les sélectionner)-->
        <!-- BEGIN single_selection -->
        <input type="radio" name="{topics_list_box.FIELDNAME}" value="{topics_list_box.row.FID}" {topics_list_box.row.L_SELECT} />
        <!-- END single_selection -->
      
      	<!-- Icone de message -->
     	<span class="topic_msgicon"></span>

        <!-- Label type de sujet : annonce, note, ... -->
        <span class="topic-type">{topics_list_box.row.TOPIC_TYPE}</span>

        <!-- Titre du sujet -->
        <div class="flex items-center ">
            <a class="topictitle font-yeseva font-normal" href="{topics_list_box.row.U_VIEW_TOPIC}">{topics_list_box.row.TOPIC_TITLE}</a>&nbsp;
      
            <!-- Icon vous avez posté dans ce sujet -->
            {topics_list_box.row.PARTICIPATE_POST_IMG}
        </div>
      
        <span class="topic-author">
            {topics_list_box.row.L_BY}&nbsp;
            <!-- Indication "par" -->
            {topics_list_box.row.TOPIC_AUTHOR}
            <!-- Auteur -->
        </span>
      
      <!-- Pagination du sujet -->
        <span class="topicslist-pagination">
            {topics_list_box.row.GOTO_PAGE_NEW}
            <!-- BEGIN nav_tree -->
            {topics_list_box.row.TOPIC_NAV_TREE_NEW}
            <!-- END nav_tree -->
        </span>

    </div>


    <div class="flex flex-col">
        <!-- Statistiques -->
        <div class="DITM_topicslist-stats flex gap-3 justify-around">
            <!-- Nombres // Indication "messages" -->
            <div>
                <span class="text-two font-yeseva text-2xl mr-1">{topics_list_box.row.REPLIES}</span>
                <span class="uppercase text-xs">rep.</span>
            </div>
            
            <!-- Nombres // Indication "vues" -->
            <div>
                <span class="text-three font-yeseva text-2xl mr-1">{topics_list_box.row.VIEWS}</span>
                <span class="uppercase text-xs">{L_VIEWS}
            </div>
        </div>


        <!-- Dernier message -->
        <div class="DITM_topicslist-lastpost topicslist-row__lastpost-infos  lastpost">
            <!-- Date du dernier message -->
            {topics_list_box.row.LAST_POST_TIME} &nbsp;
            <br />
            <!-- Auteur du dernier message -->
            {topics_list_box.row.LAST_POST_AUTHOR} &nbsp;
            <!-- Image-lien pour aller au dernier message -->
            {topics_list_box.row.LAST_POST_IMG}
        </div>
    </div>


    <!-- Description du sujet -->
    <!-- BEGIN switch_description -->
    <div class="topicslist-description">
        {topics_list_box.row.topic.switch_description.TOPIC_DESCRIPTION}
    </div>
    <!-- END switch_description -->


</div>
<!-- END topic -->
<!-- END row -->

<!-- Fin du conteneur d'un sujet -->

<!-- Indication "pas de sujet" -->
<!-- BEGIN no_topics -->
<center><strong>{topics_list_box.row.L_NO_TOPICS}</strong></center>
<!-- END no_topics -->


<!-- END topics_list_box -->
<!-- Fin de la liste des sujets -->

<script type="text/javascript">
    $(".topicslist-row__lastpost-user-img").each(function(){
        let img = $(this).find('img').attr('src');
        $(this).css('background-image', 'url("'+img+'")');
    })
</script>



<!-- BEGIN multi_selection -->
<script type="text/javascript">
    function check_uncheck_main_ {
        topics_list_box.row.header_table.BOX_ID
    }() {
        alert('MAIN');

        var all_checked = true;

        for (i = 0;
            (i < document. {
                topics_list_box.FORMNAME
            }.elements.length) && all_checked; i++) {
            if (document. {
                    topics_list_box.FORMNAME
                }.elements[i].name == '{topics_list_box.FIELDNAME}[]{topics_list_box.row.header_table.BOX_ID}') {
                all_checked = document. {
                    topics_list_box.FORMNAME
                }.elements[i].checked;
            }
        }

        document. {
            topics_list_box.FORMNAME
        }.all_mark_ {
            topics_list_box.row.header_table.BOX_ID
        }.checked = all_checked;
    }

    function check_uncheck_all_ {
        topics_list_box.row.header_table.BOX_ID
    }() {
        alert('ALL');

        for (i = 0; i < document. {
                topics_list_box.FORMNAME
            }.length; i++) {
            if (document. {
                    topics_list_box.FORMNAME
                }.elements[i].name == '{topics_list_box.FIELDNAME}[]{topics_list_box.row.header_table.BOX_ID}') {
                document. {
                    topics_list_box.FORMNAME
                }.elements[i].checked = document. {
                    topics_list_box.FORMNAME
                }.all_mark_ {
                    topics_list_box.row.header_table.BOX_ID
                }.checked;
            }
        }
    }

</script>
<!-- END multi_selection -->
            