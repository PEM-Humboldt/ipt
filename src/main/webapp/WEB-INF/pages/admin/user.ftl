    <#if "${newUser!}"=="no">
        <#assign newUserPage=false/>
        <#assign editUserPage=true/>
    <#else>
        <#assign newUserPage=true/>
        <#assign editUserPage=false/>
    </#if>

    <#include "/WEB-INF/pages/inc/header.ftl">
    <title><#if editUserPage><@s.text name="admin.user.title.edit"/><#else><@s.text name="admin.user.title.new"/></#if></title>
    <script src="${baseURL}/js/jconfirmation.jquery.js"></script>
    <link rel="stylesheet" href="${baseURL}/styles/select2/select2-4.0.13.min.css">
    <link rel="stylesheet" href="${baseURL}/styles/select2/select2-bootstrap4.min.css">
    <link rel="stylesheet" href="${baseURL}/styles/smaller-inputs.css">
    <script src="${baseURL}/js/select2/select2-4.0.13.full.min.js"></script>

    <script>
        $(document).ready(function(){
            $('.userConfirmDeletion').jConfirmAction({
                titleQuestion: "<@s.text name="basic.confirm"/>",
                question: "<@s.text name="admin.user.delete.confirmation.message"/>",
                yesAnswer: "<@s.text name="basic.yes"/>",
                cancelAnswer: "<@s.text name="basic.no"/>",
                buttonType: "danger"
            });

            $('.confirmPasswordReset').jConfirmAction({
                titleQuestion: "<@s.text name="basic.confirm"/>",
                question: "<@s.text name="admin.user.resetPassword.confirmation.message"/>",
                yesAnswer: "<@s.text name="basic.yes"/>",
                cancelAnswer: "<@s.text name="basic.no"/>",
                buttonType: "danger"
            });

            $("#user\\.role").select2({
                placeholder: '',
                language: {
                    noResults: function () {
                        return '${selectNoResultsFound}';
                    }
                },
                width:"100%",
                minimumResultsForSearch: 15,
                theme: 'bootstrap4'});

            $("#save").on("click", displayProcessing);
        });
    </script>
    <#assign currentMenu = "admin"/>
    <#include "/WEB-INF/pages/inc/menu.ftl">
    <#include "/WEB-INF/pages/macros/forms.ftl">

    <div class="container px-0">
        <#include "/WEB-INF/pages/inc/action_alerts.ftl">
    </div>

    <div class="container-fluid bg-body border-bottom">
        <div class="container bg-body border rounded-2 mb-4">
            <div class="container my-3 p-3">
                <div class="text-center fs-smaller">
                    <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center mb-0">
                            <li class="breadcrumb-item"><a href="${baseURL}/admin/"><@s.text name="breadcrumb.admin"/></a></li>
                            <li class="breadcrumb-item"><a href="${baseURL}/admin/users.do"><@s.text name="breadcrumb.admin.users"/></a></li>
                            <li class="breadcrumb-item active" aria-current="page"><@s.text name="breadcrumb.admin.users.user"/></li>
                        </ol>
                    </nav>
                </div>

                <div class="text-center">
                    <h1 class="pb-2 mb-0 pt-2 text-gbif-header fs-2 fw-normal">
                        <#if editUserPage>
                            ${user.firstname!} ${user.lastname!}
                        <#else>
                            <@s.text name="admin.user.title.new"/>
                        </#if>
                    </h1>

                    <#if editUserPage>
                        <div class="text-smaller">
                            <a href="mailto:${user.email!}">${user.email!}</a>
                        </div>
                    </#if>

                    <div class="mt-2">
                        <@s.submit tabindex=7 cssClass="button btn btn-sm btn-outline-gbif-primary top-button" form="newuser" name="save" key="button.save"/>
                        <#if editUserPage>
                            <div class="btn-group btn-group-sm" role="group">
                                <button id="btnGroup" tabindex=8 type="button" class="btn btn-sm btn-outline-gbif-primary dropdown-toggle align-self-start top-button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <@s.text name="button.options"/>
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="btnGroup" style="">
                                    <li>
                                        <@s.submit cssClass="confirmPasswordReset button btn btn-sm btn-outline-gbif-danger w-100 dropdown-button" form="newuser" name="resetPassword" key="button.resetPassword" />
                                    </li>
                                    <li>
                                        <@s.submit cssClass="userConfirmDeletion btn btn-sm btn-outline-gbif-danger w-100 dropdown-button" form="newuser" name="delete" key="button.delete"/>
                                    </li>
                                </ul>
                            </div>
                        </#if>
                        <@s.submit tabindex=9 cssClass="button btn btn-sm btn-outline-secondary top-button" form="newuser" name="cancel" key="button.cancel"/>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <main class="container main-content-container">
        <div class="my-3 p-3">
            <p>
                <@s.text name="admin.user.intro"/>
            </p>
            <p>
                <@s.text name="admin.user.intro2"/>
            </p>

            <form id="newuser" class="needs-validation" action="user.do" method="post">
                <div class="row g-3 mt-2">
                    <#if editUserPage>
                        <@s.hidden name="id" value="${(user.email)!}" required="true"/>
                    </#if>

                    <div class="col-md-6">
                        <@input tabindex=1 name="user.firstname" />
                    </div>

                    <div class="col-md-6">
                        <@input tabindex=2 name="user.lastname" />
                    </div>

                    <div class="col-md-6">
                        <@input name="user.email" disabled=id?has_content/>
                    </div>

                    <div class="col-md-6">
                        <@select name="user.role" value=user.role javaGetter=false options={"User":"user.roles.user", "Manager":"user.roles.manager", "Admin":"user.roles.admin"}/>
                    </div>
                    <#if "${newUser!}"=="yes">
                        <@input name="user.password" type="password" />
                        <@input name="password2" i18nkey="user.password2" type="password"/>  
                    </#if>
                </div>
                
                <br />
                <p class="mx-md-4 mx-2 mb-0">
                    <@s.text name="admin.user.restrictedResources.help"/>
                </p>
                <br />
                <div class="row mx-auto" style="width: 400px;">
                    <select multiple="multiple" id="user.grantedAccessTo" name="user.grantedAccessTo">
                        <#if "${newUser!}"=="yes" || ("${newUser!}"=="no" && !user.email?ends_with("@humboldt.org.co"))>
                            <#if restrictedResourcesForAllButIAvHUsers?has_content || restrictedResourcesForIAvHUsers?has_content >
                                <#list (restrictedResourcesForAllButIAvHUsers + restrictedResourcesForIAvHUsers)?sort_by("shortname") as rR>		
                                    <option value='${rR.shortname}'>${rR.shortname}</option> 
                                </#list>
                            </#if>
                        </#if>
                        <#if "${newUser!}"=="no" && user.email?ends_with("@humboldt.org.co") >
                            <#if restrictedResourcesForIAvHUsers?has_content >
                                <#list restrictedResourcesForIAvHUsers?sort_by("shortname") as rR>		
                                    <option value='${rR.shortname}'>${rR.shortname}</option> 
                                </#list>
                            </#if>			
                        </#if>
                    </select>
                </div>
                    <script type="text/javascript" charset="utf-8">
                        $('#user\\.grantedAccessTo').multiSelect({
                            selectableHeader: "<div class='custom-header'><@s.text name="admin.user.restrictedResources" /></div>",
                            selectionHeader: "<div class='custom-header'><@s.text name="admin.user.grantAccessTo" /></div>"
                        });
                        $('#user\\.grantedAccessTo').multiSelect('select', [
                            <#if user.grantedAccessTo?has_content >
                                ${ "'"+user.grantedAccessTo?split(", ")?join("', '")+"'" }
                            <#else>
                                ${ "''" }
                            </#if>
                        ]);  	
                            
                    </script>
                    <div style="margin:auto; padding-top:10px; text-align: center;">
                        <button type="button" class="button btn btn-outline-gbif-primary mt-1" onClick="$('#user\\.grantedAccessTo').multiSelect('select_all');"><@s.text name="admin.user.grantAccessToAll" /></button>
                        <button type="button" class="button btn btn-outline-gbif-danger mt-1" onClick="$('#user\\.grantedAccessTo').multiSelect('deselect_all');"><@s.text name="admin.user.removeAccessToAll" /></button>
                    </div>

                    <div class="col-md-6">
                        <@select name="user.role" tabindex=4 value=(user.role)! javaGetter=false options={"User":"user.roles.user", "Manager":"user.roles.manager", "Publisher":"user.roles.publisher", "Admin":"user.roles.admin"}/>
                    </div>

                    <#if newUserPage>
                        <div class="col-md-6">
                            <@input name="user.password" type="password" tabindex=5 />
                        </div>
                        <div class="col-md-6">
                            <@input name="password2" i18nkey="user.password2" type="password" tabindex=6/>
                        </div>
                    </#if>
                </div>
            </form>
        </div>
    </main>

    <#include "/WEB-INF/pages/inc/footer.ftl">
