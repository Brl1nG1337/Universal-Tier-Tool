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
    <title>${assing_futterlager_card_title}</title>
    <link rel="icon" href="/images/favicon.png" type="image/png">
    <link rel="stylesheet" href="/css/styles.css">
    <@macro_background/>
</head>
<body class="background-container">
<@macro_header_detail title="${assing_futterlager_card_title}"/>
<div id="table-container" class="container pt-3">
    <div class="col-md-10">
        <@macro_zurueck_btn/>
        <table class="table">
            <@macro_toast id="fuetterungszeitenToast"
            text="SELECT f.name, f.mengeKg <br>FROM futter <br>order by f.futterlagerId asc"/>
            <thead>
            <tr>
                <th>Name</th>
                <th>Menge (kg)</th>
            </tr>
            </thead>
            <tbody>
            <#list futterList as futter>
                <tr>
                    <td title="Name">${futter.name}</td>
                    <td title="Menge (kg)">${futter.mengeKg}</td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>
</div>

<@macro_footer/>
</body>
</html>
