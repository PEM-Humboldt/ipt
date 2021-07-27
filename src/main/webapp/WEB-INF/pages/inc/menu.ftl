[#ftl output_format="HTML"]
</head>

[#if auxTopNavbar]
<style>
    /* Increase padding when the second nav is enabled */
    body {
        padding-top: 6.5rem;
    }

    .second-nav {
        position: fixed;
        top: 50px;
        right: 0;
        left: 0;
        z-index: 999 !important; /* less than top nav dropdowns */
    }
</style>
[/#if]

<body class="bg-light d-flex flex-column h-100">

[#if auxTopNavbarPage == 'mapping']
    <form id="mappingForm" class="needs-validation" action="mapping.do" method="post">
[#elseif auxTopNavbarPage == 'metadata']
    <form class="needs-validation" action="metadata-${section}.do" method="post" novalidate>
[/#if]

<header>
    <nav class="navbar navbar-expand-xl navbar-dark bg-gbif-green-gradient fixed-top py-1 [#if !auxTopNavbar]shadow-sm[/#if]">
        <div class="container">
            <div class="div-iavh">
                <a href="http://www.humboldt.org.co" rel="home" title="IAvH"><img src="${baseURL}/images/logo-IAvH.png" class="logo-iavh"></a>
            </div>
            <a href="${baseURL}/" rel="home" title="CEIBA IPT" class="navbar-brand" >
                <img src="${baseURL}/images/logo.png" alt="CEIBA IPT" class="gbif-logo"/>
                [#if !cfg.devMode() && cfg.getRegistryType()?has_content && cfg.getRegistryType()=='PRODUCTION']
                [#else]
                    <img class="testmode" src="${baseURL}/images/testmode.png" style="width: 100px;"/>
                [/#if]
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
            [#if (Session.curr_user)??]
                <!-- Navbar -->
                <ul class="navbar-nav me-auto mb-md-0">
                    <li class="nav-item">
                        <a class="nav-link [#if currentMenu=='home']active[/#if]" href="${baseURL}/"><img src="${baseURL}/images/icons/home.png">[@s.text name="menu.home"/]</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link [#if currentMenu=='data']active[/#if]" href="http://goo.gl/8VC1cg" target="_blank"><img src="${baseURL}/images/icons/data.png">[@s.text name="menu.data"/]</a>
                    </li>
                    [#if managerRights]
                        <li class="nav-item">
                            <a class="nav-link [#if currentMenu=='manage']active[/#if]" href="${baseURL}/manage/">[@s.text name="menu.manage"/]</a>
                        </li>
                    [/#if]
                    [#if adminRights]
                        <li class="nav-item">
                            <a class="nav-link [#if currentMenu=='admin']active[/#if]" href="${baseURL}/admin/">[@s.text name="menu.admin"/]</a>
                        </li>
                    [#else]
                        <li class="nav-item">
                            <a class="nav-link [#if currentMenu=='faq']active[/#if]" href="${baseURL}/faq.do" target="_blank"><img src="${baseURL}/images/icons/about.png">[@s.text name="menu.faq"/]</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link [#if currentMenu=='manual']active[/#if]" href="https://sites.google.com/humboldt.org.co/i2dwiki/ceiba-manual/ceiba-consulta" target="_blank"><img src="${baseURL}/images/icons/usermanu.png">[@s.text name="menu.usermanual"/]</a>
                        </li>
                    [/#if]
                 </ul>
            [#else]
                 <ul class="navbar-nav me-auto mb-md-0">
                    <li class="nav-item">
                        <a class="nav-link [#if currentMenu=='home']active[/#if]" href="${baseURL}/"><img src="${baseURL}/images/icons/home.png">[@s.text name="menu.home"/]</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link [#if currentMenu=='inventory']active[/#if]" href="http://goo.gl/is7UaG" target="_blank"><img src="${baseURL}/images/icons/inventory.png">[@s.text name="menu.inventory"/]</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link [#if currentMenu=='data']active[/#if]" href="http://goo.gl/8VC1cg" target="_blank"><img src="${baseURL}/images/icons/data.png">[@s.text name="menu.data"/]</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link [#if currentMenu=='faq']active[/#if]" href="${baseURL}/faq.do"><img src="${baseURL}/images/icons/about.png">[@s.text name="menu.faq"/]</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link [#if currentMenu=='manual']active[/#if]" href="https://sites.google.com/humboldt.org.co/i2dwiki/ceiba-manual/ceiba-consulta" target="_blank"><img src="${baseURL}/images/icons/usermanu.png">[@s.text name="menu.usermanual"/]</a>
                    </li>
                </ul>
             [/#if]

                <div class="d-xl-flex align-content-between">
                    <!-- Health -->
                    <div class="navbar-nav">
                      <a href="${baseURL}/health.do" class="nav-link" title="[@s.text name="portal.health.title"/]">
                          <img src="${baseURL}/images/gbif-heartbeat.svg" alt="Status">
                      </a>
                    </div>

                    <!-- Login, account -->
                    [#if (Session.curr_user)??]
                        <ul class="navbar-nav">
                            <li class="nav-item dropdown d-xl-flex align-content-xl-center">
                                <a class="btn btn-sm btn-light menu-link m-xl-auto navbar-button" id="accountDropdownLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    ${Session.curr_user.email}
                                </a>
                                <ul class="dropdown-menu dropdown-menu-light text-light" aria-labelledby="accountDropdownLink">
                                    <li>
                                        <a class="dropdown-item menu-link" href="${baseURL}/account.do">
                                            [@s.text name="menu.account"/]
                                        </a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item menu-link" href="${baseURL}/logout.do">
                                            [@s.text name="menu.logout"/]
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    [#else]
                        <form action="${baseURL}/login.do" method="post" class="d-xl-flex align-content-xl-center px-1">
                            <button class="btn btn-sm btn-light m-xl-auto navbar-button" type="submit" name="login-submit">
                                [@s.text name="portal.login"/]
                            </button>
                        </form>
                    [/#if]
                </div>
            </div>
        </div>
    </nav>

    <div style="margin-top: 50px;">
    </div>


    [#if auxTopNavbar]
        <nav class="navbar navbar-expand navbar-light second-nav bg-body shadow-sm py-1">
            <div class="container">
                [#if auxTopNavbarPage=='mapping']
                    <ul class="navbar-nav me-auto">
                        [#assign groups = fieldsByGroup?keys/]

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="fieldIndexDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                [@s.text name='manage.mapping.index'/]
                            </a>
                            <ul class="dropdown-menu dropdown-menu-light text-light" aria-labelledby="fieldIndexDropdown">
                                [#if (groups?size>0)]
                                    [#list groups as g]
                                        <li [#if redundants?seq_contains(g)] class="redundant" [/#if] ><a class="sidebar-anchor dropdown-item menu-link" href="#group_${g}">${g}</a></li>
                                    [/#list]
                                [/#if]

                                [#if (nonMapped?size>0)]
                                    <li><a class="sidebar-anchor dropdown-item menu-link" href="#nonmapped">[@s.text name='manage.mapping.no.mapped.title'/]</a></li>
                                [/#if]

                                [#if (redundants?size>0)]
                                    <li><a class="sidebar-anchor dropdown-item menu-link" href="#redundant">[@s.text name='manage.mapping.redundant'/]</a></li>
                                [/#if]
                            </ul>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="filtersDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                [@s.text name='manage.mapping.filters'/]
                            </a>
                            <ul class="dropdown-menu dropdown-menu-light text-light" aria-labelledby="filtersDropdown">
                                <li><a id="toggleFields" class="dropdown-item menu-link" href="#">[@s.text name='manage.mapping.hideEmpty'/]</a></li>

                                [#if (redundants?size>0)]
                                    <li><a id="toggleGroups" class="dropdown-item menu-link" href="#">[@s.text name='manage.mapping.hideGroups'/]</a></li>
                                [/#if]
                            </ul>
                        </li>

                    </ul>

                    <div class="d-flex align-content-between">
                        <ul class="navbar-nav">
                            <li class="nav-item py-2 px-1">
                                [@s.submit cssClass="button btn btn-sm btn-outline-gbif-primary" name="save" key="button.save"/]
                            </li>
                            <li class="nav-item py-2 px-1">
                                [@s.submit cssClass="confirm btn btn-sm btn-outline-gbif-danger" name="delete" key="button.delete"/]
                            </li>
                            <li class="nav-item py-2 px-1">
                                [@s.submit cssClass="button btn btn-sm btn-outline-secondary" name="cancel" key="button.back"/]
                            </li>
                        </ul>
                    </div>
                [#elseif auxTopNavbarPage=='metadata']
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="sectionDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                [@s.text name='manage.metadata.section'/]
                            </a>
                            <ul class="dropdown-menu dropdown-menu-light text-light" aria-labelledby="sectionDropdown">
                                [#list ["basic", "geocoverage", "taxcoverage","tempcoverage", "keywords", "parties", "project", "methods", "citations", "collections", "physical", "additional"] as it]
                                    <li>
                                        <a class="sidebar-anchor dropdown-item menu-link" href="metadata-${it}.do?r=${resource.shortname!r!}">
                                            [@s.text name="submenu.${it}"/]
                                        </a>
                                    </li>
                                [/#list]
                            </ul>
                        </li>
                    </ul>

                    <div class="d-flex align-content-between">
                        <ul class="navbar-nav">
                            <li class="nav-item py-2 px-1">
                                [@s.submit cssClass="button btn btn-sm btn-outline-gbif-primary" name="save" key="button.save" /]
                            </li>
                            <li class="nav-item py-2 px-1">
                                [@s.submit cssClass="button btn btn-sm btn-outline-secondary" name="cancel" key="button.cancel" /]
                            </li>
                        </ul>
                    </div>
                [/#if]
            </div>
        </nav>
    [/#if]
</header>

<div id="dialog-confirm" class="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true" style="display: none"></div>
