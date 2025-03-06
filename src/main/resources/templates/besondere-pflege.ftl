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
    <title>${assing_pflege_card_title}</title>
    <link rel="icon" href="/images/favicon.png" type="image/png">
    <link rel="stylesheet" href="/css/styles.css">
    <@macro_background/>
</head>
<body class="background-container">
<@macro_header_detail title="${assing_pflege_card_title}"/>
<div id="table-container" class="container pt-3">
    <div class="col-md-10">
        <@macro_zurueck_btn/>
        <h1 class="text-light" style="font-size: 2rem">Schwangere Tiere</h1>
        <table class="table">
            <@macro_toast id="schwangereTiereToast" text="SELECT t FROM tier t <br>where t.schwanger = 1 <br>order by t.tierID asc"/>
            <thead>
            <tr>
                <th>Tier ID</th>
                <th>Name</th>
                <th>Gehege (ID)</th>
                <th>Alter</th>
            </tr>
            </thead>
            <tbody>
            <#list schwangereTiere as tier>
                <tr>
                    <td>${tier.tierID!'-'}</td>
                    <td>${tier.name!'-'}</td>
                    <td>${tier.gehege.name} (${tier.gehege.gehegeID})</td>
                    <td>${tier.jahre} Jahre</td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>
</div>

<div id="table-container" class="container pt-3">
    <div class="col-md-10">
        <h1 class="text-light" style="font-size: 2rem">Jungtiere</h1>
        <table class="table">
            <@macro_toast id="jungtereToast"
            text="SELECT t FROM tier t <br>where t.jahre <= 3 <br>order by t.tierID asc"/>
            <thead>
            <tr>
                <th>Tier ID</th>
                <th>Name</th>
                <th>Gehege (ID)</th>
                <th>Alter</th>
            </tr>
            </thead>
            <tbody>
            <#list jungtiere as tier>
                <tr>
                    <td>${tier.tierID!'-'}</td>
                    <td>${tier.name!'-'}</td>
                    <td>${tier.gehege.name} (${tier.gehege.gehegeID})</td>
                    <td>${tier.jahre} Jahre</td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>
</div>

<div id="table-container" class="container pt-3">
    <div class="col-md-10">
        <h1 class="text-light" style="font-size: 2rem">Kranke Tiere</h1>
        <table class="table">
            <@macro_toast id="krankeTiereToast"
            text="SELECT tierID, tiername, krankheit, ansteckend, behandlungsmassnahme <br>FROM v_tierKrankheiten <br>order by tierID asc"/>
            <thead>
            <tr>
                <th>Tier ID</th>
                <th>Name</th>
                <th>Krankheit</th>
                <th>Ansteckend</th>
                <th>Behandlungsmassnahme</th>
            </tr>
            </thead>
            <tbody>
            <#list tierKrankheitDtos as dto>
                <tr>
                    <td>${dto.tierId!'-'}</td>
                    <td>${dto.tiername!'-'}</td>
                    <td>${dto.krankheit!'-'}</td>
                    <td>${dto.ansteckend}</td>
                    <td>${dto.behandlungsmassnahme!'-'}</td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>
</div>

<@macro_footer/>
</body>
</html>
