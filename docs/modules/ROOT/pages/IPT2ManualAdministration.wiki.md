# The IPT User Manual – Administration Menu

This is a section of the main [[IPT Manual|IPT2ManualNotes.wiki]]

# Table of Contents
+ [[Administration Menu|IPT2ManualAdministration.wiki#administration-menu]]
  + [[Configure IPT settings|IPT2ManualAdministration.wiki#configure-ipt-settings]]
  + [[Publish all resources|IPT2ManualAdministration.wiki#publish-all-resources]]
  + [[Configure User accounts|IPT2ManualAdministration.wiki#configure-user-accounts]]
    + [[Create a new user|IPT2ManualAdministration.wiki#create-a-new-user]]
    + [[Modify an existing user|IPT2ManualAdministration.wiki#modify-an-existing-user]]
    + [[Delete a user|IPT2ManualAdministration.wiki#delete-a-user]]
  + [[Configure GBIF registration options|IPT2ManualAdministration.wiki#configure-gbif-registration-options]]
  + [[Edit GBIF registration|IPT2ManualAdministration.wiki#edit-gbif-registration]]
  + [[Configure Organisations|IPT2ManualAdministration.wiki#configure-organisations]]
    + [[Edit organisation|IPT2ManualAdministration.wiki#edit-organisation]]
    + [[Add organisation|IPT2ManualAdministration.wiki#add-organisation]]
  + [[Configure Core Types and Extensions|IPT2ManualAdministration.wiki#configure-core-types-and-extensions]]
    + [[Synchronise Extensions and Vocabularies|IPT2ManualAdministration.wiki#synchronise-extensions-and-vocabularies]]
    + [[View extension details|IPT2ManualAdministration.wiki#view-extension-details]]
    + [[Install extension|IPT2ManualAdministration.wiki#install-extension]]
    + [[Remove extension|IPT2ManualAdministration.wiki#remove-extension]]
    + [[Update extension|IPT2ManualAdministration.wiki#update-extension]]
  + [[View IPT logs|IPT2ManualAdministration.wiki#view-ipt-logs]]

## Administration Menu

This menu is visible only to users having the Admin role.

This section describes each of the functions that are accessible from the Administration menu. Clicking on the Administration menu opens a page (see screen image, below) from which each of these specific administrative tasks can be accessed by clicking on the appropriate button. Note that the button labeled "Organisations" will remain disabled by default until the GBIF registration options have been set.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v205/IPTAdminBeforeRegistration.png' />

### Configure IPT settings
This page allows a user having the Admin role to make and change settings for the characteristics of this IPT instance.
<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v233/IPTAdminConfigIPT2.png' />

* **Base URL** - This is the URL that points to the root of this IPT installation. The URL is set automatically during the installation of the IPT. The Base URL must be accessible via the Internet in order for the IPT to function fully. Configuring the IPT Base URL to use localhost, for example, will not allow the instance of the IPT to be registered with GBIF, will not allow the IPT to be associated with an organisation and will not allow the resources to be publicly accessible.
* **Note**: The IPT tests the Base URL for accessibility from the client computer when the IPT Settings are saved. If the IPT is not accessible at the given Base URL, the IPT will display a warning message and the changes will not be saved. The procedure to change the Base URL if the new URL is not yet functional (such as a port change that requires the IPT to be restarted) is given below:
  * log out of and shut down the IPT.
  * in the data directory for the IPT, open the file config/ipt.properties with a simple text editor - one that does not add extra codes, such as NotePad, TextEdit, vi, etc. (not Microsoft Word).
  * in the ipt.properties file, change the line starting with "ipt.baseURL" to the new URL with the new port, using the backslash to escape the colon character. For example, enter <code>ipt.baseURL=http\\://test.edu\\:7001/ipt</code> for <a href='http://test.edu:7001/ipt'>http://test.edu:7001/ipt</a>.
  * restart the IPT in the servlet container.
  * update the metadata for the IPT as described in the next section of this user manual entitled "Publish all resources".
* **Proxy URL** - If the server on which the IPT is installed is routed through a proxy server or virtual host, enter the proxy as a URL in the format protocol:host:port, for example <a href='http://proxy.gbif.org:8080'>http://proxy.gbif.org:8080</a>.
* **Google Analytics key** - If you would like to track the use of your instance of the IPT with Google Analytics, you can enable it to do so by entering your Google Analytics key in this text box. This is distinct from enabling GBIF to track the use of this instance of the IPT, which can be enabled using the check box described below. For more information about Google Analytics, see <a href='http://www.google.com/intl/en/analytics/index.html'>http://www.google.com/intl/en/analytics/index.html</a>.
* **Enable GBIF Analytics** - Check this box if you would like to enable GBIF to track this instance of the IPT with Google Analytics.
* **Debugging Mode** - Check this box if you would like the IPT to begin logging in the verbose debugging mode. Debugging mode is generally unnecessary unless you are trying to track a problem with the IPT. The IPT log file is located in the file debug.log in the IPT's data directory. The data directory is set during the first step in the installation process (see the Getting Started Guide). Refer to the information under the "View IPT logs" heading of the "Administration Menus" section for an easy way for users having the Admin role to view the debug.log file.
* **Archival Mode** - Check this box if you want your IPT to archive all published versions for all resources. It will enable you to track a resource's version history. If unchecked, older versions will be overwritten with the latest. Beware not to run out of disk space.
* **IPT Server Location** - This area of the page allows the Admin to set the geographic coordinates (latitude and longitude) of the location of the server on which the IPT is installed. Setting these coordinates allows GBIF to map the location of this among other registered IPT installations around the world.

### Publish all resources
This option is an administrative action just like the Publish button, only it publishes ALL resources. Therefore for each resource, it creates a new DWCA, EML, and RTF, and broadcasts the update to the Registry and via RSS. In addition, it also updates the IPT and registered resources' metadata in the Registry. Click on this button if multiple resources have been updated and you want to publish a new release for all of them instead of publishing them individually.

### Configure User accounts
This page allows users having the Admin role to create, modify, and delete user accounts. When the page is opened, it shows a table of existing users and basic information about them including their names, email addresses, roles, and the date and time of their last logins.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTAdminUserAccounts.png' />
#### Create a new user
A new user can be created by clicking on the button labeled "Create" below the list of existing users. This will open a page on which the information about the user can be entered, after which the new user can be created by clicking on the button labeled "Save".
<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTAdminUserCreateUser.png' />

* **Email** - The current email address of the user is used as an identifier to log in within the IPT and can not be changed.
* **Note**: If the user requires a change of email address, the recommended procedure is to create a new user account with the new email address, then delete the user account having the antiquated email address.
* **First name** - The first name of the user.
* **Last name** - The last name of the user.
* **Role** - The role the user will have with respect to this installation of the IPT. Admin users can make changes to all aspects of the instance of the IPT. Users having the role "Manager without registration rights" are able to create, edit, remove, and manage resources they have created or have been invited to manage within the IPT instance. Users having the role "Manager with registration rights" have the additional capability to register resources with the GBIF network. Other users can log in to the IPT and view resources, but cannot make any changes.
* **Password** - The password for the user must consist of at least four characters and should be made secure and safe from loss, as it is not recoverable from the IPT application.
* **Note**: If a user's password is lost, it can be reset to an automatically generated new value by a user having the Admin role. It is the responsibility of the Admin user to communicate this new password to the user for whom it was reset. The user can then change the password to the desired value by entering it in the IPT Account page accessible through the "Account" link in the header in the upper right corner of every page after logging in.
* **Verify password** - An exact copy of the password as entered in the Password text box to confirm that it was entered as intended.

#### Modify an existing user
Information about users can be changed in the user details page after selecting the name of the user you wish to modify from the list of existing users. The user detail page shows all of the information about that user. The first name, last name, and role for the user can be changed by entering the new values and clicking on the button labeled "Save". Details of the information to be entered on this page can be found in the explanations in the "Create a new user" section, above.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTAdminUserEditUser.png' />

* **Reset password** - If a user forgets a password, clicking on the button labeled "Reset Password" can generate a new one, after which a new password is given in an information message at the top of the page.
* **Note**: The IPT does not inform the affected user of this change, so it is the responsibility of the Admin who resets the password to inform the user of the new one.

#### Delete a user
Users accounts that are no longer necessary can be deleted using the user detail page accessed by selecting the name of the user you wish to delete from the list of existing users. On the bottom of the user detail page, click on the button labeled "Delete" to remove this user account. There are several conditions under which a user cannot be deleted:
  1. An admin cannot delete their own account while logged in therefore it must be deleted by another admin.
  2. The IPT installation must always have at least one user having the Admin role, so the last remaining Admin can not be deleted. To remove that user, first create a new user having the Admin role and log in with that new user to delete the other Admin account.
  3. Each resource must have at least one associated user having either the Admin or one of the Manager roles, so the last remaining Manager of a resource can not be deleted. To remove that user, first associate another user having the Admin or one of the Manager roles with any resources for which the user you wish to delete is the last remaining manager. Refer to the information under [[Resource Managers|IPT2ManualNotes.wiki#resource-managers]] to see how new managers can be assigned.
  4. A user cannot be deleted if it is the creator or one or more resources. To restrict the user's access to their resources, downgrade their role to type User. Refer to the [[Modify an existing user|IPT2ManualNotes.wiki#modify-an-existing-user]] section for information about how to change a user's role.

## Configure GBIF registration options
This page allows a user to register the IPT instance in the GBIF Registry if this has not already been done. The IPT must be registered before any of the IPTs resources can be associated with an organisation (see the information under the "Configure Organisations" heading in the "Administration Menu" section) or published (see the [[Published Versions|IPT2ManualNotes.wiki#published-versions]] section). Information about a registered IPT and its public resources become searchable through the Registry's services, and the data from the public resources published on the IPT can be indexed for searching via the GBIF portal. If the IPT has already been registered, the registered information for the IPT can be edited opening the [[Edit GBIF registration|IPT2ManualNotes.wiki#edit-gbif-registration]] page.

The first step to register with GBIF is to test that the IPT has a valid URL that can be reached by the GBIF services. To run this test, click on the button labeled "Validate".

If the validation test is unsuccessful, an error message will suggest the nature of the problem with the communication between the GBIF Registry and the IPT. Causes for an error include:

* **No Internet connectivity** - The IPT requires an active Internet connection to function properly. An error will occur if connectivity to the Internet is lost when the button labeled "Validate" button is clicked. Restore Internet connectivity before trying to proceed with registration.
* **Incorrect Base or Proxy URL** - The Base URL is automatically detected and configured during the IPT setup process (see the "IPT Setup II" section). Changes in the configuration of the server on which the IPT is installed could require a change in the Base URL or the Proxy URL. The Base and Proxy URLs can be changed on the Configure IPT Settings page (see the explanations for Base URL and Proxy URL in the [[Configure IPT settings|IPT2ManualNotes.wiki#configure-ipt-settings]] section).
* **Firewall** - If the Internet connection is live, a firewall may be preventing connections to the Base URL or Proxy. Change the firewall or proxy settings to all outside connections.
* **GBIF Registry inaccessible** - If an error message suggests that none of the previous errors has occurred and yet there is a failure to communicate with the GBIF Registry, please report that there are problems connecting to the GBIF registry to the GBIF help desk (helpdesk@gbif.org).


<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTAdminRegistrationStep1.png' />

If the IPT passes the validation step above, a form showing additional information required for registration is presented. In this step, the IPT instance is associated to an organization. **The organization must already be registered in the GBIF Registry, and its password must be known**. For explanations of the fields and selections on this form, refer to the information below.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTAdminRegistrationStep2.png' />

Following are explanations of the specific information to select or enter:
* **Organisation** - the select box contains a list of organisations in the GBIF registry. Select the single organisation with which this IPT instance will be associated. If you are unable to find the organisation you seek on the list, use the GBIF Registry (<a href='http://www.gbif.org/publisher/search'>http://www.gbif.org/publisher/search</a>) to determine if the organisation is registered under a name other than what you expected. If the organisation is not yet registered with GBIF, please contact the GBIF Help Desk to register the organisation before proceeding with the registration of the IPT. Click on the help icon and then click on the helpful GBIF Help Desk link to open up an email template in your default mail client that you just have to fill in the required information before sending.
* **Organisation's password** - the correct password registered in the GBIF registry for the selected organisation must be entered in this text box to verify that the user has the authorisation required to associate the IPT instance with that organisation. If you do not have to the organisation's password, you can request it from the registered contact. A link to the primary contact on record for the organisation will appear below the Organisation's Password text box after selecting an organisation in the Organisation select box. The password will be used to authenticate the IPT registration when the button labeled "Save" is clicked.
* **Alias** - enter a convenient name or code to represent the organisation within this instance of the IPT. The alias will appear in place of the full organisation name in organisation select boxes in the IPT user interfaces.
* **Can publish resources?** - check this box if the selected organisation can also be associated with resources published on this instance of the IPT. If left unchecked, the organisation will not appear in the list of organisations available to associate with a resource. Leave unchecked only if this organisation is only the host for the IPT instance, not for any of the resources published through the IPT instance.
* **Title for the IPT installation** - enter the title of the IPT installation to be used in the GBIF Registry. The title is the primary information used for listing and searching for the IPT installations in the Registry.
* **Description for this IPT installation** - enter the description of the IPT installation to be used in the GBIF Registry. The description is meant to help users of the Registry to further understand the significance of the IPT instance by allowing further information beyond the specific metadata fields to be shared.
* **Contact Name** - enter the name of the person who should be contacted for information about the IPT installation. This person should be someone who has an Admin role in the IPT instance and knows the technical details about the installation.
* **Contact Email** - enter the current email address of the person whose name is given in the Contact Name.
* **IPT password** - enter the password that should be used to edit the entry for this IPT installation in the GBIF Registry.
* **Save** - when all of the information above is entered or selected, click on the button labeled "Save" to register the IPT installation with the GBIF Registry. After successfully registering the IPT installation, the Configure GBIF registration page will show that the IPT has already been registered and associated with the selected organisation. Also, after a successful registration, the Configure Organisations page will become accessible from the Administration menu.
* **Note**: Any changes to the IPT registration (rather than resource registration - for which see the "Visibility" section under the "Resource Overview" heading in the "Manage Resources Menu" section as well as the information under the "Publish all resources" heading in the "Administration Menu" section) will have to be done in consultation with the GBIF Help Desk (helpdesk@gbif.org).

## Edit GBIF registration
After the IPT has been registered, this page allows a user to update the IPT registration information. The update will ensure the IPT and all its registered resources are in sync with the GBIF Registry. **Administrators should run an update each time the base URL of the IPT changes**. Administrators can also run an update in order to update the title, description, contact name, and contact email of the IPT instance. This page does not support changing the hosting organisation. To do so, administrators must contact the GBIF Helpdesk (helpdesk@gbif.org) directly.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTAdminEditRegistration.png' />

## Configure Organisations
This page is unavailable until the IPT instance has been successfully registered in the GBIF Registry (see the information under the "Configure GBIF registration" heading of the "Administration Menu" section). Once registered, this page shows a list of organisations that can be associated with resources in this IPT instance. An IPT that hosts data for organisations other than the one to which it is associated must have the additional organisations configured before they can be used.

An IPT capable of assigning DOIs to resources must also have an organisation configured with a DataCite account. To be configured with a DataCite account, the organisation does not necessary have to be able to publish resources (be associated with resources). Only one DataCite account can be used to register DOIs at a time, and the IPT's archival mode must also be turned on (please refer to the [[Configure IPT settings|IPT2ManualNotes.wiki#configure-ipt-settings]] section to learn more about the archival mode). The list of organisations shows which organisations have been configured with DataCite accounts, and which one has been selected to register DOIs for all resources in this IPT instance.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTAdminOrgs.png' />

### Edit organisation
On this page a user having the Admin role can edit the organisation. Click on the button labeled "Edit" to open the page containing the details of the selected organisation. For explanations of the fields and selections on this form, refer to the information below.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTAdminOrgsEditOrg.png' />

Following are explanations of the specific information to select or enter:
* **Organisation name** - the title of the organisation as registered in the GBIF Registry. **Note**: this cannot be changed.
* **Organisation password** - the password that should be used to edit the entry for this organisation in the GBIF Registry.
* **Organisation alias** - a name given to the organisation for convenience within the IPT instance; aliases, rather then the full Organisation Name appear in Organisation selection lists in the IPT.
* **Can publish resources** - this checkbox indicates whether the organisation can be associated with resources in the IPT. Only those organisations having this box checked will appear in lists to be associated with resources.
* **DOI registration agency** - the type of account used to register DOIs for resources; can be either DataCite. **Note**: an account is issued to the organisation after it signs an agreement with a DataCite member, which gives it permission to register DOIs under one or more prefixes (e.g. 10.5072) in one or more domains (e.g. gbif.org). **Note**: confirm that the account can actually register DOIs under the IPT's domain/base URL otherwise registrations via the IPT won't work.
* **Account username** - the username (symbol) of the DataCite account issued to the organisation.
* **Account password** - the password of the DataCite account issued to the organisation.
* **DOI prefix/shoulder** - the preferred DOI prefix/shoulder used to mint DOIs. This prefix is unique to the account issued to the organisation. Note: always use a test prefix (see https://blog.datacite.org/test-prefix-10-5072-retiring-june-1/) when running the IPT in test mode.
* **Account activated** - this checkbox indicates if this DataCite account is the only account used by the IPT to register DOIs for datasets. Only one DataCite account can be activated at a time.

### Add organisation
Organisations are not available to be associated with resources until a user having the Admin role adds them. Click on the button labeled "Add" to open a page on which an additional organisation can be selected from the GBIF Registry to be used in this instance of the IPT. For explanations of the fields and selections on this page, refer to the information under the "Edit Organisation" section above. After the desired organisation is selected and all other data entered, including the password for the organisation, click on the button labeled "Save" to add the selected organisation to the list.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTAdminOrgsAddOrg.png' />

## Configure Core Types and Extensions
This page allows a user having the Admin role to enable the instance of the IPT to import and share various pre-defined types of data from the GBIF Registry. Each type includes properties (fields, terms) that support a specific purpose. For example, the Darwin Core Taxon Core Type supports information pertaining to taxonomic names, taxon name usages, and taxon concepts and allows the IPT to host resources for taxonomic and nomenclatural checklists. A distinction is made between Core Types and extensions. Core types provide the basis for data records, (Occurrence, Taxon, and Event for example) while extensions provide the means to associate additional data with a record of the Core Type. Only one Core Type can be selected for a given resource as explained under the "Darwin Core Mappings" heading of the "Resource Overview" section.

Vocabularies contain lists of valid values that a particular term in a Core Type or Extension can take. For example, the <a href='http://rs.gbif.org/vocabulary/dwc/basis_of_record.xml'>Darwin Core Type vocabulary</a> contains all of the standard values allowed in the Darwin Core term <a href='http://rs.tdwg.org/dwc/terms/#basisOfRecord'>basisOfRecord</a>.

Following the lists of installed Core Types and Extensions, there is a section labeled "Synchronise Extensions and Vocabularies" having a single button labeled "Synchronise". The latest versions of Core Types and Extensions that exist in the GBIF Registry but have not yet been installed are listed below the Vocabularies section.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v23/IPTAdminExtensions.png' />

The lists of extensions (installed and not installed) each have two columns. The left-hand column shows the name of the extension as a link and a button labeled either "Install" or "Remove". If the extension is out-of-date, another button labeled "Update" will also appear. In the right-hand column is a summary of the information about the extension, including a brief description of the type of data the extension is meant to accommodate, a link to more information about the extension if it exists, the date it was issued (released), the number of properties (fields, terms) in the extension, the name of the extension, its namespace, RowType, and keywords. For more information about these attributes of an extension, see the documentation on Darwin Core Archives at <a href='http://rs.tdwg.org/dwc/terms/guides/text/'>http://rs.tdwg.org/dwc/terms/guides/text/</a>.
Following are the actions that can be taken with respect to extensions:

### Synchronise Extensions and Vocabularies
An extension can make use of lists of terms of predefined values, known as controlled vocabularies. Periodically these vocabularies may also change (e.g. if new translations have been added) and require updating in the IPT. Click on the button labeled "Synchronise" to synchronise existing vocabularies with the GBIF Registry. After the update is complete, a message will indicate if the synchronisation was successful or if there were any errors.

### View extension details
The title of each extension in the first column is a link to a detail page for that extension. The detail page shows all of the summary information that can be seen in the right-hand column of the extensions list as well as the detailed description, references, and examples for each of the properties in the extension.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v23/IPTAdminExtensionsDetail.png' />

For properties that have controlled vocabularies, the property information in the right-hand column will contain the name of the vocabulary as a link next to the label "Vocabulary:". Clicking on the link will open a detail page for the vocabulary, with a summary of the vocabulary at the top and a table of the valid values with further detailed information such as preferred and alternate terms and identifiers.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v23/IPTAdminExtensionsDetailVocabulary.png' />

### Install extension
For any of the extensions that have not yet been installed in the IPT, there is a button labeled "Install" under the extension name in the left-hand column. Click on this button to retrieve the extension from the GBIF registry and install it in the IPT.

### Remove extension
For any extension that has already been installed in the IPT, it can be removed by clicking the button labeled "Remove". Extensions that are in use to map data for any resource in the IPT cannot be removed. Any attempt to do so will show an error message and a list of resources that use the extension in a mapping.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v23/IPTAdminExtensionsDetailVocabulary.png' />

### Update extension
For any extension that has already been installed in the IPT, and is out-of-date, it can be updated by clicking the button labeled "Update". Updating an extension makes it possible to take advantage of any new terms and new vocabularies. During an update, existing mappings to deprecated terms will be removed, and existing mappings to deprecated terms that have been replaced by another term will be automatically updated. Following the update, all affected resources should be reviewed and republished.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v23/IPTAdminExtensionsUpdate.png' />

## View IPT logs
Messages generated from actions taken while running the IPT are logged to files for reference in the directory called "logs" within the IPT data directory (see the information under the "IPT Settings" heading in the "Administration Menu" section). The View IPT logs page shows messages from the file called admin.log, which contains only those log messages that have a severity of WARNING or greater (such as errors). The complete log of messages (contained in the file called debug.log) can be opened and viewed by clicking on the link labeled "complete log file". The contents of the complete log file may be useful when reporting an apparent bug.

<img src='https://github.com/gbif/ipt/wiki/gbif-ipt-docs/ipt2/v22/IPTAdminLogs.png' />