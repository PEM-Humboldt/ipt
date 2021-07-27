[#ftl output_format="HTML"]
<!DOCTYPE html>
<html lang="en" class="h-100">
<head>
    <meta name="copyright" lang="en" content="GBIF" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>[@s.text name="admin.config.setup.title"/]</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="${baseURL}/styles/bootstrap/bootstrap-5.0.0-beta3.min.css">

    <!-- IPT CSS -->
    <link rel="stylesheet" type="text/css" href="${baseURL}/styles/main.css" />

    <link rel="shortcut icon" href="${baseURL}/images/icons/favicon-16x16.png" type="image/x-icon" />

    <!-- for support of old browsers, like IE8. See http://modernizr.com/docs/#html5inie -->
    <script type="text/javascript" src="${baseURL}/js/modernizr.js"></script>
    <script type="text/javascript" src="${baseURL}/js/jquery/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="${baseURL}/js/global.js"></script>

</head>
<body class="bg-light d-flex flex-column h-100">

<header>

    <nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-gbif-green-gradient py-1 shadow-sm">
        <div class="container">
            <a href="${baseURL}/" rel="home" title="GBIF Logo" class="navbar-brand" >
                <img src="${baseURL}/images/gbif-logo-L.svg" alt="GBIF IPT" class="gbif-logo"/>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </nav>

</header>
