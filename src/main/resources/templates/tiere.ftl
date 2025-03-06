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
    <script src="https://www.kryogenix.org/code/browser/sorttable/sorttable.js"></script>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tierübersicht</title>
    <link rel="icon" href="/images/favicon.png" type="image/png">
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>
    <@macro_logo/>
    <div id="table-container">
        <!-- Tabelle mit der Klasse "sortable" -->
        <table class="styled-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Tiersorte</th>
                    <th>Tierart</th>
                    <th>Geschlecht</th>
                    <th>Alter</th>
                    <th>Geburtstag</th>
                    <th>Herkunft</th>
                    <th>Schwanger</th>
                    <th>Aktion</th>
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
                        <a href="/tier-detail?tierId=${tier.tierID}">
                            <button class="button">Details anzeigen</button>
                        </a>
                    </td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>
</body>
</html>
