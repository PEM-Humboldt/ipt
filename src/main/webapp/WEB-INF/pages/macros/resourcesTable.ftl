<#--
resourcesTable macro: Generates a data table that has searching, pagination, and sortable columns.
- shownPublicly: Whether the table will be shown publicly, or only internally to managers
- numResourcesShown: The number of resources shown in the table
- sEmptyTable: The message shown when there are no resource records in the table
- columnToSortOn: The column to sort on by default (index starting at 0)
- sortOrder: The sort order of the columnToSortOn
-->
<#macro resourcesTable resources shownPublicly numResourcesShown sEmptyTable columnToSortOn sortOrder>

    <script charset="utf-8">
        <#assign emptyString="--">
        <#assign dotDot="..">
        <#assign visibilityPrivate><@s.text name="manage.home.visible.private"/></#assign>
        <#assign visibilityPublic><@s.text name="manage.home.visible.public"/></#assign>
        <#assign visibilityDeleted><@s.text name="manage.home.visible.deleted"/></#assign>
        <#assign notRegistered><@s.text name="manage.home.not.registered"/></#assign>
        <#assign unknownOrganisation><@s.text name="manage.home.unknown.organisation"/></#assign>
        <#assign notPublished><@s.text name="portal.home.not.published"/></#assign>

        // parse a date in yyyy-mm-dd format
        function parseDate(input) {
            var parts = input.match(/(\d+)/g);
            return new Date(parts[0], parts[1] - 1, parts[2], parts[3], parts[4], parts[5]); // months are 0-based
        }

        function getSafe(object, key, defaultVal) {
            try {
                return object[key] ? object[key] : defaultVal;
            } catch (e) {
                return defaultVal;
            }
        }

        /* resources list */
        var aDataSet = [
             <#list resources as r>
            [
                "<a href='${baseURL}<#if !shownPublicly>/manage</#if>/resource?r=${r.shortname}'><if><#if r.title?has_content>${r.title?replace("\'", "\\'")?replace("\"", '\\"')}<#else>${r.shortname}</#if></a>",
                <#if r.eml.project.funding?has_content>'${r.eml.project.funding?replace("\n"," ")?replace("\"","")?replace("\'","")?replace("“","")?replace("”","")?replace("\r"," ")}'<#else>'${emptyString}'</#if>,
                <#if r.coreType?has_content && types[r.coreType?lower_case]?has_content>'${types[r.coreType?lower_case]?replace("\'", "\\'")?replace("\"", '\\"')?cap_first!}'<#else>'${emptyString}'</#if>,
                <#if r.subtype?has_content && datasetSubtypes[r.subtype?lower_case]?has_content >'${datasetSubtypes[r.subtype?lower_case]?replace("\'", "\\'")?replace("\"", '\\"')?cap_first!}'<#else>'${emptyString}'</#if>,
                '<a target="_blank" href="${baseURL}/resource?r=${r.shortname}#anchor-dataRecords">${(r.recordsPublished?c)!0}</a>',
                '${r.modified?date}',
                <#if r.published>'${(r.lastPublished?date)!}'<#else>'<@s.text name="portal.home.not.published"/>'</#if>,
                <#if r.status=='PRIVATE'>'<@s.text name="manage.home.visible.private"/>'<#elseif r.status=='DELETED'>'${deletedString}'<#else>'<@s.text name="manage.home.visible.public"/>'</#if>,
                <#if r.creator??>'${r.creator.firstname?replace("\'", "\\'")?replace("\"", '\\"')!} ${r.creator.lastname?replace("\'", "\\'")?replace("\"", '\\"')!}'<#else>'${emptyString}'</#if>,
                '${r.shortname}'
            ]
            <#if r_has_next>,</#if>
            </#list>
        ];
>>>>>>> ceiba_master

        $(document).ready(function () {
            const SEARCH_PARAM = "search";
            const SORT_PARAM = "sort";
            const ORDER_PARAM = "order";
            const PAGE_PARAM = "page";

            var columnIndexName = {
                1: "name",
                2: "organisation",
                3: "type",
                4: "subtype",
                5: "records",
                6: "lastModified",
                7: "lasPublished",
                8: "nextPublished",
                9: "visibility",
                10: "author"
            };
            var columnNameIndex = {
                "name": 1,
                "organisation": 2,
                "type": 3,
                "subtype": 4,
                "records": 5,
                "lastModified": 6,
                "lasPublished": 7,
                "nextPublished": 8,
                "visibility": 9,
                "author": 10
            };

            var urlParams = new URLSearchParams(window.location.search);
            var searchParam = urlParams.get(SEARCH_PARAM) ? urlParams.get(SEARCH_PARAM) : "";
            var sortParam = urlParams.get(SORT_PARAM) ? getSafe(columnNameIndex, urlParams.get(SORT_PARAM), 1) : ${columnToSortOn};
            var orderParam = urlParams.get(ORDER_PARAM) ? urlParams.get(ORDER_PARAM) : "${sortOrder}";
            var rawPageParam = urlParams.get(PAGE_PARAM);
            // converted from page to start param (1, 2, 3 etc. -> 0, 10, 20, 30 etc.)
            var start = rawPageParam && rawPageParam > 0 ? (urlParams.get(PAGE_PARAM) - 1) * 10 : 0;

            $.fn.dataTable.Responsive.breakpoints.push(
                { name: 'desktop',  width: Infinity },
                { name: 'tablet-l', width: 1200 },
                { name: 'tablet-p', width: 992 },
                { name: 'mobile-l', width: 768 },
                { name: 'mobile-p', width: 320 }
            );

            $('#tableContainer').html('<table  class="display dataTable resourcesTable" id="rtable"></table>');
            var dt = $('#rtable').DataTable({
                ajax: {
                    url: <#if shownPublicly>'${baseURL}/api/resources'<#else>'${baseURL}/manager-api/resources'</#if>,
                    type: 'POST'
                },
                responsive: true,
                "bProcessing": true,
                "bServerSide": true,
                "displayStart": start,
                "iDisplayLength": ${numResourcesShown},
                "bLengthChange": false,
                "oLanguage": {
                    "sEmptyTable": "<@s.text name="${sEmptyTable}"/>",
                    "sZeroRecords": "<@s.text name="dataTables.sZeroRecords.resources"/>",
                    "sInfo": "<@s.text name="dataTables.sInfo"/>",
                    "sInfoEmpty": "<@s.text name="dataTables.sInfoEmpty"/>",
                    "sInfoFiltered": "<@s.text name="dataTables.sInfoFiltered"/>",
                    "sSearch": "<@s.text name="manage.mapping.filter"/>:",
                    "oPaginate": {
                        "sNext": "<@s.text name="pager.next"/>",
                        "sPrevious": "<@s.text name="pager.previous"/>"
                    }
                },
                "aoColumns": [
<<<<<<< HEAD
                    {"sTitle": "<@s.text name="portal.home.logo"/>", "bSearchable": false, "bSortable": false, "sClass": "desktop", "bVisible": <#if shownPublicly>true<#else>false</#if>},
                    {"sTitle": "<@s.text name="manage.home.name"/>", "sClass": "all text-break"},
                    {"sTitle": "<@s.text name="manage.home.organisation"/>", "sClass": "desktop tablet-l"},
                    {"sTitle": "<@s.text name="manage.home.type"/>", "sClass": "desktop tablet-l tablet-p"},
                    {"sTitle": "<@s.text name="manage.home.subtype"/>", "sClass": "desktop"},
                    {"sTitle": "<@s.text name="portal.home.records"/>", "bSearchable": false, "sType": "number", "sClass": "text-xl-end desktop"},
                    {"sTitle": "<@s.text name="manage.home.last.modified"/>", "bSearchable": false, "sClass": "text-xl-end desktop"},
                    {"sTitle": "<@s.text name="manage.home.last.publication" />", "bSearchable": false, orderSequence: ["desc", "asc"], "sClass": "text-xl-end desktop tablet-l tablet-p"},
                    {"sTitle": "<@s.text name="manage.home.next.publication" />", "bSearchable": false, "sClass": "text-xl-end desktop"},
                    {"sTitle": "<@s.text name="manage.home.visible"/>", "bSearchable": false, "sClass": "desktop tablet-l", "bVisible": <#if shownPublicly>false<#else>true</#if>},
                    {"sTitle": "<@s.text name="portal.home.author"/>", "sClass": "desktop tablet-l", "bVisible": <#if shownPublicly>false<#else>true</#if>},
                    {"sTitle": "<@s.text name="resource.shortname"/>", "bVisible": false},
                    {"sTitle": "<@s.text name="portal.resource.summary.keywords"/>", "bVisible": false}
                ],
                "aaSorting": [[sortParam, orderParam]],
                "aoColumnDefs": [
                    {'bSortable': false, 'aTargets': [0]}
                ],
                "oSearch": {"sSearch": searchParam},
                "fnInitComplete": function(oSettings) {
                    /* Next published date should never be before today's date, otherwise auto-publication must have failed.
                       In this case, highlight the row to bring the problem to the resource manager's attention. */
                    var today = new Date();
                    for ( var i=0, iLen=oSettings.aoData.length ; i<iLen ; i++ ) {
                        // warning fragile: index 8 must always equal next published date on both home page and manage page
                        var nextPublishedDate = (oSettings.aoData[i]._aData[8] == '${emptyString}') ? today : parseDate(oSettings.aoData[i]._aData[8]);
                        if (today > nextPublishedDate) {
                            oSettings.aoData[i].nTr.className += " text-gbif-danger";
                        }
                        // warning fragile: index 9 must always equal visibility (only on manage page)
                        var visibility = oSettings.aoData[i]._aData[9];
                        if (visibility && visibility.toLowerCase() == '${deletedString?lower_case}') {
                            oSettings.aoData[i].nTr.className += " text-gbif-danger";
                        }

                        // Set tooltips
                        $('#rtable thead th').each( function() {
                            var	sTitle,
                                sColumnTitle = this.textContent;

                            if ( sColumnTitle == "<@s.text name="manage.home.name" />" )
                                sTitle = "<@s.text name="manage.home.name.title" />";
                            else if (sColumnTitle == "<@s.text name="manage.home.organisation" />")
                                sTitle = "<@s.text name="manage.home.organisation.title" />";
                            else if (sColumnTitle == "<@s.text name="manage.home.type" />")
                                sTitle = "<@s.text name="manage.home.type.title" />";
                            else if (sColumnTitle == "<@s.text name="manage.home.subtype" />")
                                sTitle = "<@s.text name="manage.home.subtype.title" />";
                            else if (sColumnTitle == "<@s.text name="portal.home.records" />")
                                sTitle = "<@s.text name="portal.home.records.title" />";
                            else if (sColumnTitle == "<@s.text name="manage.home.last.modified" />")
                                sTitle = "<@s.text name="manage.home.last.modified.title" />";
                            else if (sColumnTitle == "<@s.text name="manage.home.last.publication" />")
                                sTitle = "<@s.text name="manage.home.last.publication.title" />";
                            else if (sColumnTitle == "<@s.text name="manage.home.visible" />")
	        	                sTitle = "<@s.text name="manage.home.visible.title" />";
	                        else if (sColumnTitle == "<@s.text name="portal.home.author" />")
	        	                sTitle = "<@s.text name="portal.home.author.title" />";
                            this.setAttribute( 'title', sTitle );
                        } );
                        // TODO: Define title for the other fields

                        // Set tooltip to filter text field
                        $('#rtable_filter input')[0].setAttribute('title', "<@s.text name="manage.mapping.filter.title" />");

                        // Tooltip initialization
                        $('#rtable, #rtable_filter input').tooltip( {
                            "delay": 100,
                            "track": true,
                            "fade": 250,
                            position: {
                                my: "center bottom-20",
                                at: "center top"
                            }
                        } );

                    }
>>>>>>> ceiba_master
                }
            });

            // display page parameter in the URL
            $(document).on("click", "a.paginate_button", function (e) {
                var page = dt.page() + 1;
                var params = new URLSearchParams(window.location.search);
                page !== 0 ? params.set(PAGE_PARAM, page) : params.delete(PAGE_PARAM);
                var newurl = window.location.protocol + "//" + window.location.host + window.location.pathname + '?' + params.toString();
                window.history.pushState({path: newurl}, '', newurl);
            });

            // display search and sort parameters in the URL
            dt.on('search.dt', function () {
                if (history.pushState) {
                    var searchValue = dt.search();
                    var sortFieldIndex = dt.order()[0][0];
                    var sortFieldOrder = dt.order()[0][1];
                    var params = new URLSearchParams(window.location.search);
                    var page = params.get(PAGE_PARAM);

                    // reset page param
                    if (page) {
                        params.set(PAGE_PARAM, 1);
                    }
                    searchValue ? params.set(SEARCH_PARAM, searchValue) : params.delete(SEARCH_PARAM);
                    params.set(SORT_PARAM, getSafe(columnIndexName, sortFieldIndex, "name"));
                    params.set(ORDER_PARAM, sortFieldOrder);

                    var newurl = window.location.protocol + "//" + window.location.host + window.location.pathname + '?' + params.toString();
                    window.history.pushState({path: newurl}, '', newurl);
                }
            });
        });
    </script>
</#macro>
