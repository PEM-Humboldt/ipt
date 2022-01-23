<#escape x as x?html>
    <#include "/WEB-INF/pages/inc/header.ftl">
    <title><#if "${newUser!}"=="no"><@s.text name="admin.user.title.edit"/><#else><@s.text name="admin.user.title.new"/></#if></title>
    <script src="${baseURL}/js/jconfirmation.jquery.js"></script>
    <script>
        $(document).ready(function(){
            $('.confirm').jConfirmAction({titleQuestion : "<@s.text name="basic.confirm"/>", yesAnswer : "<@s.text name="basic.yes"/>", cancelAnswer : "<@s.text name="basic.no"/>", buttonType: "danger"});
        });
    </script>
    <#assign currentMenu = "admin"/>
    <#include "/WEB-INF/pages/inc/menu.ftl">
    <#include "/WEB-INF/pages/macros/forms.ftl">


    <main class="container">
        <div class="my-3 p-3 bg-body rounded shadow-sm">
            <#include "/WEB-INF/pages/inc/action_alerts.ftl">

            <h5 class="border-bottom pb-2 mb-2 mx-md-4 mx-2 pt-2 text-gbif-header fw-400 text-center">
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
