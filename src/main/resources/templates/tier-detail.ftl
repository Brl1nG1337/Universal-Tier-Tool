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
    <title>Tier Detail</title>
    <link rel="icon" href="/images/favicon.png" type="image/png">
    <link rel="stylesheet" href="/css/styles.css">
    <@macro_background/>

    <style>
      /* Set the default text color to white and increase the font size */
      body {
        font-size: 1.1rem !important; /* Adjust this value for your preferred size */
      }

      .card-header h3 {
        font-size: 1.5rem !important; /* Adjust title font size */
      }

      .card-body ul li {
        font-size: 1.2rem !important; /* Increase size for list items */
      }

      .alert h4 {
        font-size: 1.3rem !important; /* Font size for additional info heading */
      }

      .btn {
        font-size: 1.1rem !important; /* Increase button text size */
      }
    </style>
</head>
<body class="background-container">
<@macro_header_detail title="Tier Detail" />

<div id="tier-detail-container" class="container pt-4">
    <div class="col-md-10">
        <!-- Zurück Button -->
        <@macro_zurueck_btn text="Zurück"/>

        <!-- Tier Details -->
        <div class="card mt-4">
            <div class="card-header">
                <h3>${tier.name} - ${tier.tiersorte}</h3>
            </div>
            <div class="card-body">
                <ul class="list-unstyled">
                    <li><strong>ID:</strong> ${tier.tierID}</li>
                    <li><strong>Tierart:</strong> ${tier.tierart}</li>
                    <li><strong>Geschlecht:</strong> ${tier.geschlecht}</li>
                    <li><strong>Alter:</strong> ${tier.jahre} Jahre</li>
                    <li><strong>Geburtstag:</strong> ${tier.geburtstag}</li>
                    <li><strong>Herkunft:</strong> ${tier.herkunft}</li>
                    <li><strong>Schwanger:</strong> ${tier.schwanger}</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<@macro_footer/>
</body>
</html>
