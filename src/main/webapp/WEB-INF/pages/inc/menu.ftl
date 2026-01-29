[#ftl output_format="HTML"]
</head>

<script>
    function handleCustomLogoError() {
        document.getElementById("gbif-logo-custom").style = "display: none;";
        document.getElementById("gbif-logo").style = "display: inline-block;";

        var loginPageLogoCustom = document.getElementById("login-page-logo-custom");
        if (loginPageLogoCustom) {
            loginPageLogoCustom.style = "display: none;";
        }

        var loginPageLogo = document.getElementById("login-page-logo");
        if (loginPageLogo) {
            loginPageLogo.style = "display: inline-block;";
        }
    }
</script>
<script>
    // Check if the public URL is correct, otherwise display the fallback page
    document.addEventListener("DOMContentLoaded", function() {
        var xhr = new XMLHttpRequest();
        xhr.open("GET", "${baseURL}/styles/main.css");
        xhr.onload = function() {
            if (xhr.status !== 200) {
                window.location.href = "/fallback.do";
            }
        };
        xhr.onerror = function() {
            window.location.href = "/fallback.do";
        };
        xhr.send();
    });
</script>

<body class="bg-body d-flex flex-column h-100">

[#assign currentLocale = .vars["locale"]!"en"/]
[#assign resourceTypeLowerCase = (resource.coreType?lower_case)!"other"]
[#assign resourceSubtypeLowerCase = (resource.subtype?lower_case)!""]

<header>
    <nav class="navbar navbar-expand-xl navbar-light bg-gbif-main-navbar fixed-top py-1 [#if !auxTopNavbar]shadow-sm[/#if]">
        <div class="container">
            <a href="${baseURL}/" rel="home" title="CEIBA IPT" class="navbar-brand" >
                <img src="${baseURL}/images/logo-CEIBA.png" alt="CEIBA IPT" class="logo-ceiba"/>
            </a>
            <button class="navbar-toggler my-2" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <svg class="navbar-toggler-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 30 30"><path stroke="rgba(var(--navbar-link-color), 0.75)" stroke-linecap="round" stroke-miterlimit="10" stroke-width="2" d="M4 7h22M4 15h22M4 23h22"/></svg>
            </button>
            <div class="collapse navbar-collapse ps-2" id="navbarCollapse">
                <!-- Navbar -->
                <ul class="navbar-nav mx-auto mb-md-0">
                    <li class="nav-item nav-item-border-bottom">
                        <a class="nav-link custom-nav-link [#if currentMenu=='home']active[/#if]" href="${baseURL}/">[@s.text name="menu.home"/]</a>
                    </li>
                    [#if adminRights]
                        <li class="nav-item nav-item-border-bottom">
                            <a class="nav-link custom-nav-link [#if currentMenu=='admin']active[/#if]" href="${baseURL}/admin/">[@s.text name="menu.admin"/]</a>
                        </li>
                    [#else]
                        <li class="nav-item">
                            <a class="nav-link [#if currentMenu=='data']active[/#if]" href="https://sites.google.com/humboldt.org.co/i2dwiki/consulta?authuser=0" target="_blank">[@s.text name="menu.data"/]</a>
                        </li>
                    [/#if]
                    [#if managerRights]
                        <li class="nav-item">
                            <a class="nav-link [#if currentMenu=='manage']active[/#if]" href="${baseURL}/manage/">[@s.text name="menu.manage"/]</a>
                        </li>
                    [#else]
                        <li class="nav-item">
                            <a class="nav-link [#if currentMenu=='inventory']active[/#if]" href="http://goo.gl/is7UaG" target="_blank">[@s.text name="menu.inventory"/]</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link [#if currentMenu=='faq']active[/#if]" href="https://sites.google.com/humboldt.org.co/i2dwiki/preguntas-frecuentes/faq-ceiba?authuser=0" target="_blank">[@s.text name="menu.faq"/]</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link [#if currentMenu=='manual']active[/#if]" href="https://sites.google.com/humboldt.org.co/i2dwiki/ceiba-manual/ceiba-consulta" target="_blank">[@s.text name="menu.usermanual"/]</a>
                        </li>
                    [/#if]
                </ul>

                <div class="d-xl-flex align-content-between">

                      <!-- Languages -->
                    <div id="navbarNavDropdown">
                        [#include "/WEB-INF/pages/inc/languages.ftl"/]
                    </div>

                    <!-- Login, account -->
                    [#if (Session.curr_user)??]
                        <ul class="navbar-nav show-xl-bigger">
                            <li class="nav-item dropdown d-xl-flex align-content-xl-center">
                                <a class="navbar-button btn btn-sm menu-link m-xl-auto" id="accountDropdownLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    ${Session.curr_user.initials!"A"}
                                </a>
                                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-light text-light fs-smaller" aria-labelledby="accountDropdownLink">
                                    <li>
                                        <a class="dropdown-item menu-link" href="${baseURL}/account.do">
                                            ${Session.curr_user.name}<br>
                                            <small id="account-dropdown-email">${Session.curr_user.email}</small><br>
                                        </a>
                                    </li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li>
                                        <a class="dropdown-item menu-link" href="${baseURL}/account.do">
                                            <svg class="account-dropdown-icon" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="AccountCircleIcon">
                                                <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 4c1.93 0 3.5 1.57 3.5 3.5S13.93 13 12 13s-3.5-1.57-3.5-3.5S10.07 6 12 6zm0 14c-2.03 0-4.43-.82-6.14-2.88C7.55 15.8 9.68 15 12 15s4.45.8 6.14 2.12C16.43 19.18 14.03 20 12 20z"></path>
                                            </svg>
                                            [@s.text name="menu.account"/]
                                        </a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item menu-link" href="${baseURL}/logout.do">
                                            <svg class="account-dropdown-icon" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="LogoutIcon">
                                                <path d="m17 7-1.41 1.41L18.17 11H8v2h10.17l-2.58 2.58L17 17l5-5zM4 5h8V3H4c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h8v-2H4V5z"></path>
                                            </svg>
                                            [@s.text name="menu.logout"/]
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <div class="show-xl-smaller d-flex nav-item-border-top">
                            <a class="nav-link ps-0 show-xl-smaller" href="${baseURL}/logout.do">
                                [@s.text name="menu.logout"/]
                            </a>
                            <a href="${baseURL}/account.do" class="nav-link show-xl-smaller nav-link-account">
                                ${Session.curr_user.email}
                            </a>
                        </div>
                    [#else]
                        <form action="${baseURL}/login.do" method="post" class="d-xl-flex align-content-xl-center">
                            <button id="login-button" class="btn btn-sm m-xl-auto navbar-button text-capitalize show-xl-bigger" type="submit" name="login-submit">
                                [@s.text name="portal.login"/]
                            </button>
                            <div class="navbar-nav show-xl-smaller nav-item-border-top">
                                <a href="javascript:{}" class="nav-link text-capitalize" onclick="this.closest('form').submit();return false;">
                                    [@s.text name="portal.login"/]
                                </a>
                            </div>
                        </form>
                    [/#if]
                </div>
            </div>
        </div>
    </nav>

    [#if currentPage?? && currentPage == "overview"]
    <nav id="resource-nav" class="resource-nav bg-body border-bottom" style="display: none;">
        <div class="container mx-auto">
            <div class="d-flex justify-content-between">
                <div class="d-flex py-2 fs-smaller">
                    <div class="py-2 me-3">
                        <span class="fs-smaller-2 text-nowrap me-1 my-1 dt-content-link dt-content-pill type-${resourceTypeLowerCase}">[@s.text name="portal.resource.type.${resourceTypeLowerCase}"/]</span>

                        [#if resource.status??]
                        <span class="text-nowrap text-discreet fs-smaller-2 status-pill status-${resource.status?lower_case}">
                            [#if resource.status == "PUBLIC" || resource.status == "PRIVATE"]
                                <i class="bi bi-circle fs-smaller-2"></i>
                            [#else]
                                <i class="bi bi-circle-fill fs-smaller-2"></i>
                            [/#if]
                            <span>[@s.text name="manage.home.visible.${resource.status?lower_case}"/]</span>
                        </span>
                        [/#if]
                    </div>

                    <div>
                        <span class="fw-500">${resource.title!resource.shortname}</span><br>
                        <span class="fs-smaller-2 text-discreet">[@s.text name="basic.createdByOn"][@s.param]${(resource.creator.name)!}[/@s.param][@s.param]${resource.created?date?string("MMM d, yyyy")}[/@s.param][/@s.text]</span>
                    </div>
                </div>
                <div class="d-flex gap-1 my-auto">
                    <button class="btn btn-sm btn-outline-gbif-primary proxy-button-view-resource" name="view">[@s.text name="button.view"/]</button>

                    [#if resource.status == "DELETED"]
                        [#if disableRegistrationRights == "false"]
                            <button class="btn btn-sm btn-outline-gbif-primary proxy-button-undelete-resource" name="undelete">[@s.text name="button.undelete"/]</button>
                        [#else]
                            <button class="btn btn-sm btn-outline-gbif-primary" name="undelete" disabled>[@s.text name="button.undelete"/]</button>
                        [/#if]
                    [#else]
                        [#if disableRegistrationRights == "false"]
                            [#if resource.key?? && resource.status == "REGISTERED"]
                                <button class="btn btn-sm btn-outline-gbif-danger button-show-delete-resource-modal" name="delete">[@s.text name="button.delete"/]</button>
                            [#else]
                                <button class="btn btn-sm btn-outline-gbif-danger proxy-button-delete-from-ipt" name="delete">[@s.text name="button.delete"/]</button>
                            [/#if]
                        [#else]
                            <button class="btn btn-sm btn-outline-gbif-danger" name="delete" disabled>[@s.text name="button.delete"/]</button>
                        [/#if]
                    [/#if]

                    <button class="btn btn-sm btn-outline-secondary proxy-button-cancel" name="cancel">[@s.text name="button.cancel"/]</button>
                </div>
            </div>
        </div>
    </nav>
    [/#if]
</header>

<div id="dialog-confirm" class="modal fade" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true"></div>
