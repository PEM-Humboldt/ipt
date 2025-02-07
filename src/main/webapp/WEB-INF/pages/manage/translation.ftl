<#-- @ftlvariable name="" type="org.gbif.ipt.action.manage.TranslationAction" -->
<#escape x as x?html>
    <#include "/WEB-INF/pages/inc/header.ftl">
    <title><@s.text name="manage.translation.title"/></title>
    <script src="${baseURL}/js/jconfirmation.jquery.js"></script>

    <script>
        $(document).ready(function(){
            $('.confirm').jConfirmAction({titleQuestion : "<@s.text name="basic.confirm"/>", yesAnswer : "<@s.text name="basic.yes"/>", cancelAnswer : "<@s.text name="basic.no"/>", buttonType: "danger"});
            $("table input").focus(function() {
                $(this).parent().parent().addClass("highlight");
            });
            $("table input").blur(function() {
                $(this).parent().parent().removeClass("highlight")
            });
            //Hack needed for Internet Explorer X.*x
            $('.reload').each(function() {
                $(this).click(function() {
                    window.location = $(this).parent('a').attr('href');
                });
            });
            $('.automap').each(function() {
                $(this).click(function() {
                    window.location = $(this).parent('a').attr('href');
                });
            });
            $('.cancel').each(function() {
                $(this).click(function() {
                    window.location = $(this).parent('a').attr('href');
                });
            });
            // end hack
            <#-- use vocabulary -->
            <#if (vocabTerms?size>0)>
            var vocab = [<#list vocabTerms?keys as code>{"value":"${code?replace('"','\"')}","label":"${vocabTerms[code]}"},</#list>];
            $("#translation input").autocomplete({
                source: vocab
            })
            </#if>
        });
    </script>
    <#assign currentMenu = "manage"/>
    <#include "/WEB-INF/pages/inc/menu.ftl">
    <#include "/WEB-INF/pages/macros/forms.ftl"/>
    <#include "/WEB-INF/pages/macros/manage/translation_buttons.ftl"/>

<main class="container">
    <form class="topForm" action="translation.do" method="post">
        <div class="my-3 p-3 bg-body rounded shadow-sm">

            <#include "/WEB-INF/pages/inc/action_alerts.ftl">

            <h5 class="border-bottom pb-2 mb-2 mx-md-4 mx-2 pt-2 text-gbif-header fw-400 text-center">
                <@s.text name="manage.translation.title"/>
            </h5>

            <p class="mx-md-4 mx-2"><@s.text name="manage.translation.intro"/></p>
        </div>

        <div class="my-3 p-3 bg-body rounded shadow-sm">
            <h5 class="border-bottom pb-2 mb-2 mx-md-4 mx-2 pt-2 text-gbif-header fw-400">
                <@s.text name="manage.translation.property"/> <em>${property.name}</em>
            </h5>

            <p class="mx-md-4 mx-2">&quot;${property.description!}&quot;</p>

            <#if property.vocabulary?has_content>
                <p class="mx-md-4 mx-2">
                    <strong><@s.text name="manage.translation.vocabulary.required"/></strong>:
                    <@s.text name="manage.translation.vocabulary.required.intro"/>
                </p>
                <p class="mx-md-4 mx-2">
                    <em>${property.vocabulary.title!property.vocabulary.uriString}</em>:
                    <a href="vocabulary.do?id=${property.vocabulary.uriString}" class="no-text-decoration" target="_blank">
                        <i class="bi bi-book"></i>
                    </a>
                    &quot;${property.vocabulary.description!}&quot;
                </p>
            </#if>

            <!-- buttons loaded from macro -->
            <@buttons/>
        </div>

        <div class="my-3 p-3 bg-body rounded shadow-sm">
            <input type="hidden" name="r" value="${resource.shortname}"/>
            <input type="hidden" name="rowtype" value="${property.extension.rowType}"/>
            <input type="hidden" name="mid" value="${mid}"/>
            <input type="hidden" name="term" value="${property.qualname}"/>

            <div class="mx-md-4 mx-2 table-responsive">
                <table id="translation" class="simple table">
                <colgroup>
                    <col width="400">
                    <!-- do not show column if term does not relate to vocabulary -->
                    <#if (vocabTerms?size>0)>
                        <col width="16">
                    </#if>
                    <col width="400">
                </colgroup>
                <tr>
                    <th><@s.text name="manage.translation.source.value"/></th>
                    <!-- do not show column if term does not relate to vocabulary -->
                    <#if (vocabTerms?size>0)>
                        <th></th>
                    </#if>
                    <th><@s.text name="manage.translation.translated.value"/></th>
                </tr>
                <#list sourceValuesMap?keys as k>
                    <tr>
                        <td>${sourceValuesMap.get(k)!}</td>
                        <!-- do not show column if term does not relate to vocabulary -->
                        <#if (vocabTerms?size>0)>
                            <td>
                                <#if vocabTerms[tmap.get(k)!k]??>
                                    <i class="bi bi-check-circle text-gbif-primary"></i>
                                <#else>
                                    <i class="bi bi-exclamation-circle text-gbif-danger"></i>
                                </#if>
                            </td>
                        </#if>
                        <td>
                            <input type="text" class="form-control" name="tmap['${k}']" value="${tmap.get(k)!}"/>
                        </td>
                    </tr>
                </#list>
            </table>
            </div>

            <!-- buttons loaded from macro -->
            <@buttons />
        </div>
    </form>

</main>

    <#include "/WEB-INF/pages/inc/footer.ftl">
</#escape>
