<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tier Detail</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
          crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <script src="/js/script.js"></script>
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
