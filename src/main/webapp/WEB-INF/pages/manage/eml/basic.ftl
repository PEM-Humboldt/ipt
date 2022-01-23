<#escape x as x?html>
    <#include "/WEB-INF/pages/inc/header.ftl">
    <#include "/WEB-INF/pages/macros/metadata.ftl"/>
    <title><@s.text name='manage.metadata.basic.title'/></title>
    <#include "/WEB-INF/pages/macros/metadata_agent.ftl"/>
    <script src="${baseURL}/js/jconfirmation.jquery.js"></script>
    <script>
        $(document).ready(function(){
            // Ensure core type cannot be changed once set (e.g., after core mapping is done)
            var resourceType="${resource.coreType!}";
            if(resourceType != "") {
                if(resourceType.toLowerCase() == "occurrence") {
                    $("#resource\\.coreType").val('occurrence');
                } else if (resourceType.toLowerCase() == "checklist") {
                    $("#resource\\.coreType").val('checklist');
                } else if (resourceType.toLowerCase() == "samplingevent") {
                    $("#resource\\.coreType").val('samplingevent');
                } else if (resourceType.toLowerCase() == "other") {
                    $("#resource\\.coreType").val('other');
                }
            }

            // core type selection is only disabled, if resource has core
            var hasCore="${resourceHasCore!}";
            if (hasCore == "true") {
                $("#resource\\.coreType").attr('disabled','disabled');
            }

            // publishing organisation selection is only disabled, if resource has been registered with GBIF or assigned a DOI (no matter if it's reserved or public).
            var isRegisteredWithGBIF="${resource.key!}";
            var isAssignedDOI="${resource.doi!}";
            if (isRegisteredWithGBIF != "") {
                $("#id").attr('disabled','disabled');
            } else if (isAssignedDOI != "") {
                $("#id").attr('disabled','disabled');
            }

            function getList(list){
                var arr=  list.split(",");
                var newlistaOccurrence={};
                for(index in arr ){
                    var val=arr[index].replace(/{|}/g,'');
                    var arr2=val.split('=');
                    var str=arr2[0].replace(/^\s*|\s*$/g,"");
                    newlistaOccurrence[str]=arr2[1];
                }
                return newlistaOccurrence;
            }
            // Populate subtype list depending on core type selected
            $("#resource\\.coreType").change(function(){
                var optionType=$("#resource\\.coreType").val();
                $("#resource\\.subtype").attr('selectedIndex', '0');
                switch(optionType)
                {
                    case 'occurrence':
                        $('#resource\\.subtype >option').remove();
                        var list=getList("${occurrenceSubtypesMap}");
                        $.each(list, function(key, value) {
                            $('#resource\\.subtype').append('<option value="'+key+'">'+value+'</option>');
                        });
                        break;
                    case 'checklist':
                        $('#resource\\.subtype >option').remove();
                        var list=getList("${checklistSubtypesMap}");
                        $.each(list, function(key, value) {
                            $('#resource\\.subtype').append('<option value="'+key+'">'+value+'</option>');
                        });
                        break;
                    case 'samplingevent':
                        $('#resource\\.subtype >option').remove();
                        $('#resource\\.subtype').append('<option value="">No subtype</option>');
                        break;
                    case 'other':
                        $('#resource\\.subtype >option').remove();
                        $('#resource\\.subtype').append('<option value="">No subtype</option>');
                        break;
                    default:
                        $('#resource\\.subtype >option').remove();
                        $('#resource\\.subtype').append('<option value=""></option>');
                        break;
                }
            });

            // Here down: related to intellectual rights
            function exists(value) {
                return (typeof value != 'undefined' && value);
            };

            if (exists("${eml.intellectualRights!}")) {
                $("#intellectualRightsDiv").show();
            } else {
                $("#intellectualRights").val('');
                $("#intellectualRightsDiv").hide();
            }

            $("#eml\\.intellectualRights\\.license").change(function() {
                $('.confirm').unbind('click');

                var nameRights=$("#eml\\.intellectualRights\\.license").val();
                $("#eml\\.intellectualRights\\.license").val(nameRights);

                if(nameRights) {

                    var licenseText=$("input:text#" + nameRights).val();

                    if (licenseText) {
                        $("#intellectualRightsDiv").html(licenseText);
                        $("#intellectualRightsDiv").show();
                        $("#intellectualRights").val(licenseText);
                        $("#eml\\.intellectualRights").val(licenseText);

                        $("#disclaimerRigths").css('display', 'none');
                    }

                } else {
                    $("#intellectualRightsDiv").html('');
                    $("#intellectualRightsDiv").hide();

                    $("#intellectualRights").val('');
                    $("#disclaimerRigths").css('display', '');
                    $("#eml\\.intellectualRights").val('');
                }
            });// end intellectual rights

            $('#metadata-section').change(function () {
                var metadataSection = $('#metadata-section').find(':selected').val()
                $(location).attr('href', 'metadata-' + metadataSection + '.do?r=${resource.shortname!r!}');
            });
        });

    </script>
    <#assign currentMenu="manage"/>
    <#assign currentMetadataPage = "basic"/>
    <#include "/WEB-INF/pages/inc/menu.ftl">
    <#include "/WEB-INF/pages/macros/forms.ftl"/>

<form class="needs-validation" action="metadata-${section}.do" method="post" novalidate>
    <div class="container-fluid bg-body border-bottom">
        <div class="container pt-2">
            <#include "/WEB-INF/pages/inc/action_alerts.ftl">
        </div>

        <div class="container p-3">

            <div class="text-center">
                <h5 class="pt-2 text-gbif-header fs-4 fw-400 text-center">
                    <@s.text name='manage.metadata.basic.title'/>
                </h5>
            </div>

            <div class="text-center fs-smaller">
                <a href="resource.do?r=${resource.shortname}" title="${resource.title!resource.shortname}">${resource.title!resource.shortname}</a>
            </div>
        </div>
    </div>

    <#include "metadata_section_select.ftl"/>

    <div class="container-fluid bg-body">
        <div class="container bd-layout">

            <main class="bd-main bd-main-right">
                <div class="bd-toc mt-4 mb-5 ps-3 mb-lg-5 text-muted">
                    <#include "eml_sidebar.ftl"/>
                </div>

                <div class="bd-content ps-lg-4">

                    <div class="my-md-3 p-3">

                        <p><@s.text name="manage.metadata.basic.required.message" /></p>

                        <div class="row g-3">
                            <div class="col-12">
                                <@input name="eml.title" requiredField=true help="i18n"/>
                            </div>

                            <div class="col-lg-4">
                                <@select name="eml.metadataLanguage" help="i18n" options=languages value="${metadataLanguageIso3!'eng'}" requiredField=true />
                            </div>

                            <div class="col-lg-4">
                                <@select name="resource.coreType" i18nkey="resource.coreType" help="i18n" options=types value="${resource.coreType!''}" requiredField=true />
                            </div>

                            <div class="col-lg-4">
                                <#if resource.organisation??>
                                    <@select name="id" i18nkey="eml.publishingOrganisation" help="i18n" options=organisations value="${resource.organisation.key!''}" requiredField=true />
                                <#else>
                                    <@select name="id" i18nkey="eml.publishingOrganisation" help="i18n" options=organisations requiredField=true />
                                </#if>
                            </div>

                            <div class="col-lg-4">
                                <@select name="eml.language" help="i18n" options=languages value="${languageIso3!'eng'}" requiredField=true />
                            </div>

                            <div class="col-lg-4">
                                <@select name="resource.subtype" i18nkey="resource.subtype" help="i18n" options=listSubtypes value="${resource.subtype!''}" />
                            </div>

                            <div class="col-lg-4">
                                <@select name="eml.updateFrequency" i18nkey="eml.updateFrequency" help="i18n" options=frequencies value="${eml.updateFrequency.identifier!'unkown'}" requiredField=true />
                            </div>

                            <!-- Intellectual Rights -->
                            <div class="col-12">
                                <@select name="eml.intellectualRights.license" i18nkey="eml.intellectualRights.license" help="i18n" options=licenses value="${licenseKeySelected!}" requiredField=true/>

                                <div id="intellectualRightsDiv" class="mt-3 p-3">
                                    <@licenseLogoClass eml.intellectualRights!/>
                                    <#noescape>${eml.intellectualRights!}</#noescape>
                                    <#if version?? && version.toPlainString() != resource.emlVersion.toPlainString() && recordsPublishedForVersion??>
                                        <@s.text name='version.toPlainString()'/>, <@s.text name='resource.emlVersion.toPlainString()'/>, <@s.text name='recordsPublishedForVersion'/>
                                    </#if>
                                </div>
                                <!-- internal parameter -->
                                <input id="eml.intellectualRights" name="eml.intellectualRights" type="hidden" value="${eml.intellectualRights!}" />

                                <!-- Hidden inputs storing license texts used in populating ipr textarea when a different license gets selected -->
                                <#list licenseTexts?keys as k>
                                    <input type="text" id="${k}" value="${licenseTexts[k]}" style="display: none"/>
                                </#list>

                                <div id='disclaimerRigths' style='display: none'>
                                    <p class="mt-3">
                                        <@s.text name='eml.intellectualRights.license.disclaimer'/>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="my-3 p-3">
                        <!-- Descriptions, broken into one or more paragraphs -->
                        <@textinline name="eml.description" help="i18n" requiredField=true/>
                        <div id="items">
                            <#list eml.description as item>
                                <div id="item-${item_index}" class="item paragraphk pb-4 border-bottom">
                                    <div class="mt-2 d-flex justify-content-end">
                                        <a id="removeLink-${item_index}" class="removeLink mt-1" href="">
                                            <@s.text name='manage.metadata.removethis'/> <@s.text name='eml.description.item'/>
                                        </a>
                                    </div>
                                    <@simpleText name="eml.description[${item_index}]" minlength=5 requiredField=true></@simpleText>
                                </div>
                            </#list>
                        </div>
                        <div class="addNew mt-2">
                            <a id="plus" href="">
                                <@s.text name='manage.metadata.addnew'/> <@s.text name='eml.description.item'/>
                            </a>
                        </div>

                        <div id="baseItem" class="item pb-4 border-bottom" style="display:none;">
                            <div class="mt-1">
                                <a id="removeLink" class="removeLink d-flex justify-content-end" href="">
                                    <@s.text name='manage.metadata.removethis'/> <@s.text name='eml.description.item'/>
                                </a>
                            </div>
                            <@simpleText name=""/>
                        </div>

                        <!-- retrieve some link names one time -->
                        <#assign copyLink><@s.text name="eml.resourceCreator.copyLink"/></#assign>
                        <#assign removeContactLink><@s.text name='manage.metadata.removethis'/> <@s.text name='eml.contact'/></#assign>
                        <#assign removeCreatorLink><@s.text name='manage.metadata.removethis'/> <@s.text name='portal.resource.creator'/></#assign>
                        <#assign removeMetadataProviderLink><@s.text name='manage.metadata.removethis'/> <@s.text name='eml.metadataProvider'/></#assign>
                        <#assign addContactLink><@s.text name='manage.metadata.addnew'/> <@s.text name='eml.contact'/></#assign>
                        <#assign addCreatorLink><@s.text name='manage.metadata.addnew'/> <@s.text name='portal.resource.creator'/></#assign>
                        <#assign addMetadataProviderLink><@s.text name='manage.metadata.addnew'/> <@s.text name='eml.metadataProvider'/></#assign>
                    </div>

                    <div class="my-3 p-3">
                        <!-- Resource Contacts -->
                        <@textinline name="eml.contact.plural" help="i18n" requiredField=true/>
                        <div id="contact-items">
                            <#list eml.contacts as contact>
                                <div id="contact-item-${contact_index}" class="item row g-3 pb-4 border-bottom">
                                    <div class="columnLinks mt-3 d-flex justify-content-between">
                                        <!-- Do not show copy-from-resource-contact link for for first contact -->
                                        <div>&nbsp;</div>
                                        <div>
                                            <a id="contact-removeLink-${contact_index}" class="removeContactLink" href="">${removeContactLink?lower_case?cap_first}</a>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.contacts[${contact_index}].firstName" help="i18n" i18nkey="eml.contact.firstName"/>
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.contacts[${contact_index}].lastName" help="i18n" i18nkey="eml.contact.lastName" requiredField=true/>
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.contacts[${contact_index}].position" help="i18n" i18nkey="eml.contact.position" requiredField=true />
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.contacts[${contact_index}].organisation" help="i18n" i18nkey="eml.contact.organisation" requiredField=true />
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.contacts[${contact_index}].address.address" help="i18n" i18nkey="eml.contact.address.address" />
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.contacts[${contact_index}].address.city" help="i18n" i18nkey="eml.contact.address.city" />
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.contacts[${contact_index}].address.province" help="i18n" i18nkey="eml.contact.address.province" />
                                    </div>
                                    <div class="countryList col-md-6">
                                        <@select name="eml.contacts[${contact_index}].address.country" help="i18n" options=countries i18nkey="eml.contact.address.country" value="${eml.contacts[contact_index].address.country!}"/>
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.contacts[${contact_index}].address.postalCode" help="i18n" i18nkey="eml.contact.address.postalCode" />
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.contacts[${contact_index}].phone" help="i18n" i18nkey="eml.contact.phone" />
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.contacts[${contact_index}].email" help="i18n" i18nkey="eml.contact.email" />
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.contacts[${contact_index}].homepage" help="i18n" i18nkey="eml.contact.homepage" type="url" />
                                    </div>
                                    <div class="col-md-6">
                                        <#if eml.contacts[contact_index].userIds[0]??>
                                            <@select name="eml.contacts[${contact_index}].userIds[0].directory" help="i18n" options=userIdDirectories i18nkey="eml.contact.directory" value="${eml.contacts[contact_index].userIds[0].directory!}"/>
                                        <#else>
                                            <@select name="eml.contacts[${contact_index}].userIds[0].directory" help="i18n" options=userIdDirectories i18nkey="eml.contact.directory" value=""/>
                                        </#if>
                                    </div>
                                    <div class="col-md-6">
                                        <#if eml.contacts[contact_index].userIds[0]??>
                                            <@input name="eml.contacts[${contact_index}].userIds[0].identifier" help="i18n" i18nkey="eml.contact.identifier" value="${eml.contacts[contact_index].userIds[0].identifier!}"/>
                                        <#else>
                                            <@input name="eml.contacts[${contact_index}].userIds[0].identifier" help="i18n" i18nkey="eml.contact.identifier" value=""/>
                                        </#if>
                                    </div>
                                </div>
                            </#list>
                        </div>

                        <div class="addNew mt-2">
                            <a id="plus-contact" href="">${addContactLink?lower_case?cap_first}</a>
                        </div>

                        <div id="baseItem-contact" class="item row g-3 pb-4 border-bottom" style="display:none;">
                            <div class="columnLinks mt-3 d-flex justify-content-between">
                                <div>
                                    <a id="contact-copyDetails" href="">${copyLink?lower_case?cap_first}</a>
                                </div>
                                <div>
                                    <a id="contact-removeLink" class="removeContactLink" href="">${removeContactLink?lower_case?cap_first}</a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.contact.firstName" help="i18n" i18nkey="eml.contact.firstName"/>
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.contact.lastName" help="i18n" i18nkey="eml.contact.lastName" requiredField=true/>
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.contact.position" help="i18n" i18nkey="eml.contact.position" requiredField=true />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.contact.organisation" help="i18n" i18nkey="eml.contact.organisation" requiredField=true />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.contact.address.address" help="i18n" i18nkey="eml.contact.address.address" />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.contact.address.city" help="i18n" i18nkey="eml.contact.address.city" />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.contact.address.province" help="i18n" i18nkey="eml.contact.address.province" />
                            </div>
                            <div class="countryList col-md-6">
                                <@select name="country" options=countries help="i18n" i18nkey="eml.contact.address.country" />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.contact.address.postalCode" help="i18n" i18nkey="eml.contact.address.postalCode" />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.contact.phone" help="i18n" i18nkey="eml.contact.phone" />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.contact.email" help="i18n" i18nkey="eml.contact.email" />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.contact.homepage" help="i18n" i18nkey="eml.contact.homepage" type="url" />
                            </div>
                            <div class="col-md-6">
                                <@select name="eml.contact.userId.directory" options=userIdDirectories help="i18n" i18nkey="eml.contact.directory" />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.contact.userId.identifier" help="i18n" i18nkey="eml.contact.identifier" />
                            </div>
                        </div>
                    </div>

                    <div class="my-3 p-3">
                        <!-- Resource Creators -->
                        <@textinline name="eml.resourceCreator.plural" help="i18n" requiredField=true/>
                        <div id="creator-items">
                            <#list eml.creators as creator>
                                <div id="creator-item-${creator_index}" class="item row g-3 pb-4 border-bottom">
                                    <div class="columnLinks mt-3 d-flex justify-content-between">
                                        <div>
                                            <a id="creator-copyDetails-${creator_index}" href="">${copyLink?lower_case?cap_first}</a>
                                        </div>
                                        <div>
                                            <a id="creator-removeLink-${creator_index}" class="removeCreatorLink" href="">${removeCreatorLink?lower_case?cap_first}</a>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.creators[${creator_index}].firstName" help="i18n" i18nkey="eml.resourceCreator.firstName"/>
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.creators[${creator_index}].lastName" help="i18n" i18nkey="eml.resourceCreator.lastName" requiredField=true/>
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.creators[${creator_index}].position" help="i18n" i18nkey="eml.resourceCreator.position" requiredField=true />
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.creators[${creator_index}].organisation" help="i18n" i18nkey="eml.resourceCreator.organisation" requiredField=true />
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.creators[${creator_index}].address.address" help="i18n" i18nkey="eml.resourceCreator.address.address" />
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.creators[${creator_index}].address.city" help="i18n" i18nkey="eml.resourceCreator.address.city" />
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.creators[${creator_index}].address.province" help="i18n" i18nkey="eml.resourceCreator.address.province" />
                                    </div>
                                    <div class="countryList col-md-6">
                                        <@select name="eml.creators[${creator_index}].address.country" help="i18n" options=countries i18nkey="eml.resourceCreator.address.country" value="${eml.creators[creator_index].address.country!}"/>
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.creators[${creator_index}].address.postalCode" help="i18n" i18nkey="eml.resourceCreator.address.postalCode" />
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.creators[${creator_index}].phone" help="i18n" i18nkey="eml.resourceCreator.phone" />
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.creators[${creator_index}].email" help="i18n" i18nkey="eml.resourceCreator.email" />
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.creators[${creator_index}].homepage" help="i18n" i18nkey="eml.resourceCreator.homepage" type="url" />
                                    </div>
                                    <div class="col-md-6">
                                        <#if eml.creators[creator_index].userIds[0]??>
                                            <@select name="eml.creators[${creator_index}].userIds[0].directory" help="i18n" options=userIdDirectories i18nkey="eml.contact.directory" value="${eml.creators[creator_index].userIds[0].directory!}"/>
                                        <#else>
                                            <@select name="eml.creators[${creator_index}].userIds[0].directory" help="i18n" options=userIdDirectories i18nkey="eml.contact.directory" value=""/>
                                        </#if>
                                    </div>
                                    <div class="col-md-6">
                                        <#if eml.creators[creator_index].userIds[0]??>
                                            <@input name="eml.creators[${creator_index}].userIds[0].identifier" help="i18n" i18nkey="eml.contact.identifier" value="${eml.creators[creator_index].userIds[0].identifier!}"/>
                                        <#else>
                                            <@input name="eml.creators[${creator_index}].userIds[0].identifier" help="i18n" i18nkey="eml.contact.identifier" value=""/>
                                        </#if>
                                    </div>
                                </div>
                            </#list>
                        </div>

                        <div class="addNew mt-2">
                            <a id="plus-creator" href="">
                                ${addCreatorLink?lower_case?cap_first}
                            </a>
                        </div>

                        <div id="baseItem-creator" class="item row g-3 pb-4 border-bottom" style="display:none;">
                            <div class="columnLinks mt-3 d-flex justify-content-between">
                                <div>
                                    <a id="creator-copyDetails" href="">${copyLink}</a>
                                </div>
                                <div>
                                    <a id="creator-removeLink" class="removeCreatorLink" href="">${removeCreatorLink?lower_case?cap_first}</a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.creator.firstName" help="i18n" i18nkey="eml.resourceCreator.firstName"/>
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.creator.lastName" help="i18n" i18nkey="eml.resourceCreator.lastName" requiredField=true/>
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.creator.position" help="i18n" i18nkey="eml.resourceCreator.position" requiredField=true />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.creator.organisation" help="i18n" i18nkey="eml.resourceCreator.organisation" requiredField=true />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.creator.address.address" help="i18n" i18nkey="eml.resourceCreator.address.address" />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.creator.address.city" help="i18n" i18nkey="eml.resourceCreator.address.city" />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.creator.address.province" help="i18n" i18nkey="eml.resourceCreator.address.province" />
                            </div>
                            <div class="countryList col-md-6">
                                <@select name="country" options=countries help="i18n" i18nkey="eml.resourceCreator.address.country" />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.creator.address.postalCode" help="i18n" i18nkey="eml.resourceCreator.address.postalCode" />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.creator.phone" help="i18n" i18nkey="eml.resourceCreator.phone" />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.creator.email" help="i18n" i18nkey="eml.resourceCreator.email" />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.creator.homepage" help="i18n" i18nkey="eml.resourceCreator.homepage" type="url" />
                            </div>
                            <div class="col-md-6">
                                <@select name="eml.creator.userId.directory" options=userIdDirectories help="i18n" i18nkey="eml.contact.directory" />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.creator.userId.identifier" help="i18n" i18nkey="eml.contact.identifier" />
                            </div>
                        </div>
                    </div>

                    <div class="my-3 p-3">
                        <!-- Metadata Providers -->
                        <@textinline name="eml.metadataProvider.plural" help="i18n" requiredField=true/>
                        <div id="metadataProvider-items">
                            <#list eml.metadataProviders as metadataProvider>
                                <div id="metadataProvider-item-${metadataProvider_index}" class="item row g-3 pb-4 border-bottom">
                                    <div class="columnLinks d-flex justify-content-between">
                                        <div>
                                            <a id="metadataProvider-copyDetails-${metadataProvider_index}" href=""><@s.text name="eml.resourceCreator.copyLink" /></a>
                                        </div>
                                        <div>
                                            <a id="metadataProvider-removeLink-${metadataProvider_index}" class="removeMetadataProviderLink" href="">${removeMetadataProviderLink?lower_case?cap_first}</a>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.metadataProviders[${metadataProvider_index}].firstName" help="i18n" i18nkey="eml.metadataProvider.firstName"/>
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.metadataProviders[${metadataProvider_index}].lastName" help="i18n" i18nkey="eml.metadataProvider.lastName" requiredField=true/>
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.metadataProviders[${metadataProvider_index}].position" help="i18n" i18nkey="eml.metadataProvider.position" requiredField=true />
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.metadataProviders[${metadataProvider_index}].organisation" help="i18n" i18nkey="eml.metadataProvider.organisation" requiredField=true />
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.metadataProviders[${metadataProvider_index}].address.address" help="i18n" i18nkey="eml.metadataProvider.address.address" />
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.metadataProviders[${metadataProvider_index}].address.city" help="i18n" i18nkey="eml.metadataProvider.address.city" />
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.metadataProviders[${metadataProvider_index}].address.province" help="i18n" i18nkey="eml.metadataProvider.address.province" />
                                    </div>
                                    <div class="countryList col-md-6">
                                        <@select name="eml.metadataProviders[${metadataProvider_index}].address.country" help="i18n" options=countries i18nkey="eml.metadataProvider.address.country" value="${eml.metadataProviders[metadataProvider_index].address.country!}"/>
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.metadataProviders[${metadataProvider_index}].address.postalCode" help="i18n" i18nkey="eml.metadataProvider.address.postalCode" />
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.metadataProviders[${metadataProvider_index}].phone" help="i18n" i18nkey="eml.metadataProvider.phone" />
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.metadataProviders[${metadataProvider_index}].email" help="i18n" i18nkey="eml.metadataProvider.email" />
                                    </div>
                                    <div class="col-md-6">
                                        <@input name="eml.metadataProviders[${metadataProvider_index}].homepage" help="i18n" i18nkey="eml.metadataProvider.homepage" type="url" />
                                    </div>
                                    <div class="col-md-6">
                                        <#if eml.metadataProviders[metadataProvider_index].userIds[0]??>
                                            <@select name="eml.metadataProviders[${metadataProvider_index}].userIds[0].directory" help="i18n" options=userIdDirectories i18nkey="eml.contact.directory" value="${eml.metadataProviders[metadataProvider_index].userIds[0].directory!}"/>
                                        <#else>
                                            <@select name="eml.metadataProviders[${metadataProvider_index}].userIds[0].directory" help="i18n" options=userIdDirectories i18nkey="eml.contact.directory" value=""/>
                                        </#if>
                                    </div>
                                    <div class="col-md-6">
                                        <#if eml.metadataProviders[metadataProvider_index].userIds[0]??>
                                            <@input name="eml.metadataProviders[${metadataProvider_index}].userIds[0].identifier" help="i18n" i18nkey="eml.contact.identifier" value="${eml.metadataProviders[metadataProvider_index].userIds[0].identifier!}"/>
                                        <#else>
                                            <@input name="eml.metadataProviders[${metadataProvider_index}].userIds[0].identifier" help="i18n" i18nkey="eml.contact.identifier" value=""/>
                                        </#if>
                                    </div>
                                </div>
                            </#list>
                        </div>

                        <div class="addNew mt-2">
                            <a id="plus-metadataProvider" href="">${addMetadataProviderLink?lower_case?cap_first}</a>
                        </div>

                        <div id="baseItem-metadataProvider" class="item row g-3 pb-4 border-bottom" style="display:none;">
                            <div class="columnLinks d-flex justify-content-between">
                                <div>
                                    <a id="metadataProvider-copyDetails" href="">${copyLink?lower_case?cap_first}</a>
                                </div>
                                <div>
                                    <a id="metadataProvider-removeLink" class="removeMetadataProviderLink" href="">${removeMetadataProviderLink?lower_case?cap_first}</a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.metadataProvider.firstName" help="i18n" i18nkey="eml.metadataProvider.firstName"/>
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.metadataProvider.lastName" help="i18n" i18nkey="eml.metadataProvider.lastName" requiredField=true/>
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.metadataProvider.position" help="i18n" i18nkey="eml.metadataProvider.position" requiredField=true />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.metadataProvider.organisation" help="i18n" i18nkey="eml.metadataProvider.organisation" requiredField=true />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.metadataProvider.address.address" help="i18n" i18nkey="eml.metadataProvider.address.address" />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.metadataProvider.address.city" help="i18n" i18nkey="eml.metadataProvider.address.city" />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.metadataProvider.address.province" help="i18n" i18nkey="eml.metadataProvider.address.province" />
                            </div>
                            <div class="countryList col-md-6">
                                <@select name="country" options=countries help="i18n" i18nkey="eml.metadataProvider.address.country" />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.metadataProvider.address.postalCode" help="i18n" i18nkey="eml.metadataProvider.address.postalCode" />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.metadataProvider.phone" help="i18n" i18nkey="eml.metadataProvider.phone" />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.metadataProvider.email" help="i18n" i18nkey="eml.metadataProvider.email" />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.metadataProvider.homepage" help="i18n" i18nkey="eml.metadataProvider.homepage" type="url" />
                            </div>
                            <div class="col-md-6">
                                <@select name="eml.metadataProvider.userId.directory" options=userIdDirectories help="i18n" i18nkey="eml.contact.directory" />
                            </div>
                            <div class="col-md-6">
                                <@input name="eml.metadataProvider.userId.identifier" help="i18n" i18nkey="eml.contact.identifier" />
                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-12">
                                <@s.submit cssClass="button btn btn-outline-gbif-primary" name="save" key="button.save"/>
                                <@s.submit cssClass="button btn btn-outline-secondary" name="cancel" key="button.back"/>
                            </div>
                        </div>

                        <!-- internal parameter -->
                        <input name="r" type="hidden" value="${resource.shortname}" />
                    </div>
                </div>
            </main>
        </div>
    </div>
</form>

    <#include "/WEB-INF/pages/inc/footer.ftl">
</#escape><#escape x as x?html>
    <#setting number_format="#####.##">
    <#include "/WEB-INF/pages/inc/header.ftl">
<title xmlns="http://www.w3.org/1999/html"><@s.text name='manage.metadata.geocoverage.title'/></title>
    <#assign currentMetadataPage = "geocoverage"/>
    <#assign currentMenu="manage"/>

    <link rel="stylesheet" href="${baseURL}/styles/leaflet/leaflet.css" />
    <link rel="stylesheet" href="${baseURL}/styles/leaflet/locationfilter.css" />
    <script src="${baseURL}/js/leaflet/leaflet.js"></script>
    <script src="${baseURL}/js/leaflet/tile.stamen.js"></script>
    <script src="${baseURL}/js/leaflet/locationfilter.js"></script>

    <script>
        $(document).ready(function() {
            var newBboxBase = "eml\\.geospatialCoverages\\[0\\]\\.boundingCoordinates\\.";
            var maxLatId = newBboxBase + "max\\.latitude";
            var minLatId = newBboxBase + "min\\.latitude";
            var maxLngId = newBboxBase + "max\\.longitude";
            var minLngId = newBboxBase + "min\\.longitude";

            const MIN_LNG_VAL_LIMIT = -180;
            const MAX_LNG_VAL_LIMIT = 180;
            const MIN_LAT_VAL_LIMIT = -90;
            const MAX_LAT_VAL_LIMIT = 90;

            var map = new L.map('map').setView([0, 0], 10).setMaxBounds(L.latLngBounds(L.latLng(-90, -360), L.latLng(90, 360)));

            var layer = new L.StamenTileLayer("terrain");
            map.addLayer(layer, {
                detectRetina: true
            });

            // populate coordinate fields, using min max values as defaults if none exist
            var minLngVal = isNaN(parseFloat($("#" + minLngId).val())) ? MIN_LNG_VAL_LIMIT : parseFloat($("#" + minLngId).val());
            var maxLngVal = isNaN(parseFloat($("#" + maxLngId).val())) ? MAX_LNG_VAL_LIMIT : parseFloat($("#" + maxLngId).val());
            var minLatVal = isNaN(parseFloat($("#" + minLatId).val())) ? MIN_LAT_VAL_LIMIT : parseFloat($("#" + minLatId).val());
            var maxLatVal = isNaN(parseFloat($("#" + maxLatId).val())) ? MAX_LAT_VAL_LIMIT : parseFloat($("#" + maxLatId).val());

            // make the location filter: a draggable/resizable rectangle
            var locationFilter = new L.LocationFilter({
                enable: true,
                enableButton: false,
                adjustButton:false,
                bounds:  L.latLngBounds(L.latLng(minLatVal, minLngVal), L.latLng(maxLatVal, maxLongitudeAdjust(maxLngVal, minLngVal)))
            }).addTo(map);

            // checks if global coverage is set. If on, coordinate input fields are hidden and the map disabled
            if (maxLatVal === MAX_LAT_VAL_LIMIT && minLatVal === MIN_LAT_VAL_LIMIT && maxLngVal === MAX_LNG_VAL_LIMIT && minLngVal === MIN_LNG_VAL_LIMIT) {
                $('input[name=globalCoverage]').attr('checked', true);
                $("#" + minLngId).val(MIN_LNG_VAL_LIMIT);
                $("#" + maxLngId).val(MAX_LNG_VAL_LIMIT);
                $("#" + minLatId).val(MIN_LAT_VAL_LIMIT);
                $("#" + maxLatId).val(MAX_LAT_VAL_LIMIT);
                $("#coordinates").slideUp('slow');
                locationFilter.disable();
                map.fitWorld();
            }

            /** This function updates the map each time the global coverage checkbox is checked or unchecked  */
            $(":checkbox").click(function() {
                if($("#globalCoverage").is(":checked")) {
                    $("#" + minLngId).val(MIN_LNG_VAL_LIMIT);
                    $("#" + maxLngId).val(MAX_LNG_VAL_LIMIT);
                    $("#" + minLatId).val(MIN_LAT_VAL_LIMIT);
                    $("#" + maxLatId).val(MAX_LAT_VAL_LIMIT);
                    $("#coordinates").slideUp('slow');
                    locationFilter.disable();
                    map.fitWorld();
                } else {
                    var minLngVal = parseFloat(${(eml.geospatialCoverages[0].boundingCoordinates.min.longitude)!\-180?c});
                    var maxLngVal = parseFloat(${(eml.geospatialCoverages[0].boundingCoordinates.max.longitude)!180?c});
                    var minLatVal = parseFloat(${(eml.geospatialCoverages[0].boundingCoordinates.min.latitude)!\-90?c});
                    var maxLatVal = parseFloat(${(eml.geospatialCoverages[0].boundingCoordinates.max.latitude)!90?c});
                    $("#" + minLngId).val(minLngVal);
                    $("#" + maxLngId).val(maxLngVal);
                    $("#" + minLatId).val(minLatVal);
                    $("#" + maxLatId).val(maxLatVal);
                    $("#coordinates").slideDown('slow');
                    locationFilter.enable();
                    locationFilter.setBounds(L.latLngBounds(L.latLng(minLatVal, minLngVal), L.latLng(maxLatVal, maxLongitudeAdjust(maxLngVal, minLngVal))));
                }
            });

            /** This function updates the coordinate input fields to mirror bounding box coordinates, after each map change event  */
            locationFilter.on("change", function (e) {
                var minLatVal = clamp(locationFilter.getBounds()._southWest.lat, MIN_LAT_VAL_LIMIT, MAX_LAT_VAL_LIMIT)
                var minLngVal = datelineAdjust(locationFilter.getBounds()._southWest.lng)
                var maxLatVal = clamp(locationFilter.getBounds()._northEast.lat, MIN_LAT_VAL_LIMIT, MAX_LAT_VAL_LIMIT)
                var maxLngVal = datelineAdjust(locationFilter.getBounds()._northEast.lng)
                $("#" + minLatId).val(minLatVal);
                $("#" + minLngId).val(minLngVal);
                $("#" + maxLatId).val(maxLatVal);
                $("#" + maxLngId).val(maxLngVal);
            });

            // lock map on disable
            locationFilter.on("disabled", function (e) {
                locationFilter.setBounds(L.latLngBounds(L.latLng(minLatVal, minLngVal), L.latLng(maxLatVal, maxLngVal)))
            });

            /**
             * Adjusts longitude with respect to dateLine.
             * Do not apply to 180.
             *
             * @param {number} lng The longitude value to adjust.
             * @returns {number} The adjusted longitude value.
             */
            function datelineAdjust(lng) {
                return lng === 180 ? lng : ((lng + 180) % 360) - 180;
            }

            /**
             * Function adjusts max longitude as work-around for leaflet bug occurring when rendering map with max longitude
             * smaller than min longitude.
             *
             * @param {number} maxLng The max longitude value.
             * @param {number} minLng The min longitude value.
             * @returns {number} The adjusted longitude value.
             */
            function maxLongitudeAdjust(maxLng, minLng) {
                if (maxLng < minLng) {
                    maxLng = maxLng + 360;
                }
                return maxLng;
            }

            /**
             * Restricts latitude to be between min and max. Returns min if latitude is less than min.
             * Returns max if latitude is greater than max.
             *
             * @param {number} lat The latitude value to adjust.
             * @param {number} min The minimum latitude value permitted.
             * @param {number} max The maximum latitude value permitted.
             * @returns {number} The restricted latitude value.
             */
            function clamp(lat, min, max) {
                return Math.min(Math.max(lat, min), max);
            }

            /** This function adjusts the map each time the user enters a  */
            $("#bbox input").keyup(function() {
                var minLngStr = $("#" + minLngId).val();
                var maxLngStr = $("#" + maxLngId).val();
                var minLatStr = $("#" + minLatId).val();
                var maxLatStr = $("#" + maxLatId).val();

                // ignore these values
                if (minLngStr.endsWith(".") || minLngStr === "-" || minLngStr === ""
                    || maxLngStr.endsWith(".") || maxLngStr === "-" || maxLngStr === ""
                    || minLatStr.endsWith(".") || minLatStr === "-" || minLatStr === ""
                    || maxLatStr.endsWith(".") || maxLatStr === "-" || maxLatStr === "") {
                    return
                }

                var minLngVal = parseFloat(minLngStr);
                var maxLngVal = parseFloat(maxLngStr);
                var minLatVal = parseFloat(minLatStr);
                var maxLatVal = parseFloat(maxLatStr);

                if (isNaN(minLngVal)) {
                    minLngVal = MIN_LNG_VAL_LIMIT;
                }
                if (isNaN(maxLngVal)) {
                    maxLngVal = MAX_LNG_VAL_LIMIT;
                }
                if (isNaN(minLatVal)) {
                    minLatVal = MIN_LAT_VAL_LIMIT;
                }
                if (isNaN(maxLatVal)) {
                    maxLatVal = MAX_LAT_VAL_LIMIT;
                }
                locationFilter.setBounds(L.latLngBounds(L.latLng(minLatVal, minLngVal), L.latLng(maxLatVal, maxLongitudeAdjust(maxLngVal, minLngVal))))
            });

            $('#metadata-section').change(function () {
                var metadataSection = $('#metadata-section').find(':selected').val()
                $(location).attr('href', 'metadata-' + metadataSection + '.do?r=${resource.shortname!r!}');
            });
        });
    </script>

    <#include "/WEB-INF/pages/inc/menu.ftl">
    <#include "/WEB-INF/pages/macros/forms.ftl"/>

<form class="needs-validation" action="metadata-${section}.do" method="post" novalidate>
    <div class="container-fluid bg-body border-bottom">
        <div class="container pt-2">
            <#include "/WEB-INF/pages/inc/action_alerts.ftl">
        </div>

        <div class="container p-3">

<<<<<<< HEAD
    <div id="bbox" class="row mx-md-3 mx-1 g-3">
        <div class="col-12">
            <@checkbox name="globalCoverage" help="i18n" i18nkey="eml.geospatialCoverages.globalCoverage"/>
        </div>
        <div id="coordinates" class="row g-3 mt-0">
            <div class="col-md-6">
                <@input name="eml.geospatialCoverages[0].boundingCoordinates.min.longitude" value="${(eml.geospatialCoverages[0].boundingCoordinates.min.longitude)!}" help="i18n" i18nkey="eml.geospatialCoverages.boundingCoordinates.min.longitude" requiredField=true />
            </div>
            <div class="col-md-6">
                <@input name="eml.geospatialCoverages[0].boundingCoordinates.max.longitude" value="${(eml.geospatialCoverages[0].boundingCoordinates.max.longitude)!}" help="i18n" i18nkey="eml.geospatialCoverages.boundingCoordinates.max.longitude" requiredField=true />
            </div>
            <div class="col-md-6">
                <@input name="eml.geospatialCoverages[0].boundingCoordinates.min.latitude" value="${(eml.geospatialCoverages[0].boundingCoordinates.min.latitude)!}" help="i18n" i18nkey="eml.geospatialCoverages.boundingCoordinates.min.latitude" requiredField=true />
            </div>
            <div class="col-md-6">
                <@input name="eml.geospatialCoverages[0].boundingCoordinates.max.latitude" value="${(eml.geospatialCoverages[0].boundingCoordinates.max.latitude)!}" help="i18n" i18nkey="eml.geospatialCoverages.boundingCoordinates.max.latitude" requiredField=true />
=======
            <div class="text-center">
                <h5 class="pt-2 text-gbif-header fs-4 fw-400 text-center">
                    <@s.text name='manage.metadata.geocoverage.title'/>
                </h5>
            </div>

            <div class="text-center fs-smaller">
                <a href="resource.do?r=${resource.shortname}" title="${resource.title!resource.shortname}">${resource.title!resource.shortname}</a>
>>>>>>> master
            </div>
        </div>
    </div>

<<<<<<< HEAD
    <div class="row g-3 mx-md-3 mx-1 mt-2">
        <div class="col-12">
            <@text name="eml.geospatialCoverages[0].description" value="${(eml.geospatialCoverages[0].description)!}" help="i18n" i18nkey="eml.geospatialCoverages.description" requiredField=true minlength=2 />
        </div>
=======
    <#include "metadata_section_select.ftl"/>
>>>>>>> master

    <div class="container-fluid bg-body">
        <div class="container bd-layout">

            <main class="bd-main bd-main-right">
                <div class="bd-toc mt-4 mb-5 ps-3 mb-lg-5 text-muted">
                    <#include "eml_sidebar.ftl"/>
                </div>

                <div class="bd-content ps-lg-4">
                    <div class="my-md-3 p-3">
                        <p><@s.text name='manage.metadata.geocoverage.intro'/></p>

                        <div id="map"></div>

                        <div id="bbox" class="row g-3">
                            <div class="col-12">
                                <@checkbox name="globalCoverage" help="i18n" i18nkey="eml.geospatialCoverages.globalCoverage"/>
                            </div>
                            <div id="coordinates" class="row g-3 mt-0">
                                <p class="mb-0">
                                    <strong><@s.text name='manage.metadata.geocoverage.warning'/></strong>
                                </p>

                                <div class="col-md-6">
                                    <@input name="eml.geospatialCoverages[0].boundingCoordinates.min.longitude" value="${(eml.geospatialCoverages[0].boundingCoordinates.min.longitude?c)!}" i18nkey="eml.geospatialCoverages.boundingCoordinates.min.longitude" requiredField=true />
                                </div>
                                <div class="col-md-6">
                                    <@input name="eml.geospatialCoverages[0].boundingCoordinates.max.longitude" value="${(eml.geospatialCoverages[0].boundingCoordinates.max.longitude?c)!}" i18nkey="eml.geospatialCoverages.boundingCoordinates.max.longitude" requiredField=true />
                                </div>
                                <div class="col-md-6">
                                    <@input name="eml.geospatialCoverages[0].boundingCoordinates.min.latitude" value="${(eml.geospatialCoverages[0].boundingCoordinates.min.latitude?c)!}" i18nkey="eml.geospatialCoverages.boundingCoordinates.min.latitude" requiredField=true />
                                </div>
                                <div class="col-md-6">
                                    <@input name="eml.geospatialCoverages[0].boundingCoordinates.max.latitude" value="${(eml.geospatialCoverages[0].boundingCoordinates.max.latitude?c)!}" i18nkey="eml.geospatialCoverages.boundingCoordinates.max.latitude" requiredField=true />
                                </div>
                            </div>
                        </div>

                        <div class="row g-3 mt-2">
                            <div class="col-12">
                                <@text name="eml.geospatialCoverages[0].description" value="${(eml.geospatialCoverages[0].description)!}" i18nkey="eml.geospatialCoverages.description" requiredField=true minlength=2 />
                            </div>

                            <div class="col-12">
                                <@s.submit cssClass="button btn btn-outline-gbif-primary" name="save" key="button.save" />
                                <@s.submit cssClass="button btn btn-outline-secondary" name="cancel" key="button.back" />
                            </div>
                        </div>


                        <!-- internal parameter -->
                        <input name="r" type="hidden" value="${resource.shortname}" />
                    </div>
                </div>
            </main>
        </div>
    </div>
</form>

    <#include "/WEB-INF/pages/inc/footer.ftl">
</#escape>
