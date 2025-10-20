<!----------------------------------->
<!-- LISTE DES MEMBRES -------------->
<div class="bg-zinc-200 dark:bg-zinc-800 rounded shadow mb-5">
	<!-- Titre de la liste des membres -->
	<div class="DITM_title_container">
		<h1 class="DITM_page_title font-bold text-white text-center uppercase bg-gradient rounded-t py-4" style="font-size: var(--title-size);">{PAGE_TITLE}</h1>
	</div>

	<div class="p-2">
		<!------------------------------------>
		<!-- BARRE DE RECHERCHE --------------> 

		<div class="DITM_links_bar memberlist_searchbar mb-2">
			<form class="bg-white dark:bg-zinc-900 rounded shadow p-2 text-center flex items-center justify-center" action="{S_MODE_ACTION}" method="get">
				<div class="mr-2">
					<span class="uppercase font-roboto text-three font-medium mr-1">{L_USER_SELECT}</span>
					<input type="text" class="inputbox tiny rounded bg-zinc-100 dark:bg-zinc-700 border border-zinc-100 dark:border-zinc-700 focus:border-zinc-300 dark:focus:border-zinc-500" name="username" maxlength="25" size="20" value="{L_USER_SELECT_VALUE}" />
				</div>
				<div class="mr-2">
					<span class="uppercase font-roboto text-three font-medium mr-1">{L_SELECT_SORT_METHOD}</span> {S_MODE_SELECT} 
				</div>
				<div class="mr-2">
					<span class="uppercase font-roboto text-three font-medium mr-1">{L_ORDER}</span> {S_ORDER_SELECT} 
					{S_HIDDEN_SID}
				</div>
				<input class="button2 bg-gradient-800 text-white py-2 px-5 uppercase rounded" type="submit" name="submit" value="{L_SUBMIT}" />
			</form>
		</div>

		<!-- Liste des membres -->
		<div class="userlist flex gap-2 flex-wrap justify-between">

			<!-- Affichage d'un profil -->
			<!-- BEGIN memberrow -->
			<div class="DITM_userlist_profil rounded flex flex-col relative overflow-hidden">
				{memberrow.AVATAR_IMG}
				
				<a href="{memberrow.U_VIEWPROFILE}" class="memberlist__username absolute bottom-0 top-0 p-4 w-full text-center">
					{memberrow.USERNAME}
				</a>

				<div class="DITM_userlist_infos shrink-0 absolute p-2 bg-zinc-900 w-full h-full" style="--tw-bg-opacity: .4;">
					<div class="text-white border rounded p-2 h-full pt-14">
						<span class="uppercase font-roboto text-zinc-400 font-bold">Avec nous depuis</span><br> {memberrow.JOINED}<br />
						<span class="uppercase font-roboto text-zinc-400 font-bold">dernière visite</span><br> {memberrow.LASTVISIT}<br />
						<span class="uppercase font-roboto text-zinc-400 font-bold">{L_POSTS}</span><br> {memberrow.POSTS}<br />

						<a href="{memberrow.U_VIEWPROFILE}" class="bg-gradient text-white uppercase w-full inline-block text-center rounded py-1 mt-20">Voir le profil</a>
					</div>
				</div>
			</div>
			
			<!-- END memberrow -->
			<!-- Fin d'un profil -->
		</div>
	</div>
	<!-- Fin liste des membres -->
</div>

<!-- Pagination -->
<!-- BEGIN switch_pagination -->
<div class="bg-gradient-300 text-center rounded p-2 shadow">
	<span class="pagination">
		{PAGINATION}
	</span>
</div>
<!-- END switch_pagination -->

<script>
	$('.memberlist_searchbar select').each(function(){
		$(this).addClass('rounded bg-zinc-100 dark:bg-zinc-700 border border-zinc-100 dark:border-zinc-700 focus:border-zinc-300 dark:focus:border-zinc-500');
	});
</script>