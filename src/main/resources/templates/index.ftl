<!DOCTYPE html>
<html lang="de">
<head>
    <#include "macros.ftl">
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="/js/script.js"></script>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UTT - Startseite</title>
    <link rel="icon" href="/images/favicon.png" type="image/png">
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>
<@macro_logo/>

<div class="container mt-4">
    <h1 class="text-center">Willkommen beim Universal Tier-Tool (UTT)</h1>
    <p class="text-center">Ihr Tool für eine optimale Tierverwaltung und Pflege.</p>

    <div class="row">
        <!-- Tiere -->
        <div class="col-md-4">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">Tiere</h5>
                    <p class="card-text">Verwalten Sie alle Tiere mit relevanten Informationen.</p>
                    <a href="/tiere" class="btn btn-primary">Tiere verwalten</a>
                </div>
            </div>
        </div>

        <!-- Krankheiten -->
        <div class="col-md-4">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">Krankheiten</h5>
                    <p class="card-text">Erkrankungen und Behandlungen im Überblick.</p>
                    <a href="/krankheiten" class="btn btn-primary">Krankheiten anzeigen</a>
                </div>
            </div>
        </div>

        <!-- Futterlager -->
        <div class="col-md-4">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">Futterlager</h5>
                    <p class="card-text">Behalten Sie den Überblick über den Futterbestand.</p>
                    <a href="/futterlager" class="btn btn-primary">Futterbestand prüfen</a>
                </div>
            </div>
        </div>
    </div>

    <div class="row mt-4">
        <!-- Gehege Fütterung -->
        <div class="col-md-4">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">Fütterungsplan</h5>
                    <p class="card-text">Sehen Sie, wann und wie viel Futter in welchem Gehege benötigt wird.</p>
                    <a href="/fuetterung" class="btn btn-primary">Fütterungsplan anzeigen</a>
                </div>
            </div>
        </div>

        <!-- Epidemie-Anzeige -->
        <div class="col-md-4">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">Epidemie-Überblick</h5>
                    <p class="card-text">Sehen Sie sofort, wie viele Tiere betroffen sind.</p>
                    <a href="/epidemie" class="btn btn-primary">Epidemie-Übersicht</a>
                </div>
            </div>
        </div>

        <!-- Besondere Pflege -->
        <div class="col-md-4">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">Besondere Pflege</h5>
                    <p class="card-text">Jungtiere, schwangere oder erkrankte Tiere im Blick behalten.</p>
                    <a href="/besondere-pflege" class="btn btn-primary">Pflegebedürftige Tiere</a>
                </div>
            </div>
        </div>
    </div>

    <div class="row mt-4">
        <!-- Bestellliste -->
        <div class="col-md-4 offset-md-4">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">Bestellliste</h5>
                    <p class="card-text">Automatisch generierte Nachbestellungen für Futter.</p>
                    <a href="/bestellliste" class="btn btn-primary">Bestellliste anzeigen</a>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
