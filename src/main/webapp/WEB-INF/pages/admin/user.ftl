<#escape x as x?html>
    <#include "/WEB-INF/pages/inc/header.ftl">
    <title><#if "${newUser!}"=="no"><@s.text name="admin.user.title.edit"/><#else><@s.text name="admin.user.title.new"/></#if></title>
    <script type="text/javascript" src="${baseURL}/js/jconfirmation.jquery.js"></script>
    <script type="text/javascript">

        $(document).ready(function(){
            initHelp();
            $('.confirm').jConfirmAction({question : "<@s.text name="basic.confirm"/>", yesAnswer : "<@s.text name="basic.yes"/>", cancelAnswer : "<@s.text name="basic.no"/>"});
        });
    </script>
    <#assign currentMenu = "admin"/>
    <#include "/WEB-INF/pages/inc/menu.ftl">
    <#include "/WEB-INF/pages/macros/forms.ftl">


    <main class="container">
        <div class="my-3 p-3 bg-body rounded shadow-sm">
            <#include "/WEB-INF/pages/inc/action_alerts.ftl">

            <h5 class="border-bottom pb-2 mb-2 mx-md-4 mx-2 pt-2 text-gbif-header text-center">
                <#if "${newUser!}"=="no"><@s.text name="admin.user.title.edit"/><#else><@s.text name="admin.user.title.new"/></#if>
            </h5>

            <p class="mx-md-4 mx-2 mb-0">
                <@s.text name="admin.user.intro"/>
            </p>
            <p class="mx-md-4 mx-2 mb-0">
                <@s.text name="admin.user.intro2"/>
            </p>

            <form id="newuser" class="needs-validation" action="user.do" method="post">
                <div class="row g-3 mx-md-3 mx-1 mt-2">
                    <@s.hidden name="id" value="${user.email!}" required="true"/>

                    <div class="col-md-6">
                        <@input name="user.firstname" />
                    </div>

                    <div class="col-md-6">
                        <@input name="user.lastname" />
                    </div>

                    <div class="col-md-6">
                        <@input name="user.email" disabled=id?has_content/>
                    </div>

                    <div class="col-md-6">
                        <@select name="user.role" value=user.role javaGetter=false options={"User":"user.roles.user", "Manager":"user.roles.manager", "Publisher":"user.roles.publisher", "Admin":"user.roles.admin"}/>
                    </div>

                    <#if "${newUser!}"!="no">
                        <div class="col-md-6">
                            <@input name="user.password" type="password" />
                        </div>
                        <div class="col-md-6">
                            <@input name="password2" i18nkey="user.password2" type="password"/>
                        </div>
                    </#if>
                    <#if "${newUser!}"=="no">
                        </br></br>
                        <select multiple="multiple" id="user.grantAccessTo" name="user.grantAccessTo">
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

                    <script type="text/javascript" charset="utf-8">
                        $('#user\\.grantedAccessTo').multiSelect({
                            selectableHeader: "<div class='custom-header'><@s.text name="admin.user.restrictedResources" /></div>",
                            selectionHeader: "<div class='custom-header'><@s.text name="admin.user.grantAccessTo" /></div>"
                        });
                        $('#user\\.grantedAccessTo').multiSelect('select', [
                            <#if user.grantedAccessTo?has_content >
                                ${ "'"+user.grantedAccessTo?split(", ")?join("', '")+"'" }
                            </#if>
                            ]);

                            <#if "${newUser!}"=="yes">
                                $("input#user\\.email").on( "focusout", function(){
                                if ($("input#user\\.email").val().endsWith("@humboldt.org.co")){
                                    // Remove those restricted resources that are actually not restricted for @humboldt users
                                    <#if restrictedResourcesForAllButIAvHUsers?has_content>
                                        <#list restrictedResourcesForAllButIAvHUsers as rR>
                                                $('#user\\.grantedAccessTo').find("option[value='${rR.shortname}']").remove();
                                                $('#ms-user\\.grantedAccessTo').find("ul.ms-list li").filter(function() {
                                                    return $(this).text() == "${rR.shortname}";
                                                }).remove();
                                        </#list>
                                    </#if>
                                } else { // The user to be created is not @humboldt.org.co, so refresh restricted resources lists
                                    <#if restrictedResourcesForAllButIAvHUsers?has_content || restrictedResourcesForIAvHUsers?has_content >
                                        <#list (restrictedResourcesForAllButIAvHUsers + restrictedResourcesForIAvHUsers) as rR>
                                                $('#user\\.grantedAccessTo').find("option[value='${rR.shortname}']").remove();
                                                $('#ms-user\\.grantedAccessTo').find("ul.ms-list li").filter(function() {
                                                    return $(this).text() == "${rR.shortname}";
                                                }).remove();
                                        </#list>
                                    </#if>
                                    <#if restrictedResourcesForAllButIAvHUsers?has_content || restrictedResourcesForIAvHUsers?has_content >
                                        <#list (restrictedResourcesForAllButIAvHUsers + restrictedResourcesForIAvHUsers)?sort_by("shortname") as rR>
                                            $('#user\\.grantedAccessTo').multiSelect('addOption',{value:'${rR.shortname}',text:'${rR.shortname}'});
                                        </#list>
                                    </#if>
                                }
                                console.log("LISTO!!!");
                                });
                            </#if>
                    </script>
                    <div style="margin:auto; padding-top:10px; text-align: center;">
                        <button type="button" cssClass="button" onClick="$('#user\\.grantedAccessTo').multiSelect('select_all');"><@s.text name="admin.user.grantAccessToAll" /></button>
                        <button type="button" cssClass="button" onClick="$('#user\\.grantedAccessTo').multiSelect('deselect_all');"><@s.text name="admin.user.removeAccessToAll" /></button>
                    </div>
                    </br></br>

                </div>

                <div class="mx-md-4 mx-2 mt-3">
                    <@s.submit cssClass="button btn btn-outline-gbif-primary mt-1" name="save" key="button.save"/>
                    <#if "${newUser!}"=="no">
                        <@s.submit cssClass="confirm btn btn-outline-gbif-danger mt-1" name="delete" key="button.delete"/>
                        <@s.submit cssClass="button btn btn-outline-gbif-danger mt-1" name="resetPassword" key="button.resetPassword" />
                    </#if>
                    <@s.submit cssClass="button btn btn-outline-secondary mt-1" name="cancel" key="button.cancel"/>
                </div>
            </form>

        </div>
    </main>

    <#include "/WEB-INF/pages/inc/footer.ftl">
</#escape>
