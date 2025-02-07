<#escape x as x?html>
    <#include "/WEB-INF/pages/inc/header.ftl">
    <title><@s.text name='manage.autopublish.title'/></title>

    <#assign currentMenu = "manage"/>
    <#include "/WEB-INF/pages/inc/menu.ftl">
    <#include "/WEB-INF/pages/macros/forms.ftl"/>
    <#include "/WEB-INF/pages/macros/popover.ftl"/>

    <script>
        $(document).ready(function() {
            // on select of publishing frequency set parameters for publishing frequency
            $('#updateFrequency').change(function () {
                var str = "";
                $("#updateFrequency option:selected").each(function () {
                    str += $(this).val();
                });

                $('#introAnnually').hide();
                $('#introBiAnnually').hide();
                $('#introMonthly').hide();
                $('#introWeekly').hide();
                $('#introDaily').hide();
                $('#introOff').hide();
                $('#helpAnnually').hide();
                $('#helpBiAnnually').hide();
                $('#helpMonthly').hide();
                $('#helpWeekly').hide();
                $('#frequencyDetailsEvery').hide();
                $('#frequencyDetailsAt').hide();
                $('#updateFrequencyMonthWrapper').hide();
                $('#updateFrequencyBiMonthWrapper').hide();
                $('#updateFrequencyDayWrapper').hide();
                $('#updateFrequencyDayOfWeekWrapper').hide();

                if (str === "annually") {
                    $('#introAnnually').show();
                    $('#helpAnnually').show();
                    $('#frequencyDetailsEvery').show();
                    $('#updateFrequencyMonthWrapper').show();
                    $('#updateFrequencyDayWrapper').show();
                    $('#frequencyDetailsAt').show();
                } else if (str === "biannually") {
                    $('#introBiAnnually').show();
                    $('#helpBiAnnually').show();
                    $('#frequencyDetailsEvery').show();
                    $('#updateFrequencyBiMonthWrapper').show();
                    $('#updateFrequencyDayWrapper').show();
                    $('#frequencyDetailsAt').show();
                } else if (str === "monthly") {
                    $('#introMonthly').show();
                    $('#helpMonthly').show();
                    $('#frequencyDetailsEvery').show();
                    $('#updateFrequencyDayWrapper').show();
                    $('#frequencyDetailsAt').show();
                } else if (str === "weekly") {
                    $('#introWeekly').show();
                    $('#helpWeekly').show();
                    $('#frequencyDetailsEvery').show();
                    $('#updateFrequencyDayOfWeekWrapper').show();
                    $('#frequencyDetailsAt').show();
                } else if (str === "daily") {
                    $('#introDaily').show();
                    $('#frequencyDetailsAt').show();
                } else {
                    $('#introOff').show();
                }

            }).change();

        });

    </script>

    <main class="container">
        <div class="my-3 p-3 bg-body rounded shadow-sm">
            <#include "/WEB-INF/pages/inc/action_alerts.ftl">

            <h5 class="border-bottom pb-2 mb-2 mx-md-4 mx-2 pt-2 text-gbif-header fw-400 text-center">
                <@s.text name='manage.autopublish.title'/>
            </h5>

            <p class="mx-md-4 mx-2"><@s.text name='manage.autopublish.intro'/></p>

            <form class="topForm" action="auto-publish.do" method="post">
                <#if resource.isDeprecatedAutoPublishingConfiguration()>
                    <ul class="fielderror">
                        <li><span><@s.text name='manage.overview.autopublish.deprecated.warning.description'/></span></li>
                    </ul>
                    <br/>
                </#if>
                <input type="hidden" name="r" value="${resource.shortname}" />

                <#-- Auto-publishing frequency-->
                <#assign updateFrequency="">
                <#if resource.updateFrequency??>
                    <#assign updateFrequency=resource.updateFrequency.identifier>
                </#if>
                <#-- Auto-publishing day-->
                <#assign updateFrequencyDay="">
                <#if resource.updateFrequencyDay??>
                    <#assign updateFrequencyDay=resource.updateFrequencyDay>
                </#if>
                <#-- Auto-publishing month-->
                <#assign updateFrequencyMonth="">
                <#if resource.updateFrequencyMonth??>
                    <#assign updateFrequencyMonth=resource.updateFrequencyMonth.identifier>
                </#if>
                <#-- Auto-publishing biMonth-->
                <#assign updateFrequencyBiMonth="">
                <#if resource.updateFrequencyBiMonth??>
                    <#assign updateFrequencyBiMonth=resource.updateFrequencyBiMonth.identifier>
                </#if>
                <#-- Auto-publishing dayOfWeek-->
                <#assign updateFrequencyDayOfWeek="">
                <#if resource.updateFrequencyDayOfWeek??>
                    <#assign updateFrequencyDayOfWeek=resource.updateFrequencyDayOfWeek.identifier>
                </#if>
                <#-- Auto-publishing hour-->
                <#assign updateFrequencyHour="">
                <#if resource.updateFrequencyHour??>
                    <#assign updateFrequencyHour=resource.updateFrequencyHour>
                </#if>
                <#-- Auto-publishing minute-->
                <#assign updateFrequencyMinute="">
                <#if resource.updateFrequencyMinute??>
                    <#assign updateFrequencyMinute=resource.updateFrequencyMinute>
                </#if>

                <div class="row mx-md-3 mx-1">
                    <div class="form-group col-md-6 col-lg-4 px-1">
                        <label for="updateFrequency" class="form-label">
                            <@s.text name="manage.autopublish.frequency"/>
                        </label>
                        <select id="updateFrequency" class="form-select" name="updateFrequency" size="1">
                            <#list frequencies?keys as val>
                                <option value="${val}" <#if (updateFrequency!"")==val> selected="selected"</#if>>
                                    <@s.text name="${frequencies.get(val)}"/>
                                </option>
                            </#list>
                        </select>
                    </div>
                </div>

                <p id="introAnnually" class="mx-md-4 mx-2">
                    <br/>
                    <@s.text name="manage.autopublish.intro.annually"/>
                </p>
                <p id="introDaily" class="mx-md-4 mx-2">
                    <br/>
                    <@s.text name="manage.autopublish.intro.daily"/>
                </p>
                <p id="introBiAnnually" class="mx-md-4 mx-2">
                    <br/>
                    <@s.text name="manage.autopublish.intro.biannually"/>
                </p>
                <p id="introMonthly" class="mx-md-4 mx-2">
                    <br/>
                    <@s.text name="manage.autopublish.intro.monthly"/>
                </p>
                <p id="introWeekly" class="mx-md-4 mx-2">
                    <br/>
                    <@s.text name="manage.autopublish.intro.weekly"/>
                </p>
                <p id="introOff" class="mx-md-4 mx-2">
                    <br/>
                    <@s.text name="manage.autopublish.intro.off"/>
                </p>


                <div id="frequencyDetails" class="mt-2">
                    <div id="frequencyDetailsEvery">
                        <div id="helpWeekly" class="mx-md-4 mx-2 mb-2">
                            <@popoverPropertyInfo "manage.autopublish.help.weekly"/> <@s.text name="manage.autopublish.every"/>
                        </div>

                        <div id="helpMonthly" class="mx-md-4 mx-2 mb-2">
                            <@popoverPropertyInfo "manage.autopublish.help.monthly"/> <@s.text name="manage.autopublish.every"/>
                        </div>

                        <div id="helpBiAnnually" class="mx-md-4 mx-2 mb-2">
                            <@popoverPropertyInfo "manage.autopublish.help.biannually"/> <@s.text name="manage.autopublish.every"/>
                        </div>

                        <div id="helpAnnually" class="mx-md-4 mx-2 mb-2">
                            <@popoverPropertyInfo "manage.autopublish.help.annually"/> <@s.text name="manage.autopublish.every"/>
                        </div>

                        <div class="row mx-md-3 mx-1">
                            <div id="updateFrequencyDayOfWeekWrapper" class="col-md-2 px-1">
                                <select id="updateFrequencyDayOfWeek" class="form-select" name="updateFrequencyDayOfWeek" size="1">
                                    <#list daysOfWeek?keys as val>
                                        <option value="${val}" <#if (updateFrequencyDayOfWeek!"")==val> selected="selected"</#if>>
                                            <@s.text name="${daysOfWeek.get(val)}"/>
                                        </option>
                                    </#list>
                                </select>
                            </div>

                            <div id="updateFrequencyDayWrapper" class="col-md-3 col-lg-2 px-1">
                                <#-- Day: 1, 2, 3, ...-->
                                <select id="updateFrequencyDay" class="form-select" name="updateFrequencyDay" size="1">
                                    <#list days?keys as val>
                                        <option value="${val}" <#if (updateFrequencyDay!"")?string==val?string> selected="selected"</#if>>
                                            <@s.text name="${days.get(val)}"/>
                                        </option>
                                    </#list>
                                </select>
                            </div>

                            <div id="updateFrequencyMonthWrapper" class="col-md-3 col-lg-2 px-1">
                                <#-- Day: January, February, ... -->
                                <select id="updateFrequencyMonth" class="form-select" name="updateFrequencyMonth" size="1">
                                    <#list months?keys as val>
                                        <option value="${val}" <#if (updateFrequencyMonth!"")==val> selected="selected"</#if>>
                                            <@s.text name="${months.get(val)}"/>
                                        </option>
                                    </#list>
                                </select>
                            </div>

                            <div id="updateFrequencyBiMonthWrapper" class="col-md-3 col-lg-2 px-1">
                                <#-- BiMonth: January/July, February/August, ... -->
                                <select id="updateFrequencyBiMonth" class="form-select" name="updateFrequencyBiMonth" size="1">
                                    <#list biMonths?keys as val>
                                        <option value="${val}" <#if (updateFrequencyBiMonth!"")==val> selected="selected"</#if>>
                                            <@s.text name="${biMonths.get(val)}"/>
                                        </option>
                                    </#list>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div id="frequencyDetailsAt" class="mt-2">
                        <div class="mx-md-4 mx-2 mb-2">
                            <@popoverPropertyInfo "manage.autopublish.help.hour"/> <@s.text name="manage.autopublish.at"/>
                        </div>
                        <div class="row mx-md-3 mx-1">
                            <div class="col-6 col-sm-6 col-md-3 col-lg-2 px-1">
                                <select id="updateFrequencyHour" class="form-select" name="updateFrequencyHour" size="1">
                                    <#list hours?keys as val>
                                        <option value="${val}" <#if (updateFrequencyHour!"")?string==val?string> selected="selected"</#if>>
                                            <@s.text name="${hours.get(val)}"/>
                                        </option>
                                    </#list>
                                </select>
                            </div>
                            <div class="col-6 col-sm-6 col-md-3 col-lg-2 px-1">
                                <select id="updateFrequencyMinute" class="form-select" name="updateFrequencyMinute" size="1">
                                    <#list minutes?keys as val>
                                        <option value="${val}" <#if (updateFrequencyMinute!"")?string==val?string> selected="selected"</#if>>
                                            <@s.text name="${minutes.get(val)}"/>
                                        </option>
                                    </#list>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col-12 mx-md-3 px-3">
                        <@s.submit cssClass="btn btn-outline-gbif-primary" name="save" key="button.save"/>
                        <@s.submit cssClass="btn btn-outline-secondary" name="cancel"  key="button.cancel"/>
                    </div>
                </div>

            </form>

        </div>
    </main>

    <#include "/WEB-INF/pages/inc/footer.ftl">
</#escape>
