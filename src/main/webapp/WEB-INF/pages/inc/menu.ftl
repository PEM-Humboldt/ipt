[#ftl output_format="HTML"]
</head>

<body class="bg-light d-flex flex-column h-100">

<header>
    <nav class="navbar navbar-expand-xl navbar-dark bg-gbif-main-navbar fixed-top py-1 [#if !auxTopNavbar]shadow-sm[/#if]">
        <div class="container">
            <a href="http://www.humboldt.org.co" rel="home" title="IAvH"><img src="${baseURL}/images/logo-IAvH.png" class="logo-iavh"></a>
            <a href="${baseURL}/" rel="home" title="CEIBA IPT" class="navbar-brand" >
                <img src="${baseURL}/images/logo-CEIBA.png" alt="CEIBA IPT" class="logo-ceiba"/>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <!-- Navbar -->
                <ul class="navbar-nav me-auto mb-md-0">
                    <li class="nav-item">
                        <a class="nav-link [#if currentMenu=='home']active[/#if]" href="${baseURL}/">[@s.text name="menu.home"/]</a>
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
                            <a class="nav-link [#if currentMenu=='inventory']active[/#if]" href="http://goo.gl/is7UaG" target="_blank">[@s.text name="menu.inventory"/]</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link [#if currentMenu=='data']active[/#if]" href="https://sites.google.com/humboldt.org.co/i2dwiki/consulta?authuser=0" target="_blank">[@s.text name="menu.data"/]</a>
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
                    
                    <!-- Login, account -->
                    [#if (Session.curr_user)??]
                        <ul class="navbar-nav">
                            <li class="nav-item dropdown d-xl-flex align-content-xl-center">
                                <a class="btn btn-sm menu-link m-xl-auto navbar-button" id="accountDropdownLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
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
                            <button class="btn btn-sm m-xl-auto navbar-button text-capitalize" type="submit" name="login-submit">
                                [@s.text name="portal.login"/]
                            </button>
                        </form>
                    [/#if]
                </div>
            </div>
        </div>
    </nav>
</header>

<div id="dialog-confirm" class="modal fade" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true"></div>
