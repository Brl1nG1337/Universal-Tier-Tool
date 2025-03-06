<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tier Detail</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="icon" href="/images/favicon.png" type="image/png">
</head>
<body>
    <div class="container mt-5">
        <h1>Tier Details</h1>

        <div class="card">
            <div class="card-header">
                <h3>${tier.name} - ${tier.tiersorte}</h3>
            </div>
            <div class="card-body">
                <p><strong>ID:</strong> ${tier.tierID}</p>
                <p><strong>Tierart:</strong> ${tier.tierart}</p>
                <p><strong>Geschlecht:</strong> ${tier.geschlecht}</p>
                <p><strong>Alter:</strong> ${tier.jahre} Jahre</p>
                <p><strong>Geburtstag:</strong> ${tier.geburtstag}</p>
                <p><strong>Herkunft:</strong> ${tier.herkunft}</p>
                <p><strong>Schwanger:</strong> ${tier.schwanger}</p>

                <!-- Hier kannst du zusätzliche Informationen über das Tier einfügen -->
                <a href="/tiere" class="btn btn-primary">Zurück zur Übersicht</a>
            </div>
        </div>
    </div>
</body>
</html>
