<!DOCTYPE html>
<html lang="de">
<head>
    <#include "macros.ftl">
    <#include "assigns.ftl">
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="/js/script.js"></script>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UTT - Startseite</title>
    <link rel="icon" href="/images/favicon.png" type="image/png">
    <link rel="stylesheet" href="/css/styles.css">
    <@macro_background/>
</head>
<body class="background-container">
<@macro_header title="Willkommen beim Universal Tier-Tool (UTT)" subtitle="Ihr Tool für eine optimale Tierverwaltung und Pflege"/>

<div class="container mt-4">
    <div class="row">
        <!-- Tier Übersicht -->
        <#--        @formatter:off-->
        <@macro_card
            imageUrl="${assign_imageUrl_tier_card}"
            title="${assing_tier_card_title}"
            subtitle="${assing_tier_card_subtitle}"
            refUrl="/tiere"
            buttonLabel="Tiere anzeigen"
        />

        <!-- Krankheiten -->
        <@macro_card
            imageUrl="${assign_imageUrl_krankheiten_card}"
            title="${assing_krankheiten_card_title}"
            subtitle="${assing_krankheiten_card_subtitle}"
            refUrl="/krankheiten"
            buttonLabel="Krankheiten anzeigen"
        />
        <!-- Futterlager -->
        <@macro_card
            imageUrl="${assign_imageUrl_futterlager_card}"
            title="${assing_futterlager_card_title}"
            subtitle="${assing_futterlager_card_subtitle}"
            refUrl="/futterlager"
            buttonLabel="Futterbestand prüfen"
        />
    </div>
    <div class="row mt-4">
        <!-- Gehege Fütterung -->
        <@macro_card
            imageUrl="${assign_imageUrl_fuetterung_card}"
            title="${assing_fuetterung_card_title}"
            subtitle="${assing_fuetterung_card_subtitle}"
            refUrl="/fuetterung"
            buttonLabel="Fütterungszeiten anzeigen"
        />

        <!-- Besondere Pflege -->
        <@macro_card
            imageUrl="${assign_imageUrl_pflege_card}"
            title="${assing_pflege_card_title}"
            subtitle="${assing_pflege_card_subtitle}"
            refUrl="/besondere-pflege"
            buttonLabel="Pflegebedürftige Tiere"
        />

        <#--    <div class="row mt-4">-->
        <#--        <!-- Bestellliste &ndash;&gt;-->
        <#--        <div class="col-md-4 offset-md-4">-->
        <#--            <div class="card text-center">-->
        <#--                <div class="card-body">-->
        <#--                    <h5 class="card-title">Bestellliste</h5>-->
        <#--                    <p class="card-text">Automatisch generierte Nachbestellungen für Futter.</p>-->
        <#--                    <a href="/bestellliste" class="btn btn-primary">Bestellliste anzeigen</a>-->
        <#--                </div>-->
        <#--            </div>-->
        <#--        </div>-->
    </div>
</div>



<#--        <!-- Epidemie-Anzeige &ndash;&gt;-->
<#--        <div class="col-md-4">-->
<#--            <div class="card text-center">-->
<#--                <div class="card-body">-->
<#--                    <h5 class="card-title">Epidemie-Überblick</h5>-->
<#--                    <p class="card-text">Sehen Sie sofort, wie viele Tiere betroffen sind.</p>-->
<#--                    <a href="/epidemie" class="btn btn-primary">Epidemie-Übersicht</a>-->
<#--                </div>-->
<#--            </div>-->
<#--        </div>-->


<@macro_footer/>

</body>
</html>
