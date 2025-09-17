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