# The IPT User Manual – Manage Resources Menu

This is a section of the main [[IPT Manual|IPT2ManualNotes.wiki]]

# Table of Contents
+ [[Manage Resources Menu|IPT2ManualManageResources.wiki#manage-resources-menu]]
  + [[Manage Resources Table|IPT2ManualManageResources.wiki#manage-resources-table]]
  + [[Create a New Resource|IPT2ManualManageResources.wiki#create-a-new-resource]]
    + [[Upload a Darwin Core Archive|IPT2ManualManageResources.wiki#upload-a-darwin-core-archive]]
    + [[Upload a zipped IPT resource configuration folder|IPT2ManualManageResources.wiki#upload-a-zipped-ipt-resource-configuration-folder]]
    + [[Upload a metadata file|IPT2ManualManageResources.wiki#upload-a-metadata-file]]
  + [[Edit an existing resource|IPT2ManualManageResources.wiki#edit-an-existing-resource]]
  + [[Resource Overview|IPT2ManualManageResources.wiki#resource-overview]]
    + [[Source Data|IPT2ManualManageResources.wiki#source-data]]
      + [[File as data source|IPT2ManualManageResources.wiki#file-as-data-source]]
      + [[Database as data source|IPT2ManualManageResources.wiki#database-as-data-source]]
    + [[Darwin Core Mappings|IPT2ManualManageResources.wiki#darwin-core-mappings]]
      + [[Data Source selection page|IPT2ManualManageResources.wiki#data-source-selection-page]]
      + [[Data Mapping detail page|IPT2ManualManageResources.wiki#data-mapping-detail-page]]
      + [[Value Translation page|IPT2ManualManageResources.wiki#value-translation-page]]
      + [[Vocabulary Detail page|IPT2ManualManageResources.wiki#vocabulary-detail-page]]
    + [[Metadata|IPT2ManualManageResources.wiki#metadata]]
      + [[Basic Metadata|IPT2ManualManageResources.wiki#basic-metadata]]
      + [[Geographic Coverage|IPT2ManualManageResources.wiki#geographic-coverage]]
      + [[Taxonomic Coverage|IPT2ManualManageResources.wiki#taxonomic-coverage]]
      + [[Temporal Coverage|IPT2ManualManageResources.wiki#temporal-coverage]]
      + [[Keywords|IPT2ManualManageResources.wiki#keywords]]
      + [[Associated Parties|IPT2ManualManageResources.wiki#associated-parties]]
      + [[Project Data|IPT2ManualManageResources.wiki#project-data]]
      + [[Sampling Methods|IPT2ManualManageResources.wiki#sampling-methods]]
      + [[Citations|IPT2ManualManageResources.wiki#citations]]
      + [[Collection Data|IPT2ManualManageResources.wiki#collection-data]]
      + [[External Links|IPT2ManualManageResources.wiki#external-links]]
      + [[Additional Metadata|IPT2ManualManageResources.wiki#additional-metadata]]
    + [[Published Versions|IPT2ManualManageResources.wiki#published-versions]]
    + [[Visibility|IPT2ManualManageResources.wiki#visibility]]
    + [[Migrate a Resource|IPT2ManualManageResources.wiki#migrate-a-resource]]
    + [[Resource Managers|IPT2ManualManageResources.wiki#resource-managers]]
    + [[Delete a Resource|IPT2ManualManageResources.wiki#delete-a-resource]]

## Manage Resources Menu

This menu is visible to users with an Admin or Manager role.

This page allows users having the appropriate role (managers and administrators) to make changes to existing resources or to create new resources.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v233/IPTManageResources.png' />

### Manage Resources Table
When the Manage Resources page is first opened, it shows a table of existing resources that the current user has permission to change, including those created by this user and those that this user has been invited to manage by others. Refer to the information under the [[Public Resources Table|IPT2ManualNotes.wiki#public-resources-table]] section for detailed explanations of the Name, Organisation, Type, Subtype, Records, Last Modified, Last publication, and Next publication columns. In addition, the Manage Resources Table includes the following column of basic information about the resources:
* **Visibility** - a category stating who has access to view the resource. If the resource is "Public", all users will be able to see it on the [[Public Resources Table|IPT2ManualNotes.wiki#public-resources-table]] on the Home page. If the resource is "Private", it will be visible in the Manage Resources table only to the user who created it, to those who have been invited to manage it, and to users having the Admin role. Details about inviting others to manage a resource are given in the "Resource Managers" section under the "Resource Overview" heading in the "Manage Resources" section.
* **Author** - the IPT user who created the resource.

### Create a New Resource
Below the Manage Resource table is a form that can be used to create a new resource. First, a unique "shortname" must be provided for the resource. This short name will be used to uniquely identify the resource within the IPT instance, and will be used within the URL to access the resource via the Internet. The shortname must be at least three characters in length, may contain alphanumeric characters, but must not contain white space or punctuation other than hyphens or underscores (e.g., "firstresource" or "first_resource", but not "first resource" or "firstresource!"). Second, an optional resource type can be provided. Please note that when an optional archived resource is loaded (see below) the type will be determined automatically and overwrite this selection. Third, an optional archived resource can be uploaded. The following sections describe the 3 different types of archived resources from which a new resource can be derived: [[Darwin Core Archive|IPT2ManualNotes.wiki#upload-a-darwin-core-archive]], [[zipped (.zip) IPT resource configuration folder|IPT2ManualNotes.wiki#upload-a-zipped-ipt-resource-configuration-folder]], [[metadata file|IPT2ManualNotes.wiki#upload-a-metadata-file]].

Of course, you can always just _create an entirely new resource_ without loading an existing archived resource. With this option the resource configuration will have to be created in its entirety through the IPT forms, including uploading source data files (or connecting to a database) and mapping the fields therein to terms in the appropriate extension or extensions. **Please note the IPT has a 100MB file upload limit**, however, there is **no limit to the size of Darwin Core Archive the IPT can export/publish**. Refer to the [[File upload|IPT2ManualNotes.wiki#file-upload]] section to find out how to work around the file upload limit.

Begin by entering a new resource shortname as described above, and then click on the button labeled "Create". This will open the Resource Overview page. Proceed by completing the various sections of the manage resource page based on the descriptions under the "Resource Overview" heading of the "Manage Resources Menu" section.

#### Upload a Darwin Core Archive
The IPT is able to import valid Darwin Core Archive files up to 100MB in size. Information about Darwin Core Archives can be found on the Darwin Core web site (<a href='http://rs.tdwg.org/dwc/terms/guides/text/'>http://rs.tdwg.org/dwc/terms/guides/text/</a>), with further information about the IPT's use of them [[here|DarwinCore.wiki]]. To import a Darwin Core Archive, click on the button labeled "Choose File", then navigate to and select the intended archive file. After selecting the file, its name will appear next to the "Choose File" button.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceUploadDwcA.png' />

Click on the button labeled "Create". If there is a problem importing the selected file, an error message will alert the user. If the import is successful, a Resource Overview page will appear with an informational message at the top describing the results of the import process.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceUploadDwCASuccess.png' />

#### Upload a zipped IPT resource configuration folder
It is possible to create a copy of a resource from its zipped IPT resource configuration folder. The only condition is that the resource must have been created under a compatible version of the IPT. Effectively, this will copy all the resource's metadata, source data, and mappings. It will **not** copy the resource's registration information, version history, DOI(s), version number, managers, publication status, created date, last publication date, or even preserve the resource short name.

To do so, just follow these instructions:

1. Locate the resource configuration folder corresponding to the resource you want to copy. The resource configuration folders are stored inside the $data-directory/resources folder, and named using the resource short name. For example, if the resource had short name "ants", it would be found at $data-directory/resources/ants.
2. Zip (compress) the resource configuration folder: ants/ -> ants.zip
3. On the "Create a New Resource" section on the "Manage Resource Menu" page:
  1. Enter a new resource short name. You can preserve the zipped resource's short name, provided it doesn't already exist in your IPT.
  2. Click on the button labeled "Choose File", then navigate to and select the intended zipped resource configuration folder.
  3. After selecting the file, its name will appear next to the "Choose File" button. Click on the button labeled "Create". If there is a problem importing the selected file, an error message will alert the user. If the import is successful, a Resource Overview page will appear with the resource metadata, source data, and mappings all copied from the zipped resource into the new resource.

#### Upload a metadata file
The IPT is able to import and export valid dataset metadata files that conform to the GBIF Metadata Profile. Information about the GBIF EML Metadata Profile can be found in the <a href='http://www.gbif.org/orc/?doc_id=2820'>GBIF Metadata Profile Reference Guide</a>. Information about how to author a metadata document conforming to the GBIF Metadata Profile Darwin Core can be found in the <a href='http://www.gbif.org/orc/?doc_id=2821'>GBIF Metadata Profile How To Guide</a>. To import a metadata file, select the resource type "metadata-only", then click on the button labeled "Choose File", navigate to and select the intended metadata file. After selecting the file, its name will appear next to the "Choose File" button.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceUploadEml.png' />

Click on the button labeled "Create". If there is a problem importing the selected file, an error message will alert the user. If the import is successful, a Resource Overview page will appear with the metadata having been populated. The source data and mapping sections will remain hidden since this is a metadata-only resource. Should you decide to add primary dataset at a later time, just change the resource type in the [[Basic Metadata|IPT2ManualNotes.wiki#basic-metadata]] page of the metadata.

### Edit an existing resource
The table of existing resources shows only those resources that can be edited by the current user. To edit a resource, click on the name of the resource in the table of resources. The link will open the Resource Overview page for the selected resource. Refer to the descriptions under the "Resource Overview" heading of the "Manage Resources Menu" section for details on how to edit various aspects of the resource.

### Resource Overview
This page allows users having managerial permission to make changes to various aspects of a resource's configuration. The name of the resource is given at the top of the page under the menu bar. If the resource has not been given a title, the resource shortname will appear at the top of the page and will act as a title instead. Below the resource name is a table showing categories of the resource configuration on the left with corresponding sections to the right. Information icons throughout the table can help guide managers in using each category. Each of these categories is configured separately as explained in detail in the following sections.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceOverview.png' />

#### Source Data
This area of the Resource Overview page allows a user to import primary data from files or databases into the IPT. If a resource has no source data it is considered a metadata-only resource, with information about a data set or collection, but without any primary data. It is possible to connect a resource to more than one data source if the sources are related to each other. More about relating multiple data sources is explained in the <a href='http://rs.tdwg.org/dwc/terms/guides/text/index.htm#implement'>Implementation Guide</a> section of the Darwin Core Text Guide.  Following are explanations for the preliminary step of choosing the source data either from text files or from database sources:

##### File as data source
The IPT can import uncompressed delimited text files (csv, tab, and files using any other delimiter) or equivalent files compressed with zip or gzip. Excel files are also supported. Click on the button labeled "Choose File" to navigate to and select the file to import. The file name can only be composed of alphanumeric characters (A-Z, 0-9), white space, underscores, periods, parentheses, and hyphens. After selecting the file, its name will appear to the right of the "Choose File" button.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceSourceData.png' />

Click on the button labeled "Clear" to remove the choice of selected file and return to the previous state before any data source was selected. Or, click on the button labeled "Add" to open the Source Data File detail page (if there is the risk of overwriting a file with the same name, a dialog opens that asks the user to confirm they actually want to overwrite it). **Warning**: if the IPT detects the number of columns in a mapped data source has changed when overwriting it, the user is warned that they should update its mappings. This page shows the name of the resource along with a summary of the file characteristics (readability, number of columns detected, absolute path to the file, the file size, the number of rows detected, and the date the file was last loaded into the IPT). The Source Data File detail page allows the user to view and edit the parameters that describe the content of the selected file, and to use these settings to analyze and preview the file.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v23/IPTManageResourceSourceDataFormat.png' />

* **Source Name** - the name of the file selected, without the file extension.
**Readable** - this icon indicates whether data are accessible using the file format information provided on this page.
* **Columns** - the number of columns in the dataset as configured using the parameters on this page.
* **File** - the full path to the location of the file to use as the data source.
* **Size** - the file size.
* **Rows** - the number of rows found in the data file. (Note: This number helps check if all records are identified.)
* **Modified** - the date stamp of the file indicating when it was last saved.
* **Source log** - this link downloads the file containing the log produced when processing the file using the information contained on this page. Any problems encountered while processing the file, such as missing data and unexpected formatting will be in this log file.
* **Analyze** - click on this button to generate a data summary based on the database connection settings on this page. The analysis will indicate whether the database is readable, and if so, how many columns there are in the results of the SQL Statement.
* **Preview** <img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/preview.png' /> - click on this button to see an interpretation of the data based on the database connection settings on this page.
* **Number of Header Rows** - 0 if the file does not contain a row of column names, 1 if the file does contain a header row.
* **Field Delimiter** - the character or characters that signify a break between columns of data.
* **Character Encoding** - the system that defines byte-wise definitions of the characters in the data (e.g., ISO 8859-5 refers to the Cyrillic alphabet).
* **Field Quotes** - a single character (or none) that is used to enclose the contents of a column in the data (e.g., ' or "). Please note this will not properly enclose columns whose content includes newline characters (\n) or carriage returns (\r).
* **Multi-value Delimiter** - a single character that delimits the values in a multi-value field (e.g., | or ;).
* **Date Format** - a code describing the format of fields having a date data type (e.g., YYYY-MM-DD for four-digit year, two-digit month, and two-digit day separated by dashes).
* **Selected Worksheet** - (Excel files only) this drop down lists the names of all worksheets in the Excel file/workbook. Only 1 worksheet can be used as the data source, defaulting to the first worksheet.

After the parameters for the data source have been set so that the file is interpreted correctly, click on the button labeled "Save" to store this configuration. If the save is successful, the Resource Overview page will appear, with summary information about the file in the right-hand column of the Source Data area. A button labeled "Edit" will also appear with the source data file summary information in the right-hand column, allowing the user to reopen the Source Data File detail page.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceSourceSummary.png' />

Should the user want to delete this source, they can reopen the Source Data File detail page and press the "Delete source file" button. Be aware though, that any mappings associated to this file will also be deleted.

If the source data are contained in multiple text files, the process described in this section can be repeated for each of the files to import. A zipped folder with multiple text files can also be imported to add multiple source files in one go.

##### Database as data source
The IPT can use database connections to import data from tables or views. A list of supported database connections is given on the [[Supported Databases|IPT2DatabaseConnection.wiki]] page of the IPT Project wiki. To configure a database as a data source, click on the button labeled "Connect to DB" in the left-hand column of the Source Data area of the Resource Overview page. This will open a Source Database detail page.

The Source Database Detail page shows the name of the resource along with a summary of the database characteristics (readability, number of columns detected) and allows the user to view and edit the parameters that describe how to access the data from the database, and to use these settings to analyze and preview the data. **Warning**: if the IPT detects the number of columns in a mapped data source has changed when editing it, the user is warned that they should update its mappings.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v23/IPTManageResourceSourceDatabase.png' />

* **Source Name** - the name of the data source. Unlike a file data source, this can be edited and given any name by the user.
* **Readable** - this icon indicates whether data are accessible using the connection information provided on this page.
* **Columns** - the number of columns in the dataset as configured using the parameters on this page.
* **Analyze** - click on this button to generate a data summary based on the database connection settings on this page. The analysis will indicate whether the database is readable, and if so, how many columns there are in the results of the SQL Statement.
* **Preview** <img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/preview.png' /> - click on this button to see an interpretation of the data based on the database connection settings on this page.
* **Database System** - the relational database management system to which the IPT must connect to retrieve the data.
Host - The database server address, optionally including the non-default port number (e.g., localhost or mysql.gbif.org:1336). For ODBC connections, this is not needed.
* **Database** - The name of the database in the database management system, or the DSN for an ODBC connection.
* **Database User** - the name of the database user to use when connecting to the database.
* **Database Password** - the password for the database user to connect to the database.
* **SQL Statement** - The Structured Query Language statement used to read data from the source database. The statement will be sent as-is to the configured database, so you can use any native feature of the database such as functions, group by statements, limits, or unions, if supported. Example:<code>`SELECT * from specimen join taxon on taxon_fk=taxon.id`</code>. While testing a large data source it is a good idea to include the appropriate language in the SELECT statement to limit the number of rows returned by the query - for example, in MySQL, <code>`SELECT * from specimen join taxon on taxon_fk=taxon.id` LIMIT 10</code>. When the statement has been fully tested with the Darwin Core Mappings (see the following section of the Quick Reference Guide), change the SQL Statement to return the full intended data set.
Character Encoding - the system that defines byte-wise definitions of the characters in the data (e.g., Latin1, UTF-8 ).
* **Date Format** - a code describing the format of fields having a date data type (e.g., YYYY-MM-DD for four-digit year, two-digit month, and two-digit day separated by dashes).
* **Multi-value Delimiter** - a single character that delimits the values in a multi-value field (e.g., | or ;).

After the parameters for the data source have been set so that the data are accessed correctly, click on the button labeled "Save" to store this configuration. If the save is successful, the Resource Overview page will appear, with summary information about the data in the right-hand column of the Source Data area. A button labeled "Edit" will also appear with the source data summary information, allowing the user to reopen the Source Database detail page.

#### Darwin Core Mappings
This area of the Resource Overview page allows a user to map the fields in the incoming data to fields in installed extensions and to see which fields from the sources have not been mapped. This option is not available until at least one data source has been successfully added and at least one extension has been installed.

Once these conditions have been met, the left-hand column of the Darwin Core Mappings area will contain a select box with a list of Core Types and Extensions that have been installed. Select a Core Type and map that before selecting an extension to map. Select the appropriate extension that has fields matching the ones to map in the data source. If the appropriate core type or extension does not appear in the select box, it will have to be installed first. Refer to the information under the "Configure Core Types and Extensions" heading in the "Administration Menu" section for an explanation of how to install extensions.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v23/IPTManageResourceDwCMapping.png' />

After the desired core type or extension is selected, click on the button labeled "Add" to open the [[Data Source selection page|IPT2ManualNotes.wiki#data-source-selection-page]].

##### Data Source selection page
This page gives an explanation of the type of data the extension is meant to support, and shows a select box containing a list of all of the configured data sources. **Note 1**: A resource must only use 1 core type: choose "Darwin Core Checklist" when the basis of the resource is taxon names, or choose "Darwin Core Occurrence" when the basis of the resource is occurrences in nature (observations) or in a collection (specimens). Only after the desired core type has been mapped, will it be possible to map other extensions. **Note 2**: It is possible to map another core type as an extension as long as it is different from the core type mapped.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v23/IPTManageResourceSourceSelect.png' />

Select the data source to map, and then click on the button labeled "Save". This will open the Data Mapping detail page (skip to the [[Data Mapping detail page|IPT2ManualNotes.wiki#data-mapping-detail-page]] below for help doing the actual mapping).

After a new mapping has been added, it will be visible in the right-hand column of the Darwin Core Mappings area. This area will contain a list of all the resource's mappings divided into Core Type mappings and Extension mappings. Click the "Edit" button beside a mapping to modify it, or click the preview icon <img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/preview.png' /> to preview the mapping. Resource managers are advised to preview all mappings prior to publishing a new version.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v23/IPTManageResourceDwCMapping2.png' />

##### Data Mapping detail page
After a mapping between a data source and Core Type or Extension has been created, this page opens and displays a status message showing how many fields from the data source were automatically mapped to the fields in the extensions. Fields are automatically mapped if the field names, converted to all lower case, match each other.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v23/IPTManageResourceSourceMapping.png' />

The Data Mapping page allows a user to specify exactly how the data accessible through this IPT resource are to be configured based on the selected extension. At the top of the page is description of what extension the source data is being mapped to. The name of the source data is a link back to the edit source data page. The name of the extension is a link to a description of the extension.

A sidebar on the left-hand side of the page has links to jump to specific sets of related fields (classes/groups) in the extension plus filters to show and hide fields on the page.

To the right of the sidebar are rows of information divided into two columns of information; the first column (left-hand side) lists the names of fields in the extension; the second column (right-hand side) contains a set of controls (select boxes, text boxes) to set the value the extension field is supposed to contain. If a field name has been chosen in the source data field select box, text labeled "Source Sample" and a button labeled "Translate" will appear below it. Descriptions of the controls that may appear in the right-hand column of the data mapping table are given below:

* **Data source field select box** - The left-hand select box is either blank or contains the name of a field from the data source. The IPT fills as many selections as it can from extension field names that match a data source field name. All of the remaining source field select boxes are left blank, signifying that the extension field has not been mapped to a source data field. If a field name is selected, the resource will use the value from that field in the source data as the value for the extension field in the Darwin Core Archive created by the IPT when the resource is published.
* **Data source field select box** - ID field - This field can be matched to a source data field, or it can be set to "No ID" signifying that the field will not be mapped to a source data field. The ID field is required in order to link records from the two sources together. The ID can be auto-generated from the "Line Number" or "UUID Generator", but this feature is exclusively available when mapping a source to the Taxon Core Type's taxonID field.
* **Constant value text box** - To set the published value of any non-identifier extension field to a single value for every record in the data source, enter the desired constant for the extension field in the text box to the right of the source field select box. To activate the text box, make sure that no value is selected in the source field select box. Example:

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMappingConstant.png' />

* **Constant controlled value select box** - If the right-hand column for the extension field contains a second select box instead of a text box, this means that the field is governed by a controlled vocabulary. In this case, choose a value from the vocabulary list to use as a constant value in place of typing a constant into a text box.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMappingSelectConstant.png' />

* **Use resource DOI** - (Special constant controlled value) It is possible to set the default value for datasetID equal to the resource DOI. This option only applies to extensions having the Darwin Core term <a href='http://rs.tdwg.org/dwc/terms/#datasetID'>datasetID</a>, such as the Occurrence extension. To activate the checkbox, make sure that no source data field has been selected and no constant value has been entered.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMappingSourceDatasetID.png' />

* **Vocabulary detail button** - Extension fields that are governed by a controlled vocabulary will have an icon beside the controlled value select box. Click on this icon to open a [[Vocabulary detail page|IPT2ManualNotes.wiki#vocabulary-detail-page]] in a new browser tab on which is a list of accepted values for the extension field with explanations and alternative synonyms in various languages.
* **Source Sample** - This area shows actual values from the first five records of the selected field of the source data, separated by spaces and the character '|'. This helps the user understand if the contents of the source data field are appropriate for the extension field to which it has been mapped.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMappingSourceSample.png' />

* **Translate** - Click on this button to open a [[Value Translation page|IPT2ManualNotes.wiki#value-translation-page]] on which distinct values in the selected field of the source data can be translated to new values in the archive generated by the IPT for this data resource. After the translations have been entered and saved, the Data Mapping page will appear again, and will display text as a link in place of the "Translate" button to show the number of values for which there are translations having values different from the original values. Click on this link to reopen the [[Value Translation page|IPT2ManualNotes.wiki#value-translation-page]] for this extension field.
* **Filter** - The filter allows the user to include only records that match a criterion set for one of the source data fields. To use the filter, first select from the drop down whether you want the filter to be applied **After Translation** or **Before Translation** (in other words, after translations on the source data have been applied, or before - refer to Translation section above for more details about translation). Then, choose the field upon which the criterion will be based using the left select box. The text box at the right may contain a value against which to compare the value of the field in the source data. Do not enclose the value with any punctuation. The second select box allows the user to choose a comparison operator from among the following:
  * **IsNull** - this operator is true if the source data field is empty. In this case no value is needed in the text box at the right. If there is a value in the text box, it will be ignored.
  * **IsNotNull** - this operator is true if the source data field is not empty. In this case no value is needed in the text box at the right. If there is a value in the text box, it will be ignored.
  * **Equals** - this operator is true if the source data field is equal to the value in the text box at the right. Equality is evaluated based on string matching, thus, if the data source value for a record is 2.0 and the value in the text box is 2, the record will not be included in the filtered data set.
  * **NotEquals** - this operator is true if the source data field is not equal to the value in the text box at the right. Equality is evaluated based on string matching, thus, if the data source value for a record is 2.0 and the value in the text box is 2, the record will be included in the filtered data set.
<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceSourceFilter.png' />
<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceSourceFilterEquals.png' />
* **Required fields** - If there are any required properties that must be mapped for the Core Type or Extension, these have their names highlighted. Be aware basisOfRecord publication will fail if <a href='http://rs.tdwg.org/dwc/terms/#basisOfRecord'>basisOfRecord</a> has not been mapped for the Occurrence core. Also, a special case exists for the ID field, which is only required when linking two sources together.

In addition to the explanatory information about the extension at the top of the page and the two columns described above, the Data Mapping page may have following sections, links, and buttons:
* **Resource Title** - clicking on this link will navigate to the Resource Overview page without saving any of the pending changes.
* **Hide unmapped Fields** - this filter/link will remove from view on this page all fields that have not yet been mapped, leaving only those with completed mappings. To view again those fields that have not been mapped, click on the "Show all" link.
* **Show all fields** - this filter/link will make all fields visible, whether mapped already or not. This link appears only after the "Hide Unmapped Fields" link has been invoked.
* **Hide redundant classes** - this filter/link will remove from view on this page all fields belonging to classes/groups of terms that are redundant. A class is redundant, if it is already included in the core extension. To view again those fields that belong to redundant classes, click on the "Show all classes" link. This link appears only after the "Show all classes" link has been invoked.
* **Show all classes** - this filter/link will make all fields belonging to redundant classes/groups visible. This link appears only after the "Hide redundant classes" link has been invoked.
* **Save** - clicking on any of the potentially many buttons labeled "Save" will change the pending changes on the page.
* **Delete** - clicking this button will remove the entire mapping to a data source, not just the mapped fields, and return to the Resource Overview page.
* **Back** - clicking on this button will abandon all changes that have been made on this page since it was last saved and return to the Resource Overview page.
* **Unmapped columns** - this section contains a list of columns in the source file, table, or view that have not been mapped. This list can help to determine if everything from the source has been mapped that should be mapped.
<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v23/IPTManageResourceMappingUnmappedColumns.png' />
* **Redundant term classes** - this section contains a list of classes whose terms are redundant, meaning that these classes already appear in the core extension. Ideally, a term that has been mapped in the core extension doesn't need to be re-mapped again in an extension. Hiding redundant terms also has the additional benefit of making the mapping page easier to use for the user.
<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v23/IPTManageResourceMappingRedundantClasses.png' />

##### Value Translation page
When this page opens for the first time it shows a message at the top giving the number of distinct values of the selected field in the source data, up to 1000 values. The page shows the name and description of the extension field for which translations are being made. If the field is governed by a controlled vocabulary, information about that vocabulary and an icon to open a Vocabulary Detail page (see Vocabulary Detail button explanation, above) will appear under the field description. Below the field description is a table showing the distinct values of the field found in the source data under the column heading "Source Value" with text boxes under the column heading "Translated Value". Enter the value to which the Source Value should be translated in the text box. The icon to the left of the translated value text box indicates if the value provided exists in the vocabulary for this term.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceSourceTranslation.png' />

Bounding the table above and below by the following set of buttons:
  * **Save** - click on this button to save all of the changes that have been made on this page and return to the Data Mapping page.
  * **Delete** - click on this button to remove all translations for this field and return to the Data Mapping page.
  * **Reload** - click on this button to search the source data again for distinct values. Existing translations are retained, and any new distinct values from the source data appear on the list without a translation.
  * **Automap** - this button appears only if the field is governed by a controlled vocabulary. Click on this button to fill the Translated Values automatically with standard values based on known synonyms. Values in the source data for which there are no known synonyms will remain blank.
  * **Cancel** - click on this button to close the Value Translation page without saving any of the changes that have been made.

##### Vocabulary detail page
This page shows a list of concepts within the vocabulary. In the context of mapping data, it shows a list of accepted values that can be used for the extension field. Each concept may contain a description, its preferred synonyms (in various languages), plus any alternative synonyms (in various languages).

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v23/IPTManageResourceVocabularyDetail.png' />

#### Metadata
This area of the Resource Overview page allows a user to edit the resource metadata. By clicking on the button labeled "Edit" in the panel to the left the metadata can be edited. The panel to the right shows when the metadata was last modified. Every resource requires a minimal set of descriptive metadata in order to i) be published in the GBIF network, ii) be registered with DataCite (in other words, be assigned a DOI). If any of the required metadata is missing, the Resource Overview page will open with a warning message in the Metadata area of the page.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMetadataMissing.png' />

Clicking on the "Edit" button opens the [[Basic Metadata|IPT2ManualNotes.wiki#basic-metadata]] page, the first of a series of metadata pages. Each page will appear in sequence as the button labeled "Save" is clicked upon finishing entering data on any given metadata page. Saving the metadata on the last of the metadata pages will transition back to the [[Basic Metadata|IPT2ManualNotes.wiki#basic-metadata]] page. Clicking on the button labeled "Cancel" on any given metadata page will disregard any changes made on that page and return to the Resource Overview page. In a column at the right of each metadata page is a list of links to all of the metadata pages for easy reference and navigation. Click on any of the links to open the metadata page for that topic.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMetadataPagesList.png' />

Following is a list of the metadata pages and their contents:

#### Basic Metadata
All metadata fields on this page are required. Please note for each contact you must supply at least a last name, a position or an organisation.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v23/IPTManageResourceMetadataBasicMetadata.png' />

* **Title** - the Title for the resource. This title will appear as the Name of the resource throughout the IPT. The title will also appear in the GBIF Registry.
* **Publishing Organisation** - the organisation responsible for publishing (producing, releasing, holding) this resource. It will be used as the resource's rights holder and publishing organisation when registering this resource with GBIF and when submitting metadata during DOI registrations. It will also be used to auto-generate the citation for the resource (if auto-generation is turned on), so consider the prominence of the role. If the desired organisation does not appear in the list it may be added by the IPT Administrator (see the information under the "Configure Organisations" heading in the "Administration Menu" section). Please be aware your selection cannot be changed after the resource has been either registered with GBIF or assigned a DOI.
* **Update Frequency** - the frequency with which changes are made to the resource after the initial resource has been published. For convenience, its value will default to the auto-publishing interval (if auto-publishing has been turned on), however, it can always be overridden later. Please note a description of the maintenance frequency of the resource can also be entered on the Additional Metadata page.
* **Type** - the type of resource. The value of this field depends on the core mapping of the resource and is no longer editable if the Darwin Core mapping has already been made. If a desired type is not found in the list, the field "other" can be selected. Review the information under the "Configure Core Types and Extensions" heading of the "Administration Menu" section.
* **Subtype** - the subtype of the resource. The options for this field depend on the Type field. If a desired subtype is not found in the list, the field can be left with the default selection.
* **Metadata Language** - the language in which the metadata are written.
* **Resource Language** - the language in which the data for the resource are written.
* **Data License** - the licence that you apply to the resource. The license provides a standardized way to define appropriate uses of your work. GBIF encourages publishers to adopt the least restrictive licence possible from among three (default) machine-readable options (CC0 1.0, CC-BY 4.0 or CC-BY-NC 4.0) to encourage the widest possible use and application of data. Learn more about GBIF's policy <a href='http://www.gbif.org/terms/licences'>here</a>. If you feel unable to select one of the three options, please contact the GBIF Secretariat at participation@gbif.org. To find out how to apply a license at the record-level, refer to the [[How To Apply a License To a Dataset|IPT2ApplyingLicense.wiki]] page in the IPT wiki. To find out how to change the IPT's default set of licenses, refer to the [[How To Add a New License|IPT2License.wiki]] page in the IPT wiki.
* **Description** - a brief overview of the resource broken into paragraphs. This should provide enough information to help potential users of the data to understand if it may be of interest.
* **Resource Contacts** - the list of people and organisations that should be contacted to get more information about the resource, that curate the resource or to whom putative problems with the resource or its data should be addressed. <img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMetadataResourceContact.png' />
  * **Add new resource contact** - click on this link to initiate a form for an additional resource contact.
  * **Remove this resource contact** - click on this link to remove the resource contact that follows immediately below the link.
  * **First Name** - the first or given name of the resource contact.
  * **Last Name** (required if Position and Organisation are empty, required if the first name is not empty) - the last or surname of the resource contact.
  * **Position** (required if Last Name and Organisation are empty) - the relevant title or position held by the resource contact.
  * **Organisation** (required if Last Name and Position are empty) - the organisation or institution with which the resource contact is associated. Though the organisation may be one of those registered in the GBIF Registry, this is not required. Thus, the organisation must be entered in the text box rather than selected from a list of registered organisations.
  * **Address** - the physical street or building address of the resource contact.
  * **City** - the city, town, municipality or similar physical location of the resource contact's address.
  * **State/Province** - the state, province, or similar geographic region of the resource contact's address.
  * **Country** - the name of the country or other first level administrative region of the resource contact's address.
  * **Postal Code** - the postal code (e.g., zip code) of the resource contact's address.
  * **Phone** - the preferred full international telephone number at which to reach the resource contact.
  * **Email** - the preferred email address at which to reach the resource contact.
  * **Home Page** - the URL to a worldwide web page for the resource contact.
  * **Personnel Directory** - the URL of the personnel directory system to which the personnel identifier belongs. There are four default directories to choose from: ORCID, ResearchID, LinkedIn, and Google Scholar. If you'd like to change the IPT's default set of directories, refer to the [[How To Add a New User ID Directory|IPT2UserId.wiki]] page in the IPT wiki.
  * **Personnel Identifier** - a 16-digit ORCID ID (e.g. 0000-0002-1825-0097) or another identifier that links this person to the personnel directory specified.
* **Resource Creators** - the people and organisations who created the resource, in priority order. The list will be used to auto-generate the resource citation (if auto-generation is turned on). If this person or organisation is the same as the first resource contact, all of the details of the latter can be copied into the equivalent fields for the resource creator by clicking on the link labeled "copy details from resource contact". The resource creator has all of the same fields and requirements as the resource contact. Refer to the field explanations under Resource Contacts, above. **Note**: the person(s) or organisation(s) responsible for the creation of the resource as it appears in the IPT and for effectively publishing the resource can add themselves as an associated party with role 'publisher'.
* **Metadata Providers** - the people and organisations responsible for producing the resource metadata. If this person or organisation is the same as the first resource contact, all of the details of the latter can be copied into the equivalent fields for the resource creator by clicking on the link labeled "copy details from resource contact". The metadata provider has all of the same fields and requirements as the resource contact. Refer to the field explanations under Resource Contacts, above.

#### Geographic Coverage
This metadata page contains information about the geographic area covered by the resource. The page contains a map and associated controls that allow the user to set the geographic coverage. Below is a screen image showing the contents of the Geographic Coverage page, followed by explanations of the controls.
<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v233/IPTManageResourceMetadataGeographicCoverage.png' />
* **Coverage Map** - if connected to the Internet, a map of the earth will appear on the geographic coverage page. This map shows a box with control points (markers) on all corners. The corners correspond with the values in the Latitude and Longitude text boxes, explained below. Drag the entire box, or drag individual markers to a new location to reset the geographic bounds of the box. The corresponding latitude and longitude values will change to match the box on the map. The map features hill shading, natural vegetation colors, advanced labeling, etc. The map has buttons to zoom in (+) and zoom out (-) and can be dragged in any direction to change the area of the earth being shown.
* **Set global coverage?** - click on this check box to change the geographic coverage to cover the entire earth.
* **South/West & North/East** - these four text boxes correspond to the SW and NE corners of the box bounding the area covered by the resource. The values to enter in these text boxes are decimal degrees (e.g. 45.2345), with the standard limiting values of -90 to +90 latitude (South/North) and -180 to +180 longitude (West/East), with positive latitude in the northern hemisphere and positive longitude east of the Greenwich Meridian to the International Dateline. Manipulating the bounding box markers on the map will set these values, but valid values can all be entered in these text boxes directly if desired. The map will update when the information on the page is saved by clicking on the button labeled "Save".
* **Description** - a textual description of the geographic coverage. This information can be provided in place of, or to augment the information in the other fields on the page.

#### Taxonomic Coverage
This metadata page allows the user to enter information about one of more groups of taxa covered by the resource, each of which is called a taxonomic coverage. Each coverage consists of a description and list of taxa, where each taxon consists of a taxon name (either scientific or common) and a taxon rank. Before any taxonomic coverages are created, the page shows only a link labeled "Add new taxonomic coverage". Clicking on this link will show a text box for the description and several links. Below is a screen image showing the Taxonomic Coverage page before any data have been entered, followed by explanations of the controls seen on the page in this state.
<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMetadataTaxonomic.png' />
* **Remove this taxonomic coverage** - click on this link to remove the taxonomic coverage that follows immediately below the link, including the description, the list, and all single taxon entries.
* **Description** - a textual description of a range of taxa represented in the resource. Each taxonomic coverage has its own description. This information can be provided in place of, or to augment the information in the other fields on the page.
* **Add several taxa** - this link adds a text box labeled "Taxon List" to the page.
<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMetadataTaxonList.png' />
* **Taxon List** - this text box allows the user to enter a list of taxa with each taxon on a separate line by using the ENTER key within the text box. The taxa entered in this list are treated as scientific names.
* **Add** - this button processes the values entered in the Taxon List text box and creates scientific names for each of them within the taxonomic coverage.
* **Add new taxon** - this link adds controls to enter a single taxon to the taxonomic coverage - text boxes for Scientific Name and Common Name, a select box for Rank and a trash icon. The taxon can contain any combination of scientific and common name with an optional rank.
<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMetadataSingleTaxon.png' />
* **Scientific Name** - this text box is meant to contain the scientific name for the taxon.
* **Common Name** - this text box is meant to contain the scientific name for the taxon.
* **Rank** - this text box is meant to contain the taxonomic rank of the taxon.
* **Trash Icon** <img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/Control-TrashIcon.png' /> - clicking on this icon will remove the taxon (scientific name, common name, and rank) to the left of the icon from the taxonomic coverage.
* **Add new taxonomic coverage** - click on this link to initiate a form for a new taxonomic coverage with a text box labeled "Description" and links to "Add several taxa" and "Add new taxon" as described above.

#### Temporal Coverage
This metadata page contains information about one of more dates, date ranges, or named periods of time covered by the resource, each of which is called a temporal coverage. Coverages may refer to the times during which the collection or data set was assembled (Single Date, Date Range, and Formation Period), or to times during which the subjects of the data set or collection were alive (Living Time Period). Before the first temporal coverage for the resource is created, the page shows only a link labeled "Add new temporal coverage". Clicking on this link will show the default temporal coverage type "Single Date" in a select box, a text box labeled "Start Date", a calendar icon, and two links. Below is a screen image showing the default Temporal Coverage page before any data have been entered, followed by explanations of the controls seen on the page in this state.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMetadataTemporalCoverages.png' />

* **Add new temporal coverage** - click on this link to initiate a form for an additional temporal coverage.
* **Remove this temporal coverage** - click on this link to remove the temporal coverage that follows immediately below the link.
* **Temporal Coverage Type** - select one of the options in this select box to set the type of temporal coverage, which can consist of a single date, a date range, a formation period, or a living time period. Selecting a type will reveal controls appropriate to the choice as explained below.
  * **Single Date** - this is the default temporal coverage type showing when a temporal coverage is first created. This type is meant to represent a coverage spanning one day. Selecting this type reveals a text box for a Start Date, with a calendar icon to the right with which a date can be selected.
    * **Start Date** - this text box is meant to contain a single date in one of the supported date formats. To select a date, click on the calendar icon and choose a date, or enter the date manually. To find out what date formats are supported, open the information icon. Example: 2010-12-31 for 31 December 2010 in the New Era calendar.<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMetadataTemporalCoverageSingleDate.png' />
  * **Date Range** - this temporal coverage is meant to describe the time period within which the objects in the collection were collected. Selecting this temporal coverage type reveals a text box for a Start Date and a text box for an End Date, each with a calendar icon to the right with which a date can be selected.
    * **Start Date** - this text box is meant to contain the date the coverage began, in one of the supported date formats. To select a date, click on the calendar icon and choose a date, or enter the date manually. To find out what date formats are supported, open the information icon. Example: 2010-12-31 for 31 December 2010 in the New Era calendar.
    * **End Date** - this text box is meant to contain the date the coverage ended, in one of the supported date formats. To select a date, click on the calendar icon and choose a date, or enter the date manually. To find out what date formats are supported, open the information icon. Example: 2010-12-31 for 31 December 2010 in the New Era calendar.<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMetadataTemporalCoverageDateRange.png' />
  * **Formation Period** - this temporal coverage type is meant to accommodate a named or other time period during which a collection or data set was assembled. Examples: "Victorian", "1922-1932", "c. 1750".<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMetadataTemporalCoverageFormationPeriod.png' />
  * **Living Time Period** - this temporal coverage type is meant to accommodate a named or other time period during which the biological entities in the collection or data set were alive, including paleontological time periods. Examples: "1900-1950", "Ming Dynasty", "Pleistocene".<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMetadataTemporalCoverageLivingTimePeriod.png' />

#### Keywords
This metadata page allows the user to create one or more sets of keywords about the resource. Each set of keywords can be associated with a thesaurus/vocabulary that governs the terms in the list.
<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMetadataKeywords.png' />
* **Remove this keyword set** - click on this link to remove the keyword set that follows immediately below the link.
* **Thesaurus/Vocabulary** - enter the name of a thesaurus or controlled vocabulary from which the keywords in the set are derived. If the keywords are not governed by a thesaurus/vocabulary, enter "n/a" indicating that it is not applicable in this text box. Example: IRIS keyword thesaurus.
* **Keyword List** - enter a list of keywords, separated by commas that describe or are related to the resource.
* **Add new keyword set** - click on this link to initiate a form for an additional keyword set.

#### Associated Parties
This metadata pages contains information about one or more people or organisations associated with the resource in addition to those already covered on the Basic Metadata page. Many of the controls on this page are in common with those for the Resource Contacts on the [[Basic Metadata|IPT2ManualNotes.wiki#basic-metadata]] page. Explanations for the remainder of the controls are given below.
<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMetadataAssociatedParties.png' />
* **Copy details from resource contact** - if this person or organisation is the same as the first Resource Contact on the Basic Metadata page, all of the details can be copied into the equivalent fields for the associated party by clicking on this link.
* **Remove this associated party** - click on this link to remove the associated party that follows immediately below the link.
* **Role** - this select box contains a list of possible roles that the associated party might have in relation to the resource. Click on the information icon to the left of the select box to see descriptions of the possible roles. Choose the most appropriate role for the associated party in the select box.
* **Add new associated party** - click on this link to initiate a form for an additional associated party.

#### Project Data
This metadata page contains information about a project under which the data in the resource were produced.
<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMetadataProjectData.png' />
* **Title** - the title of the project.
* **Identifier** - a unique identifier for the research project. This can be used to link multiple dataset/EML document instances that are associated in some way with the same project, e.g. a monitoring series. The nature of the association can be described in the project description.
* **Description** - an abstract about the research project.
* **Funding** - information about project funding and its sources (grant titles and numbers, contract numbers, names and addresses, active period, etc.). Other funding-related information may also be included.
* **Study Area Description** - a description of the physical area where the project occurred (physical location, habitat, temporal coverage, etc.).
* **Design Description** - a description of the design and objectives of the project. It can include detailed accounts of goals, motivations, theory, hypotheses, strategy, statistical design, and actual work.
* **Project Personnel** - the list of people involved in the project.
  * **Personnel First Name** - the first name of the person associated with the project.
  * **Personnel Last Name** - the last name of the person associated with the project.
  * **Personnel Directory** - the URL of the personnel directory system to which the personnel identifier belongs. There are four default directories to choose from: ORCID, ResearchID, LinkedIn, and Google Scholar. If you'd like to change the IPT's default set of directories, refer to the [[How To Add a New User ID Directory|IPT2UserId.wiki]] page in the IPT wiki.
  * **Personnel Identifier** - a 16-digit ORCID ID (e.g. 0000-0002-1825-0097) or another identifier that links this person to the personnel directory specified.
  * **Personnel Role** - the role of the person associated with the project. Click on the information icon to the left of the select box to see descriptions of the possible roles. Choose the most appropriate role in the select box for the person named above.

#### Sampling Methods
This metadata page contains information about sampling methods used for the data represented by the resource.
<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMetadataSamplingMethods.png' />
* **Study Extent** - a description of the physical and temporal conditions under which the sampling occurred. The geographic study extent is usually a surrogate (representative area of) for the larger area documented in the "Study Area Description" field of the Project metadata page.
* **Sampling Description** - a text-based/human readable description of the sampling procedures used in the research project. The content of this element would be similar to a description of sampling procedures found in the methods section of a journal article.
* **Quality Control** - a description of actions taken to either control or assess the quality of data resulting from the associated method step(s).
* **Step Description** - A method step is one in a series of repeated sets of elements that document a series of methods and procedures used in the study, and the processing steps leading to the production of the data files. These include text descriptions of the procedures, relevant literature, software, instrumentation, source data and any quality control measures taken. Each method should be described in enough detail to allow other researchers to interpret and repeat, if required, the study.
* **Add new method step** -  click on this link to add a text box labeled "Step Description" to the page (see above). One may add as many method steps as desired.
* **Remove this method step** - click on this link to remove the method step text box that follows immediately below the link.

#### Citations
This metadata page contains information about how to cite the resource as well as a bibliography of citations related to the data set, such as publications that were used in or resulted from the production of the data. Each Citation, whether for the resource or in the bibliography, consists of an optional unique Citation Identifier allowing the citation to be found among digital sources and a traditional textual citation. Before any Citation data are entered, the page will show a text box for the Citation Identifier for the resource, a text box for the Resource Citation, a heading labeled "Bibliographic Citations", and a link labeled "Add new bibliographic citation".
<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMetadataCitations.png' />
* **Resource Citation** - the single citation for use when citing the dataset. **BE AWARE: Free-text citations get overwritten on the GBIF.org dataset page - learn more [here](https://www.gbif.org/faq?q=citation)**.
  * Example citation with institutional creator:
  Biodiversity Institute of Ontario (2011) Migratory birds of Ontario. Version 1.2. University of Guelph. Dataset/Species occurrences. <a href='http://dx.doi.org/10.5886/qzxxd2pa'>http://dx.doi.org/10.5886/qzxxd2pa</a>
  * Example citation with 9 creators:
  Brouillet L, Desmet P, Coursol F, Meades SJ, Favreau M, Anions M, Belisle P, Gendreau C, Shorthouse D (2010) Database of vascular plants of Canada. Version 1.2. Universite de Montreal Biodiversity Centre. Dataset/Species checklist. <a href='http://doi.org/10.5886/1bft7W5f'>http://doi.org/10.5886/1bft7W5f</a>
* **Auto-generation - Turn On/Off** - turn on to let the IPT auto-generate the resource citation for you. The citation format used in auto-generation is based on DataCite's preferred citation format, and satisfies the Joint Declaration of Data Citation Principles. This format includes a version number, which is especially important for datasets that are continuously updated. You can read more about the citation format in the [[IPT Citation Format|IPT2Citation.wiki]] page in the IPT wiki.
* **Citation Identifier** - a DOI, URI, or other persistent identifier that resolves to the online dataset. It is recommended the identifier be included in the citation. If the resource has been assigned a DOI (using the IPT), the IPT sets the DOI as the citation identifier and it can no longer be edited.
* **Bibliographic Citations** - the additional citations of other resources related to or used in the creation of this resource.
* **Add new bibliographic citation** -  click on this link to add the text boxes required for an additional citation in the bibliography.
  * **Bibliographic Citation** - the citation of an external resource related to or used in the creation of this resource.
  * **Bibliographic Citation Identifier** - a DOI, URI, or other persistent identifier that resolves to the online external resource. It should be used in the citation, usually at the end. <img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMetadataBibCitations.png' />
  * **Remove this bibliographic citation** - click on this link to remove the citation that follows immediately below the link.

#### Collection Data
This metadata page contains information about the physical natural history collection associated with the resource (if any) as well as lists of types objects in the collection, called Curatorial Units, and summary information about them. Before any Collection data are entered, the page will show a header for each section (Collections, Specimen preservation methods, Curatorial Units) and a link labeled "Add new curatorial unit".
<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMetadataCollectionData.png' />
* **Collections** - the list of collections that this resource is based on.
  * **Add new citation** -  click on this link to add the text boxes required for an additional collection in the Collections section.
  * **Collection Name** - the full standard name by which the collection is known or cited in the local language.
  * **Collection Identifier** - The URI (LSID or URL) of the collection. In RDF, used as URI of the collection resource.
  * **Parent Collection Identifier** - Identifier for the parent collection for this sub-collection. Enables a hierarchy of collections and sub collections to be built. Please enter "Not applicable" if this collection does not have a parent collection.
  * **Remove this collection** - click on this link to remove the collection that follows immediately below the link.<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMetadataCollections.png' />
* **Specimen Preservation Methods** - the list of specimen preservation methods covered by the resource, indicating the process or technique used to prevent physical deterioration of non-living collections. The values to choose from are based on the <a href='http://rs.gbif.org/vocabulary/gbif/preservation_method.xml'>GBIF Specimen Preservation Method vocabulary</a>. Remember you can include a list of preparations and preservation methods for a specimen in your data mapping DwC term preparations (<a href='http://rs.tdwg.org/dwc/terms/preparations'>http://rs.tdwg.org/dwc/terms/preparations</a>). Please don't select anything for treatments for living collections. This can relate to the curatorial unit(s) in the collection.
  * **Add new preservation method** -  click on this link to add the text boxes required for an additional preservation method in the Specimen Preservation Methods section.
  * **Remove this preservation method** - click on this link to remove the preservation method that follows immediately below the link.<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMetadataPreservationMethods.png' />
* **Curatorial Units** - the counts of curatorial units covered by the resource. The count can be entered as a range or as a value with an uncertainty. Examples of units include skins, sheets, pins, boxes, and jars. Overall, this section summarizes the physical contents of the collection by type.
  * **Add new curatorial unit** -  click on this link to add the select text boxes required for an additional curatorial unit in the Curatorial Units section. When a new curatorial unit is added, the default Method Type selection is "Count Range".
  * **Method Type** - this select box allows the user to choose from among two methods to specify the number of objects of a given type, either a count range, or a count with uncertainty. After making the selection, appropriate text boxes will appear allowing that counting method to the represented.
    * **Count Range** - this method type allows the user to set the lower and upper bounds on the number of objects of a particular unit type. See screen image above.
      * **Between** - enter the lower bound of the number of objects in this text box.
      * **and** - enter the upper bound of the number of objects in this text box.
    * **Count with uncertainty** - this method allows the user to set a number of objects of a particular unit type with an uncertainty above or below that number.
      * **Count** - enter the mean likely number of object in this text box.
      * **+/-** - enter the number of objects more or less than the number in the count text box for the range of possible counts of the particular unit type
    * **Unit Type** - the single type of object (specimen, lot, tray, box, jar, etc.) represented by the method type and count.
  * **Remove this curatorial unit** - click on this link to remove the curatorial unit that follows immediately below the link.<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMetadataCuratorialUnits.png' />

#### External Links
This metadata page contains links to the home page for the resource as well as links to the resource in alternate forms (database files, spreadsheets, linked data, etc.) and the information about them. Before any external links are entered, the page will show a text box for the Resource Homepage and a link labeled "Add new external link".
<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMetadataExternalLinks.png' />
* **Resource Homepage** - enter the full current URL of the web page containing information about the resource or its data set.
* **Other Data Formats** - links to your resource data in other formats (e.g., database dumps, spreadsheets, nexus, linked data, etc.).
  * **Add new external link** -  click on the link having this text to add the text boxes required for an additional external link.
  * **Name** - the name of the file or data set.
  * **Character Set** - the name or code for the character encoding (e.g., ASCII, UTF-8).
  * **Download URL** - the URL from which the file for the document or data set can be downloaded in the mentioned format.
  * **Data Format** - the name or code of the document or file format (e.g., CSV, TXT, XLS, Microsoft Excel, MySQL).
  * **Data Format Version** - the version of the document or file format given in the Data Format text box (e.g., 2003, 5.2).
  * **Remove this external link** - click on the link having this label to remove the external link that follows immediately below.

#### Additional Metadata
This metadata page contains information about other aspects of the resource not captured on one of the other metadata pages, including alternative identifiers for the resource. Before any alternative identifiers are entered, the page will show text boxes for the purpose, maintenance description, additional metadata, a header for the Alternative Identifiers area, and a link labeled "Add new alternative identifier".
<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceMetadataAdditionalMetadata.png' />
* **Date Created** - the date on which the first version of the resource was published. It will be used to formulate the publication year in the auto-generated resource citation. This value is set automatically when publishing and cannot be edited.
* **Date Published** - the date when the resource was last published. This value is set automatically when publishing (see the [[Published Versions|IPT2ManualNotes.wiki#published-versions]] section).
* **Resource logo URL** - a logo representing the resource. The logo URL can be used to upload the resource. It may also be uploaded from an image file selected from your disk.
* **Purpose** - a summary of the intentions for which the data set was developed. Includes objectives for creating the data set and what the data set is to support.
* **Maintenance Description** - a description of the maintenance frequency of this resource. This description compliments the update frequency selected on the Basic Metadata page.
* **Additional Information** - any information that is not characterised by the other resource metadata fields, e.g. history of the project, publications that have used the current data, information on related data published elsewhere, etc.
* **Alternative Identifiers** - this section contains a list of additional or alternative identifiers for the resource. When the resource is published, the IPT's URL to the resource is added to the list of identifiers. When a resource is assigned a new DOI (using the IPT), the IPT ensures this DOI is placed first in the list of identifiers. When a resource is registered with the GBIF Registry, the Registry's unique resource key is also added to the list of identifiers. If the resource represents an existing registered resource in the GBIF Registry, the existing registered resource UUID can be added to the list of identifiers. This will enable the IPT resource to update the existing resource during registration, instead of registering a brand new resource. For more information on how to migrate a resource, see [[this|IPT2ManualNotes.wiki#migrate-a-resource]] section.
  * **Add new alternative identifier** -  click on this link to add a text box for an alternative identifier for the resource.
  * **Alternative Identifier** - the text for the alternative identifier for the resource (e.g., a URL, UUID, or any other unique key value).
  * **Remove this alternative identifier** - click on this link to remove the alternative identifier that follows immediately below.

#### Published Versions
This area of the Resource Overview page allows a user to publish a version of the resource.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourcePublish.png' />

The **left-hand** section controls how resource versions are published. The publish button can be used to publish new versions on demand, or auto-publishing can be enabled to publish new versions on a schedule. For explanations of the options in this section, refer to the information below.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourcePublishLeftSide2.png' />

* **Publish on demand**: - simply click on the button labeled "Publish" to trigger publishing a new version. The button labeled "Publish" will be enabled if 1) the required metadata for the resource are complete, and 2) the user has the role "Manager with/without registration rights". When the resource is registered or the resource has been assigned a DOI, however, only users with the role "Manager with registration rights" can publish, since the resource's registration gets updated during each publication (see the explanation for Role in the "Create a new user" section under the "Configure User accounts" heading of the "Administration Menu" section). After pressing the "Publish" button, a confirmation dialog will appear. The dialog varies depending on whether the pending version is a major version change or minor version change:

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourcePublishMajor.png' />
<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourcePublishMinor.png' />

The resource manager should enter a summary of what changes have been made to the resource (metadata or data) since the last/current version was published. The change summary is stored as part of the resource version history, and can be edited by resource managers via the resource homepage. A complete description of what happens after pressing "Publish" is explained in the "Publishing steps" section below.
* **Auto-publishing**: - to turn on automated publishing, select one of the 5 publishing intervals (annually, biannually, monthly, weekly, or daily) and then press the publish button. When automated publishing is on, the publishing interval and next published date are clearly displayed in the published versions section. To change the publishing interval, select a different publishing interval and press publish. To turn off automated publishing, select "Turn off" and then press publish. In case of failure, publishing will be retried automatically up to 3 more times. This safeguards against infinite publishing loops. Resources configured to publish automatically, but that failed to finish successfully will have a next publication date in the past, and will be highlighted in the public and manage resource tables.

The **right-hand** section contains a table that compares the current version against the pending version. Resource managers can use this table to manage resource versioning, preview the pending version, plus review and validate the current version. For explanations of the rows of information in the table, refer to the information below.

_Table 1 (below): demonstrates a major version change since the pending version has been reserved a new DOI:_

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourcePublishTable.png' />

_Table 2 (below): demonstrates a minor version change since the DOI assigned to the current and pending versions is the same:_

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourcePublishTable2.png' />

* **Version**: - the version number tracking the  major_version.minor_version of the current/pending version. Each time the resource undergoes scientifically significant changes, the resource manager should ensure the pending version has a new major version, done by reserving it a new DOI. A detailed description of the IPT's versioning policy is explained [[here|IPT2Versioning.wiki]]. In the current version column, click the "View" button to see the current version's homepage. Assuming a DwC-A has been published, click <img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/Checkmark.png' /> the to validate it using the <a href='http://tools.gbif.org/dwca-validator/'>Darwin Core Archive Validator</a>. In the pending version column, click the "Preview" button to see a preview of the pending version's homepage. The homepage preview is private to resource managers only, and enables them to make sure the resource is ready to publish.
* **Visibility**: - the visibility of the current/pending version. In order to register the resource with GBIF, the resource manager must ensure the current version is public. In order to assign a DOI to a resource, the resource manager must ensure the pending version is public.
* **DOI**: - to DOI of the current/pending version. The DOI of the current version can never be changed, however, the DOI of the pending version can be reserved or deleted. For explanations of how DOIs are reserved, deleted, registered, deactivated, reactivated please see the DOI section below.
* **Data License**: - the license applied to the resource. In order to register the resource with GBIF, the resource manager must ensure a license equivalent to either CC0, CC-BY, or CC-BY-NC is applied to the resource. GBIF's licensing policy is described <a href='http://www.gbif.org/terms/licences'>here</a>.
* **Published on**: - to date the current version was published on / the date the pending version will be published on.
* **Publication log**: - click the download button to retrieve the "publication.log" of the current version. The resource manager can use the publication log to diagnose why publication failed for example. A more detailed description of its contents is described below in the Publishing Status page section. This is not applicable to the pending version.
* **Publication report**: - the publication summary of the current version - not applicable to the pending version.

##### Publishing steps

The publish action consists of the steps described below. Publication is all or nothing meaning that each step must terminate successfully in order for a new version to be published. If any step fails, or if the publish action is cancelled, the version is rolled back to the last published version.

1. The current metadata are written to the file eml.xml. An incremental version named eml-n.xml (where n is the incremental version number reflecting the publication version) is always saved.
2. A data publication document in Rich Text Format (RTF) is written to the file shortname.rtf. An incremental version of the RTF file named shortname-n.rtf is always saved.
3. The current primary resource data as configured through mapping are written to the Darwin Core Archive file named dwca.zip. The data files in the Darwin Core Archive are then validated (see "Data Validation" section below).
4. If the IPT's Archival Mode is turned on (see [[Configure IPT settings|IPT2ManualNotes.wiki#configure-ipt-settings]] section, an incremental version of the Darwin Core Archive file named dwca-n.zip is also saved.
5. The information about the resource is updated in the GBIF Registry if the resource is registered.
6. The DOI metadata about the resource is updated and propagated to DOI resolvers if the resource is assigned a DOI using the IPT.

##### Data Validation

The IPT writes data files inside the DWCA as tab delimited files void of line breaking characters (**note: line breaking characters found in the original data are replaced with an empty string**).

After writing, the IPT also validates their content in the following ways:
* If a column representing the core record identifier (e.g. occurrenceID is the core record identifier of the Occurrence core) is found in the core data file, the IPT will validate that for each record, the core record identifier is present, and unique.
* The Darwin Core term <a href='http://rs.tdwg.org/dwc/terms/#basisOfRecord'>basisOfRecord</a> is a required term in the Occurrence extension. Therefore the IPT validates that each Occurrence data file has a basisOfRecord column. In addition, the IPT validates that for each Occurrence record the basisOfRecord is present, and its value matches the <a href='http://rs.gbif.org/vocabulary/dwc/basis_of_record.xml'>Darwin Core Type vocabulary</a>.

##### Assigning DOIs to Resources
Best practice is to assign a new DOI to the resource every time it undergoes a scientifically significant change. To enable the IPT to assign DOIs to resources, the IPT administrator must first configure an organisation associated to the IPT with a DataCite account. Refer to the "Configure Organisations" section for help doing this. Otherwise the DOI buttons in the Published Versions sections are hidden from view. Once a DataCite account has been activated in the IPT, resource managers can reserve, delete, register, deactivate, and reactivate DOIs for their resources using this account. Each of these DOI operations is explained in detail below. For more help understanding how the IPT assigns DOIs to datasets, refer to the [[IPT DOI Workflows|IPT2DOIWorkflow.wiki]] page in the IPT wiki.
* **Reserve**: - a DOI can be reserved for a resource. This operation varies a little depending on whether the resource has already been assigned a DOI or not.
  * **Resource not assigned a DOI**: - a DOI can be reserved for a resource after the mandatory metadata has been entered. To reserve a DOI, press the "Reserve" button in the Published Versions section. To reuse an existing DOI, enter it into the citation identifier field in the resource metadata, and then press the "Reserve" button in the Published Versions section. If a resource is publicly available and reserved a DOI, the next publication will result in a new major version and the DOI will be registered. Otherwise if a resource is private and reserved a DOI, the next publication will result in a new minor version of the resource and the DOI will NOT be registered. Be aware that until a DOI is registered it can still be deleted.
  * **Resource assigned a DOI**: - another DOI can be reserved for a published resource that has already been assigned a DOI. To reserve another DOI, press the "Reserve new" button in the Published Versions section. The DOI will be registered the next time the resource is published, and will resolve to the newly published version's homepage. The former DOI will still resolve to the previous version, but will display a warning the new one superseded it. Be aware that until a DOI is registered it can still be deleted.
* **Delete**: - a DOI that is reserved for the resource can be deleted since it was never publicly resolvable. To delete a DOI, press the "Delete" button in the Published Versions section.
* **Register**: - if a resource is publicly available and reserved a DOI, the next publication will result in a new major version and the DOI will be registered.
* **Deactivate**: - a DOI that has been registered cannot be deleted, and must continue to resolve. The only way to deactivate a DOI is by deleting the resource itself. Deleting the resource will ensure the data can no longer be downloaded, and the DOI will resolve to a page explaining the resource has been retracted. Be aware that it can take up to 24 hours until a DOI update is globally known.
* **Reactivate**: - a DOI that has been deactivated resolves to a resource that has been deleted. To reactivate the DOI, the resource must be undeleted. Undeleting a resource makes the data available for download again, and the DOI will resolve to the last published version of this resource. Be aware that it can take up to 24 hours until a DOI update is globally known.

##### Publishing Status page
A page entitled Publishing Status will show status messages highlighting the success or failure of each publishing step. Publication of a new version is an all or nothing event, meaning that all steps must finish successfully otherwise the version is rolled back.
* **Resource overview** - This link leads to the Manage Resource page for the resource just published.
* **Publication log** - This link initiates a download of a file named "publication.log", which contains the detailed output of the publication process. This file contains specific information to help managers identify problems during publication such as:
  * how many records couldn't be read and were not written to the DwC-A
  * how many records were missing an identifier, or how many had duplicate identifiers (in the case that the core record identifier field was mapped)
  * how many records contained fewer columns than the number that was mapped
* **Log message** - The Publishing Status page shows a summary of the information that was sent to the filed named publication.log, which is stored in the directory for the resource within the IPT's data directory and which is accessible through the link to the "Publication Log" immediately above the log message summary.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourcePublishingStatus.png' />

#### Visibility
The Visibility area of the Manage Resources page allows users having manager rights for the resource to change its visibility state. The visibility of a resource determines who will be able to view it, and whether the resource can be assigned a DOI or registered with GBIF. By default, each resource is visible only to the user who created it and any other users who have the Admin role on the IPT where the resource is created. For explanations of each visibility state refer to the information below.

* **Private** - A private resource is visible only to those who created it, or those who have been granted permission to manage it within the IPT, or by a user having the Admin role. This is primarily meant to preserve the resource from public visibility until it has been completely and properly configured. Be aware a DOI can be reserved for a private resource, but that DOI cannot be registered until the resource is publicly visible. When the resource is ready for public visibility, click on the button labeled "Public". A message will appear at the top of the page saying that the status has been changed to "Public".<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceVisibilityPrivate.png' />
* **Public** - A public resource is visible to anyone using the IPT instance where the resource is installed (on the table of public resource on the IPT Home page). If the resource has a reserved DOI, that DOI will be registered the next time the resource is published. The resource is ultimately accessible via the Internet to anyone who knows its homepage URL or DOI. However, the resource is not globally discoverable through the GBIF website until it has been registered with the GBIF Registry. Be aware the visibility of a resource assigned a DOI cannot be changed to private.<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceVisibilityPublicNeedToPublish.png' /> Two buttons appear in the left-hand section of the visibility area. Clicking on the button labeled "Private" will remove the resource entirely from public visibility and return it to the private state. The button labeled "Register" will only be enabled if 1) the required metadata for the resource are complete, 2) the resource has been published (see the explanation of the [[Published Versions|IPT2ManualNotes.wiki#published-versions]] area of the Resource Overview page, below), and 3) the user has the role "Manager with registration rights" (see the explanation for Role in the "Create a new user" section under the "Configure User accounts" heading of the "Administration Menu" section). A user having the Admin role can grant the "Manager with registration rights" to any user.<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceVisibilityPublic.png' /> Finally, click on the button labeled "Register" to register the resource with the GBIF Registry. (**Note**: If you want this resource to update an existing registered DiGIR, BioCASE, or TAPIR resource, please refer to the section [[Migrate a Resource|IPT2ManualNotes.wiki#migrate-a-resource]] below) Clicking on this button will open a dialog box with which to confirm that you have read and understood the GBIF data sharing agreement, to which a link is given. Click on the check box to indicate that you agree with these terms. Doing so will cause a button labeled "Yes" to appear at the bottom of the dialog box. Click on "Yes" to register the resource, or click on "No" to defer the decision and close the dialog box.<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceVisibilityRegisterAgreement.png' />If the attempt to register is successful, a message will appear at the top of the page saying that the status has been changed to "Registered".

* **Registered** - A resource that has been registered with the GBIF network is discoverable through the GBIF website and the data from the resource can be indexed by and accessed from the GBIF portal. Be aware it can take up to one hour for data to be indexed by GBIF following registration. A summary of information registered with GBIF will appear in the right-hand column when registration is complete.<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceVisibilityRegistered.png' /> If the resource has already been registered, every time the "Publish" button is clicked, its registration information in the GBIF Registry also gets updated. The visibility of a registered resource can not be changed to private. If a resource must be removed from the GBIF Registry, follow the procedure described in the "Delete a Resource" section under the "Resource Overview" heading in the "Manage Resources Menu" section.

#### Migrate a Resource
There is now a way to migrate existing registered DiGIR, BioCASE, TAPIR, or DwC-A resources to an IPT. This allows the existing resource to preserve its GBIF Registry UUID.

The way this works, is that the IPT resource is configured to update the existing registered resource that it corresponds to in the GBIF Registry.

To migrate an **existing registered resource** to your **IPT resource**, simply follow these instructions:

1. Ensure that the **IPT resource's** visibility is public and NOT registered.
2. Determine the owning organisation of the e**xisting registered resource**, and ensure that it is added to the IPT as an organisation, and that it is configured to publish datasets. To do so, please refer to the section "Add Organisation".
3. Select the owning organisation from the drop-down list on the Basic Metadata page. Don't forget to save the Basic Metadata page.
4. Go to the GBIF Dataset page of the **existing registered resource**. Depending on whether you are running the IPT in test or production mode, you would visit <a href='http://www.gbif-uat.org/dataset'>http://www.gbif-uat.org/dataset</a> or <a href='http://www.gbif.org/dataset'>http://www.gbif.org/dataset</a> respectively.
5. Ensure GBIF Dataset page shows the correct **owning organisation** of the **existing registered resource**. Warning: if it shows a different **owning organisation**, the GBIF Registry must be updated before you can proceed with the remaining steps. Send an email to helpdesk@gbif.org alerting them to the update needed.
6. Copy the GBIF Registry UUID from the GBIF Dataset page URL, e.g "5d637678-cb64-4863-a12b-78b4e1a56628".
7. Add this UUID to the list of the **IPT resource's** alternative identifiers on the Additional Metadata page. Don't forget to save the Additional Metadata page.
8. Ensure that no other public or registered resource in your IPT includes this UUID in their list of alternative identifiers. In cases where you are trying to replace a registered resource that already exists in your IPT, the other resource has to be deleted first.
9. On the resource overview page, click the register button. Similar to any other registration, you will have to confirm that you have read and understood the GBIF data sharing agreement before the registration will be executed.
10. **Send an email to helpdesk@gbif.org alerting them about the update**. In your email please enclose:
  1. the name and URL (or GBIF Registry UUID) of your IPT
  2. the name and GBIF Registry UUID of your updated Resource (see line Resource Key on resource overview page, for example: Resource Key d990532f-6783-4871-b2d3-cae3d0cb872b)
  3. (if applicable) whether the DiGIR/BioCASE/TAPIR technical installation that used to serve the resource has been deprecated, and whether it can be deleted from the GBIF Registry

#### Resource Managers
<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceManagers.png' />
Each resource has one or more explicitly assigned managers who are allowed to view, change, and remove the resource. The user who creates a resource automatically has these capabilities. Additional managers can be associated with a resource and given these same capabilities by selecting them by name from the select box in this area of the Resource Overview page, then clicking on the button labeled "Add". Any manager associated with a resource and having the role "Manager with registration rights" may also register the resource and update it in the GBIF registry. All users having the Admin role automatically have complete managerial roles for all resources in the IPT instance. The right-hand column of this area shows the name and email address of the creator of the resource. If any managers have been added, their names and email addresses will be listed under the creator. Any added manager can have the managerial role for the resource removed by clicking on the button labeled "Delete" to the right of the email address in the manager listing.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTManageResourceManagerAdded.png' />

#### Delete a Resource
Clicking on the button labelled "Delete" on the Resource Overview page will remove the resource from the IPT and all of the related documents from the file system.  **It will also delete the resource from GBIF.org!**  

Before deleting the resource, you can make a copy of the data in case you wish to restore it later.  To do this, look on the server inside the IPT's data directory, in the "resources" directory.  Copy the directory (with the short name for the resource) to safe storage, somewhere outside the IPT's data directory.  A resource saved in this way can be re-integrated into the IPT, or integrated with a different IPT instance by following the procedure described in the "Integrate an existing resource configuration folder" section under the "Create a New Resource" heading in the "Manage Resources Menu" section.

There is currently no simple way to remove a resource from the IPT but keep it in GBIF.org (to intentionally "orphan" the dataset).  A workaround, requiring access to the server, is to move/delete the resource directory (as above) and restart the IPT.  Issue: https://github.com/gbif/ipt/issues/1461