<!DOCTYPE html>
<html lang="de">
<head>
    <#include "macros.ftl">
    <#include "assigns.ftl">
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
    <title>${assing_fuetterung_card_title}</title>
    <link rel="icon" href="/images/favicon.png" type="image/png">
    <link rel="stylesheet" href="/css/styles.css">
    <@macro_background/>
</head>
<body class="background-container">
<@macro_header_detail title="${assing_fuetterung_card_title}"/>

<div id="table-container" class="container pt-3">
    <div class="col-md-12">
        <@macro_zurueck_btn/>
        <#assign rowId = "row"/>
        <@macro_slide_in_toast tId="${rowId}" id="fuetterungszeitenToast"
        text="SELECT <br>g.gehegeid,<br> g.name,<br> g.fuetterungszeit,<br> f.name,<br> ft.futtermenge_kg<br>" +
        "FROM gehege g <br>" +
        "JOIN futterlager fl<br> ON g.futterlagerid = fl.futterlagerid <br>" +
        "JOIN futtertrog ft<br> ON g.gehegeid = ft.gehegeid <br>" +
        "JOIN futter f<br> ON ft.futterid = f.futterid <br>" +
        "ORDER BY g.gehegeid ASC<br>"/>

        <!-- Zeitplan als Cards -->
        <div id="${rowId}" class="row" style="max-width: 85%; margin: 0 auto;">
            <#list gehegeFuetterungsDtos as dto>
                <div class="col-md-4 mb-4">
                    <div class="card bg-dark-subtle shadow-sm">
                        <div class="card-body">
                            <h5 class="card-title text-light bold">${dto.gehegeName} (${dto.gehegeId})</h5>
                            <p class="card-text text-light">
                                Futter: ${dto.futterName}<br>
                                Fütterungszeit: ${dto.fuetterungszeit} Uhr<br>
                                Menge: ${dto.futterMenge} KG<br>
                            </p>
                        </div>
                    </div>
                </div>
            </#list>
        </div>
    </div>
</div>

<@macro_footer/>
</body>
</html>
