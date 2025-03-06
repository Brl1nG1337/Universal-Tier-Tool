<!DOCTYPE html>
    <html lang="de">
    <head>
        <#include "macros.ftl">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
              rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
              crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
                crossorigin="anonymous"></script>
        <script src="/js/script.js"></script>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tierübersicht</title>
        <link rel="icon" href="/images/favicon.png" type="image/png">
        <link rel="stylesheet" href="/css/styles.css">
    </head>
    <body>
    <@macro_header title="Tier Übersicht" subtitle="Alle Tiere auf einem Blick"/>
    <div id="table-container" class="container pt-3">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Name</th>
                <th scope="col">Tiersorte</th>
                <th scope="col">Tierart</th>
                <th scope="col">Geschlecht</th>
                <th scope="col">Alter</th>
                <th scope="col">Geburtstag</th>
                <th scope="col">Herkunft</th>
                <th scope="col">Schwanger</th>
                <th scope="col">Aktion</th>
            </tr>
            </thead>
            <tbody>
            <#list tiere as tier>
                <tr>
                    <td title="ID">${tier.tierID}</td>
                    <td title="Name">${tier.name}</td>
                    <td title="Tiersorte">${tier.tiersorte}</td>
                    <td title="Tierart">${tier.tierart}</td>
                    <td title="Geschlecht">${tier.geschlecht}</td>
                    <td title="Alter">${tier.jahre}</td>
                    <td title="Geburtstag">${tier.geburtstag}</td>
                    <td title="Herkunft">${tier.herkunft}</td>
                    <td title="Schwanger">${tier.schwanger}</td>
                    <td>
                        <a href="/tier-detail?tierId=${tier.tierID}" class="btn btn-primary">Details
                            anzeigen
                        </a>
                    </td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>

    <@macro_footer/>
    </body>
</html>
