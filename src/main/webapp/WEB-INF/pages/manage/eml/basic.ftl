<#-- @ftlvariable name="" type="org.gbif.ipt.action.manage.MetadataAction" -->
    <#include "/WEB-INF/pages/inc/header.ftl">
    <#include "/WEB-INF/pages/macros/metadata.ftl"/>
    <#include "/WEB-INF/pages/macros/user_id_directories.ftl"/>
    <title><@s.text name='manage.metadata.basic.title'/></title>
    <script src="${baseURL}/js/jconfirmation.jquery.js"></script>
    <script src="${baseURL}/js/docbook/docbook-v2.js"></script>
    <link rel="stylesheet" href="${baseURL}/styles/select2/select2-4.0.13.min.css">
    <link rel="stylesheet" href="${baseURL}/styles/select2/select2-bootstrap4.min.css">
    <link rel="stylesheet" href="${baseURL}/styles/smaller-inputs.css">
    <script src="${baseURL}/js/select2/select2-4.0.13.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.20/summernote-bs5.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.20/summernote-bs5.min.js"></script>
    <#include "/WEB-INF/pages/macros/metadata_agent.ftl"/>
    <script>
        $(document).ready(function(){
            // Ensure core type cannot be changed once set (e.g., after core mapping is done)
            var resourceType = "${resource.coreType!}";
            if (resourceType !== "") {
                if (resourceType.toLowerCase() === "occurrence") {
                    $("#resource\\.coreType").val('occurrence');
                } else if (resourceType.toLowerCase() === "checklist") {
                    $("#resource\\.coreType").val('checklist');
                } else if (resourceType.toLowerCase() === "samplingevent") {
                    $("#resource\\.coreType").val('samplingevent');
                } else if (resourceType.toLowerCase() === "materialentity") {
                    $("#resource\\.coreType").val('materialentity');
                } else if (resourceType.toLowerCase() === "other") {
                    $("#resource\\.coreType").val('other');
                }
            }

            // core type selection is only disabled, if resource has core
            var hasCore="${resourceHasCore!}";
            if (hasCore === "true") {
                $("#resource\\.coreType").attr('disabled','disabled');
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
                        var list=getList("${samplingEventSubtypesMap}");
                        $.each(list, function(key, value) {
                          $('#resource\\.subtype').append('<option value="'+key+'">'+value+'</option>');
                        });
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
            }

            if (exists("${eml.intellectualRights!}")) {
                $("#intellectualRightsDiv").show();
            } else {
                $("#intellectualRights").val('');
                $("#intellectualRightsDiv").hide();
            }

            $("#eml\\.intellectualRights\\.license").change(function() {
                $('.confirm').unbind('click');

                var nameRights = $("#eml\\.intellectualRights\\.license").val();
                $("#eml\\.intellectualRights\\.license").val(nameRights);

                if (nameRights) {
                    var licenseText=$("input:text#" + nameRights).val();

                    if (licenseText) {
                        $("#intellectualRightsDiv .cc_text").html(licenseText);
                        $("#intellectualRightsDiv").show();
                        $("#intellectualRights").val(licenseText);
                        $("#eml\\.intellectualRights").val(licenseText);

                        $("#disclaimerRights").css('display', '');
                    }
                } else {
                    $("#intellectualRightsDiv .cc_text").html('');
                    $("#intellectualRightsDiv").hide();

                    $("#intellectualRights").val('');
                    $("#disclaimerRights").css('display', 'none');
                    $("#eml\\.intellectualRights").val('');
                }
            });
            // end intellectual rights

            $('#metadata-section').change(function () {
                var metadataSection = $('#metadata-section').find(':selected').val()
                $(location).attr('href', 'metadata-' + metadataSection + '.do?r=${resource.shortname!r!}');
            });

            // scroll to the error if present
            var invalidElements = $(".is-invalid");

            if (invalidElements !== undefined && invalidElements.length > 0) {
                var invalidElement = invalidElements.first();
                var pos = invalidElement.offset().top - 100;
                // scroll to the element
                $('body, html').animate({scrollTop: pos});
            }

            $('select#eml\\.metadataLanguage').select2({
                placeholder: '',
                language: {
                    noResults: function () {
                        return '${selectNoResultsFound}';
                    }
                },
                width: "100%",
                theme: 'bootstrap4'
            });
            $('select#resource\\.coreType').select2({
                placeholder: '${action.getText("resource.coreType.selection")?js_string}',
                language: {
                    noResults: function () {
                        return '${selectNoResultsFound}';
                    }
                },
                width: "100%",
                minimumResultsForSearch: 'Infinity',
                theme: 'bootstrap4'
            });
            $('select#eml\\.language').select2({
                placeholder: '',
                language: {
                    noResults: function () {
                        return '${selectNoResultsFound}';
                    }
                },
                width: "100%",
                theme: 'bootstrap4'});
            $('select#resource\\.subtype').select2({
                placeholder: '${action.getText("resource.subtype.selection")?js_string}',
                language: {
                    noResults: function () {
                        return '${selectNoResultsFound}';
                    }
                },
                width: "100%",
                allowClear: true,
                minimumResultsForSearch: 'Infinity',
                theme: 'bootstrap4'
            });
            $('select#eml\\.updateFrequency').select2({
                placeholder: '',
                language: {
                    noResults: function () {
                        return '${selectNoResultsFound}';
                    }
                },
                width: "100%",
                minimumResultsForSearch: 'Infinity',
                theme: 'bootstrap4'
            });
            $('select#eml\\.intellectualRights\\.license').select2({
                placeholder: '${action.getText("eml.intellectualRights.nolicenses")?js_string}',
                language: {
                    noResults: function () {
                        return '${selectNoResultsFound}';
                    }
                },
                width: "100%",
                allowClear: true,
                minimumResultsForSearch: 'Infinity',
                theme: 'bootstrap4'
            });

            var docBookDescription = `${eml.description!}`;
            var htmlDescription = convertToHtml(docBookDescription);

            const descriptionEditor = $('#description-editor');
            descriptionEditor.summernote({
                height: 200,
                minHeight: null,
                maxHeight: null,
                focus: false,
                toolbar: [
                    ['insert', ['codeview']]
                ],
                // clean up HTML and styles when copy/paste
                callbacks: {
                    onPaste: function (e) {
                        e.preventDefault();
                        const clipboardData = (e.originalEvent || e).clipboardData || window.clipboardData;
                        const text = clipboardData.getData('text/plain');
                        const cleaned = text.replace(/\r?\n/g, '<br>'); // keep newlines

                        descriptionEditor.summernote('focus');
                        descriptionEditor.summernote('pasteHTML', cleaned);
                    }
                }
            });

            $('#description-editor').summernote('code', htmlDescription);

            // Form submission events
            $('#basic-metadata-form').submit(function(event) {
                // Prevent the default form submission
                event.preventDefault();

                // Extract HTML content from Summernote editor
                var htmlContentDescription = $('#description-editor').summernote('code');

                const descriptionValidation = validateHTML(htmlContentDescription);
                if (!descriptionValidation.isValid) {
                    $("#html-validation-error-block").show();
                    var errorMessage =
                        '${action.getText("eml.description.unsupportedHtmlInput1")?js_string}'
                        + " " + descriptionValidation.tag + ". "
                        + '${action.getText("eml.description.unsupportedHtmlInput2")?js_string}';
                    $("#html-validation-error-message").text(errorMessage);
                    $('body, html').animate({scrollTop: 0});
                    return;
                }

                // Convert HTML to DocBook
                var docbookContentDescription = convertToDocBook(htmlContentDescription);

                // Assign DocBook content to a hidden input field
                $('#description').val(docbookContentDescription);

                // Submit the form
                this.submit();
            });

            makeSureResourceParameterIsPresentInURL('${resource.shortname}');
        });
    </script>
    <style>
        .form-control, .form-select {
            min-height: calc(1.5em + .5rem + 2px);
            padding: .25rem .5rem;
            font-size: .875rem;
            border-radius: .2rem;
        }

        .select2-container--bootstrap4 .select2-selection--single {
            height: calc(1.5em + .5rem + 2px) !important;
            font-size: .875rem !important;
        }

        .select2-container--bootstrap4 .select2-selection--single .select2-selection__rendered {
            line-height: calc(1.5em + .5rem) !important;
        }

        .select2-container--bootstrap4 .select2-selection--single .select2-selection__placeholder {
            line-height: calc(1.5em + .5rem) !important;
        }

        .select2-container--bootstrap4 .select2-selection__clear {
            margin-top: .625em !important;
        }

        .select2-results__option, .select2-search__field {
            font-size: .875rem;
        }
    </style>
    <#assign currentMenu="manage"/>
    <#assign currentMetadataPage = "basic"/>
    <#include "/WEB-INF/pages/inc/menu.ftl">
    <#include "/WEB-INF/pages/macros/forms.ftl"/>

<div class="container px-0">
    <#include "/WEB-INF/pages/inc/action_alerts.ftl">

    <div id="html-validation-error-block" class="alert alert-danger alert-dismissible fade show d-flex metadata-error-alert" role="alert" style="display: none !important;">
        <div class="me-3">
            <i class="bi bi-exclamation-circle alert-red-2 fs-bigger-2 me-2"></i>
        </div>
        <div class="overflow-x-hidden pt-1">
            <span id="html-validation-error-message"></span>
        </div>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
</div>

<form id="basic-metadata-form" class="needs-validation track-unsaved" action="metadata-${section}.do" method="post" novalidate>
    <input type="hidden" name="r" value="${resource.shortname}" />

    <div class="container-fluid bg-body border-bottom">
        <div class="container bg-body border rounded-2 mb-4">
            <div class="container my-3 p-3">
                <div class="text-center fs-smaller">
                    <div class="text-center fs-smaller">
                        <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
                            <ol class="breadcrumb justify-content-center mb-0">
                                <li class="breadcrumb-item"><a href="${baseURL}/manage/"><@s.text name="breadcrumb.manage"/></a></li>
                                <li class="breadcrumb-item"><a href="resource?r=${resource.shortname}"><@s.text name="breadcrumb.manage.overview"/></a></li>
                                <li class="breadcrumb-item active" aria-current="page"><@s.text name="breadcrumb.manage.overview.metadata"/></li>
                            </ol>
                        </nav>
                    </div>
                </div>

                <div class="text-center">
                    <h1 class="py-2 mb-0 text-gbif-header fs-2 fw-normal">
                        <@s.text name='manage.metadata.basic.title'/>
                    </h1>
                </div>

                <div class="text-center fs-smaller">
                    <a href="resource.do?r=${resource.shortname}" title="${resource.title!resource.shortname}">
                        <#if resource.title?has_content>
                            ${resource.title}
                        <#else>
                            ${resource.shortname}
                        </#if>
                    </a>
                </div>

                <div class="text-center mt-2">
                    <@s.submit cssClass="button btn btn-sm btn-outline-gbif-primary top-button" name="save" key="button.save"/>
                    <button type="button" class="btn btn-sm btn-outline-secondary top-button" onclick="window.history.back();">
                        <@s.text name="button.back"/>
                    </button>

                </div>
            </div>
        </div>
    </div>

    <#include "metadata_section_select.ftl"/>

    <div class="container-fluid bg-body">
        <div class="container bd-layout main-content-container">
            <main class="bd-main">
                <div class="bd-toc mt-4 mb-5 ps-3 mb-lg-5 text-muted">
                    <#include "eml_sidebar.ftl"/>
                </div>

                <div class="bd-content">

                    <div class="my-md-3 p-3">

                        <p><@s.text name="manage.metadata.basic.required.message" /></p>

                        <div class="row g-3">
                            <div class="col-12">
                                <@input name="eml.title" requiredField=true help="i18n"/>
                            </div>
                        </div>

                        <div class="row g-3 mt-0">
                            <div class="col-lg-6">
                                <@input name="eml.shortName" help="i18n" />
                            </div>
                        </div>
                    </div>

                    <div class="my-3 p-3">
                        <div class="row g-3">
                            <div class="col-lg-6">
                                <@select name="resource.coreType" i18nkey="resource.coreType" help="i18n" options=types value="${resource.coreType!''}" requiredField=true />
                            </div>

                            <div class="col-lg-6">
                                <@select name="resource.subtype" i18nkey="resource.subtype" help="i18n" options=listSubtypes value="${resource.subtype!''}" />
                            </div>
                        </div>
                    </div>

                    <div class="my-3 p-3">
                        <div class="row g-3">
                            <div class="col-lg-6">
                                <@select name="eml.language" help="i18n" options=languages value="${languageIso3!'eng'}" requiredField=true />
                            </div>

                            <div class="col-lg-6">
                                <@select name="eml.metadataLanguage" help="i18n" options=languages value="${metadataLanguageIso3!'eng'}" requiredField=true />
                            </div>
                        </div>
                    </div>

                    <div class="my-3 p-3">
                        <div class="row g-3">
                            <!-- Intellectual Rights -->
                            <div class="col-12">
                                <@select name="eml.intellectualRights.license" i18nkey="eml.intellectualRights.license" help="i18n" options=licenses value="${licenseKeySelected!}" requiredField=true/>

                                <div id="intellectualRightsDiv" class="mt-3 p-3 fs-smaller cc_main_container">
                                    <div class="cc_logo">
                                        <@licenseLogoClass eml.intellectualRights!/>
                                    </div>

                                    <div class="cc_text">
                                        <#if eml.intellectualRights?has_content>
                                            <#if eml.intellectualRights.contains("CC-BY-NC")>
                                                <@s.text name='eml.intellectualRights.licence.ccbync'/>
                                            <#elseif eml.intellectualRights.contains("CC-BY")>
                                                <@s.text name='eml.intellectualRights.licence.ccby'/>
                                            <#elseif eml.intellectualRights.contains("CC0")>
                                                <@s.text name='eml.intellectualRights.licence.cczero'/>
                                            <#else>
                                                ${eml.intellectualRights!}
                                            </#if>
                                        </#if>
                                    </div>
                                </div>
                                <!-- internal parameter -->
                                <input id="eml.intellectualRights" name="eml.intellectualRights" type="hidden" value="${eml.intellectualRights!}" />

                                <!-- Hidden inputs storing license texts used in populating ipr textarea when a different license gets selected -->
                                <#list licenseTexts?keys as k>
                                    <input type="text" id="${k}" value="${licenseTexts[k]}" style="display: none"/>
                                </#list>

                                <div id='disclaimerRights' style='display: none'>
                                    <p class="mt-3">
                                        <@s.text name='eml.intellectualRights.license.disclaimer'/>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="my-3 p-3">
                        <!-- Descriptions, broken into one or more paragraphs -->
                        <@textinline name="eml.description" help="i18n" i18nkey="" requiredField=true/>

                        <div class="mt-3">
                            <textarea id="description-editor" name="description"></textarea>
                            <input id="description" type="hidden" name="eml.description">
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
                        <@textinline name="eml.maintenance" help="i18n"/>

                        <div class="row g-3 mt-2">
                            <div class="col-lg-6">
                                <@select name="eml.updateFrequency" i18nkey="eml.updateFrequency" help="i18n" options=frequencies value="${eml.updateFrequency.identifier!'unknown'}" requiredField=true />
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

                        <div class="row g-3 mt-0">
                            <div class="col-12">
                                <!-- Maintenance Update Frequency -->
                                <@text name="eml.updateFrequencyDescription" i18nkey="eml.updateFrequencyDescription" help="i18n" />
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>
</form>

<#include "/WEB-INF/pages/manage/eml/unsaved_changes_modal.ftl">

<#include "/WEB-INF/pages/inc/footer.ftl">
</#escape>
