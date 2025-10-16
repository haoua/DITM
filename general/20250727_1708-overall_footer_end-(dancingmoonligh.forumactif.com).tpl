<!-- BEGIN html_validation -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
<div>
    <div>
        <div>
            <div>
                <div>
                    <div>
                        <div>
                            <ul>
                                <li>
<!-- END html_validation -->
                                </li>
                            </ul>

                        </div>
                    </div>
                                  
                </div>
                {PROTECT_FOOTER}
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
//<![CDATA[
    fa_endpage();
//]]>
</script>
<script type="text/javascript">
//<![CDATA[
$(document).ready(function() {
    $(window).scroll(function() {
        var header_top = $('#headerbar-top');

        if (header_top.hasClass('w-toolbar')) {
            if ($(window).scrollTop() >= 42) {
                header_top.addClass('is-sticky');
            } else {
                header_top.removeClass('is-sticky');
            }
        } else {
            if ($(window).scrollTop() >= 1) {
                header_top.addClass('is-sticky');
            } else {
                header_top.removeClass('is-sticky');
            }
        }
    });
});
//]]>
</script>

<script>
    location.pathname == "/search" && location.search == "?search_id=draftsearch" && $(function () {
        $('body').addClass('drafts__main');
        $('h1.page-title').addClass('DITM_page_title font-bold text-white text-center font-yeseva lowercase bg-gradient rounded-t py-2');
        $('h1.DITM_page_title').removeClass('page-title');
        $('.row3').removeClass('panel');
        $('.panel').addClass('bg-zinc-200 p-2 rounded-b mb-4');
        $('.panel').removeClass('panel');
        if($(".table1 tbody tr td").length == 1){
            $('thead').addClass('hidden');
            $('td').addClass('bg-white rounded shadow p-2');
        }else{
            $('.mobile-visible').each(function(){
                $(this).addClass("hidden");
            });

            $('table').addClass("rounded bg-zinc-100 shadow mb-2");

            $('.row3 p.right-box').html($('.row3 p.right-box').html().replace('::', ''));
            $('.row3 p.right-box a').wrap('<div class="bg-white w-fit rounded shadow">');
            $('.row3 p.right-box a').addClass('p-1 px-2 text-gradient flex');
            $('p.right-box:first').addClass('flex gap-4 justify-end');
            $('p.right-box:first').append($('.submit-buttons').html());
            $('.submit-buttons').addClass('hidden');
            $('p.right-box:last').addClass('hidden');
            $('.button1').addClass('bg-red-500 text-white p-1 px-2 rounded shadow');

            $('tbody td').each(function(){
                $(this).addClass("border-b border-blue-gray-50 p-2 bg-white text-left");
            });

            $('thead th').each(function(){
                $(this).addClass("p-2 text-left border-b border-blue-gray-100");
            });

            $('thead th:last').removeClass('text-left');
            $("thead th").eq(-2).removeClass('text-left');

            $('thead th:last').addClass('w-1');
            $("thead th").eq(-2).addClass('w-1');
            
            $('table').find('tr:last').find('td:first').addClass('rounded-bl'); 
            $('table').find('tr:last').find('td:last').addClass('rounded-br');

            $('.topictitle').each(function(){
                $(this).removeClass('topictitle');
            });
        }
    });

    location.pathname == "/login" && $(function () {
        $('body').addClass('login__body');

        $('form').addClass('flex-1');
        $('.panel:first').addClass('login__form');
        $('.panel:last').addClass('login__register-infos w-96');
        $('.panel').removeClass('panel');

        $('.login__register-infos .content').addClass('pb-2');

        $('#main-content').addClass('flex gap-5');
        $('.inner').addClass('rounded shadow bg-zinc-200 pb-2');
        $('.inner .content').removeClass('content');

        $('.login__form .h3').addClass('bg-gradient p-2 text-white rounded-t text-center flex items-center font-roboto uppercase text-lg');
        $('.login__form .h3').html('<i class="ri-sparkling-line font-normal mr-1"></i> Informations de connexion');
        
        $('.login__register-infos .h3').addClass('bg-gradient p-2 text-white rounded-t text-center flex items-center font-roboto uppercase text-lg');
        $('.login__register-infos .h3').html('<i class="ri-sparkling-line font-normal mr-1"></i> Nous rejoindre');
        $('.login__register-infos p').addClass('m-2 p-2 rounded shadow');
        $('.login__register-infos p:first').addClass('bg-white text-center');
        $('.login__register-infos p:first').html('Sous les néons et les secrets de la Nouvelle-Orléans, un nouveau chapitre vous attend.<br>Créez votre compte et entrez dans la danse.');

        $('.login__register-infos p:last').addClass('my-0 bg-gradient text-center');
        $('.login__register-infos p:last a').addClass('uppercase font-roboto text-white');
        $('.login__register-infos .corners-bottom').each(function(){ $('this').remove();});

        $('.button1').addClass('my-0 bg-gradient text-center uppercase font-roboto text-white w-full p-2 shadow rounded');

        $('.login__register-infos hr').addClass('hidden');

        $('.fields1').removeClass('left');
        $('.fields1').addClass('p-2 rounded bg-white m-2 mb-0');
    
        $('fieldset dl:first').addClass('flex items-center mb-2');
        $('fieldset dl:first dt').addClass('w-32');
        $('fieldset dl:first dd').addClass('flex-1');

        $('fieldset dl:nth-child(2)').addClass('flex items-center mb-2 flex-wrap');
        $('fieldset dl:nth-child(2) dt').addClass('w-32');
        $('fieldset dl:nth-child(2) dd:first').addClass('flex-1');
        $('fieldset dl:nth-child(2) dd:last').addClass('basis-full');
        $('.password-container').addClass('relative');
        $('.password-container img').addClass('cursor-pointer absolute');
        $('.password-container img').css('right', '5px');
        $('.password-container img').css('top', '50%');
        $('.password-container img').css('transform', 'translate(-50%, -50%)');

        $('#username').addClass('bg-zinc-100 rounded w-full');
        $('#password').addClass('bg-zinc-100 rounded w-full');

        $('fieldset dl:last').addClass('block mt-1');
        $('fieldset dl:last dt').addClass('hidden');
    });
</script>

<!--------------------------------------->
<!-- BARRE LATERALE GAUCHE POUR PLUGIN -->  
<div class="sidebar_top">
	<!-- Barre switcheroo -->
	<nav id="switcheroo" class="switcheroo"></nav>
</div>

<div class="sidebar">  
    <div class="sidebar_bottom fixed flex flex-col gap-2 text-center">
          
            <!-- Lien retour en haut -->
            <a href="#top" class="rounded px-2 py-1"><i class="ion-chevron-up"></i></a>
        
            <!-- Switch thème button -->
            <div data-theme-controls>
                <button class="color-scheme-toggle rounded" title="Activer le mode sombre" aria-describedby="theme-controls-focus-text">
                    <!-- Light theme -->
                    <div class="icon light"><i class="ion-ios-sunny"></i></div>
                    <!-- Dark theme -->
                    <div class="icon dark"><i class="ion-ios-moon"></i></div>
                </button>
            </div>
        
            <!-- Lien retour en bas -->
            <a href="#bottom" class="rounded px-2 py-1"><i class="ion-chevron-down"></i></a>
        </div>
</div>
  
<!-- WOMBAT plugin : https://blankthemerpg.forumactif.com/t74-wombat -->
<script src="https://cdn.jsdelivr.net/gh/caezd/wombat/dist/wombat.min.js"></script>
<!-- Script qui permet d'initialiser le plugin -->
<script>
	new Wombat({
		afterLoad: function(aside, overlay) {
			/* Personnalisation des champs de contact du profil */
			try { customContactField_inProfile(contactFields_list, contactFields_inProfile + " a"); }
			catch { console.log("⚠️ Erreur profils Wombat : Il manque le script de personnalisation des champs de contact")};

			/* D'autres scripts peuvent être ajoutés en plus de celui là !*/
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
		}
	});
</script>
 

<!-- EDISON plugin : https://blankthemerpg.forumactif.com/t77-edison -->
<script>
(function () {
    const html = document.documentElement;
    const themeControls = document.querySelector("[data-theme-controls]");
    const toggle = themeControls.querySelector(".color-scheme-toggle");
    
    const setToggleLabel = function () {
        let mode = html.dataset.colorScheme;
        toggle.setAttribute(
            "title",
            "Activer le mode " + (mode === "dark" ? "clair" : "sombre")
        );
    };

    const setChatboxColorScheme = function(obj, value){
        try {
            const innerDoc = obj.contentDocument || obj.contentWindow.document;
            const htmlTag = innerDoc.documentElement;

            if (typeof htmlTag.setAttribute === "function") {
              htmlTag.setAttribute("data-color-scheme", value);
              console.log("✅ Attribut ajouté au tag <html>");
            } else {
              console.warn("❌ Impossible de modifier le tag <html>");
            }

        } catch (e) {
            console.error("Erreur :", e);
        }
    };

    const setColorScheme = function (value) {
        html.dataset.colorScheme = value;
        localStorage.setItem("color-scheme", value);

        if(value==="dark"){
            document.documentElement.classList.add('dark');
        }else{
            document.documentElement.classList.remove('dark');
        }

        const objectChatbox = document.getElementById("frame_chatbox");
        setChatboxColorScheme(objectChatbox, value);

        setToggleLabel();
    };

    const init = function () {
        const objectEl = document.getElementById("frame_chatbox");
        if (objectEl) {
            objectEl.addEventListener("load", () => {
                setChatboxColorScheme(objectEl, html.dataset.colorScheme);
            });
        }

        if(html.dataset.colorScheme==="dark"){
            document.documentElement.classList.add('dark');
        }else{
            document.documentElement.classList.remove('dark');
        }

        setToggleLabel();
    };

    toggle.addEventListener("click", function () {
        const scheme = html.dataset.colorScheme === "dark" ? "light" : "dark";
        setColorScheme(scheme);
    });

    init();

})();
</script>
  
<!-- SWITCHEROO plugin : https://blankthemerpg.forumactif.com/t36-switcheroo -->
<!-- Monomer.js et Switcheroo.js -->
<script src="https://cdn.jsdelivr.net/gh/caezd/switcheroo@1.1-beta/monomer.js"></script>
<script src="https://cdn.jsdelivr.net/gh/caezd/switcheroo@1.1-beta/switcheroo.js"></script>

<!-- Script qui permet d'initialiser le plugin -->
<script>
(function() {
    new Switcheroo('#switcheroo', {
        logo: '<i class="bi bi-house-door-fill"></i>', /* accepte html, permet d'afficher un logo qui retourne à l'accueil du forum */
        enableReorder: true, /* activer le drag&drop pour l'ordre des comptes (true/false) */
        updateAvatar: true, /* activer le clique droit pour charger un nouvel avatar (true/false) */
        confirm: true, /* demande une confirmation avant le changement de compte */
        confirmMsg: 'Confirmer le Switcheroo de personnage ?', /* le message affiché lors de la confirmation */
        deleteIcon: '×', /* accepte html, icone pour scriptupprimer un compte lié */
        addIcon: '<i class="bi bi-plus"></i>', /* accepte html, icone qui ouvre le formulaire de connexion et d'association */
        errorMsg: 'Une erreur est surviendue lors du Switcheroo.',
    });
})();
  
</script>

</html>