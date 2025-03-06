<!DOCTYPE html>
<html lang="de">
<head>
    <#include "macros.ftl">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="/js/script.js"></script>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Krankheiten</title>
    <link rel="icon" href="/images/favicon.png" type="image/png">
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>
<@macro_header/>
<div id="table-container">
    <table class="styled-table">
        <thead>
        <tr>
            <th>Name</th>
            <th>Ansteckend</th>
            <th>Behandlung</th>
        </tr>
        </thead>
        <tbody>
        <#list krankheiten as krankheit>
            <tr>
                <td title="Name">${krankheit.name!'-'}</td>
                <td title="Ansteckend">${krankheit.ansteckend!'-'}</td>
                <td title="Behandlung">${krankheit.behandlungsmassnahme!'-'}</td>
            </tr>
        </#list>
        </tbody>
    </table>
</div>
</body>
</html>
