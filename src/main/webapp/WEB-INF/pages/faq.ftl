[#ftl]
[#include "/WEB-INF/pages/inc/header.ftl"/]
 <title>[@s.text name="menu.faq"/]</title>
 [#assign currentMenu = "faq"/]
[#include "/WEB-INF/pages/inc/menu.ftl"/]

<main class="container">
	<div class="my-3 p-3 bg-body rounded shadow-sm">

		<div class="">
			<div class="versionTitle">
			<h1 class="border-bottom pb-2 mb-2 mx-md-4 mx-2 pt-2 text-gbif-header text-center">[@s.text name="faq.title"/]</h1>
			</div>
			<div id="resourcelogo">
			</div>
			<p class="mx-md-4 mx-2">[@s.text name="faq.intro"/]</p>
		</div>
		
		<div class="mx-md-4 mx-2">
			<br />
			<b>[@s.text name="faq.question.ipt"/]</b>
			<br /><br />
			[@s.text name="faq.question.ipt.text"/]
			<br /><br /><br />
			<b>[@s.text name="faq.question.ceiba"/]</b>
			<br /><br />
			[@s.text name="faq.question.ceiba.text"/]
			<br /><br /><br />
			<b>[@s.text name="faq.question.userType"/]</b>
			<br /><br />
			[@s.text name="faq.question.userType.text"/]
			<br /><br /><br />
			<b>[@s.text name="faq.question.howToQuery"/]</b>
			<br /><br />
			[@s.text name="faq.question.howToQuery.text"/]
			<br /><br /><br />
			<b>[@s.text name="faq.question.request"/]</b>
			<br /><br />
			[@s.text name="faq.question.request.text"/]
			<br /><br /><br />
			<b>[@s.text name="faq.question.addData"/]</b>
			<br /><br />
			[@s.text name="faq.question.addData.text"/]
			<br /><br /><br />
			<b>[@s.text name="faq.question.gotAccountSo"/]</b>
			<br /><br />
			[@s.text name="faq.question.gotAccountSo.text"/]
			<br /><br /><br />
			<b>[@s.text name="faq.question.citation"/]</b>
			<br /><br />
			[@s.text name="faq.question.citation.text"/]
			<br /><br />
			<br /><br />
			<b>[@s.text name="faq.glosary.title"/]</b>
			<br /><br /><br />
			[@s.text name="faq.glosary.name"/]
			<br /><br />
			[@s.text name="faq.glosary.type"/]
			<br /><br />
			[@s.text name="faq.glosary.subtype"/]
			<br /><br />
			[@s.text name="faq.glosary.records"/]
			<br /><br />
			[@s.text name="faq.glosary.resource"/]
			<br /><br />
			[@s.text name="faq.glosary.checklistResource"/]
			<br /><br />
			[@s.text name="faq.glosary.biologyRecordResource"/]
			<br /><br />
			[@s.text name="faq.glosary.metadataResource"/]
			<br /><br />
			[@s.text name="faq.glosary.darwinCoreFile"/]
			<br /><br />
			[@s.text name="faq.glosary.rtfFile"/]
			<br /><br />
			[@s.text name="faq.glosary.darwinCore"/]
			<br /><br />
			[@s.text name="faq.glosary.primaryInformation"/]
			<br /><br />
			[@s.text name="faq.glosary.secondaryInformation"/]
			<br /><br />
			[@s.text name="faq.glosary.metadata"/]
			<br /><br />
			[@s.text name="faq.glosary.eml"/] 
			<br /><br />
			[@s.text name="faq.glosary.private"/]
			<br /><br />
			[@s.text name="faq.glosary.public"/]
			<br /><br />
			[@s.text name="faq.glosary.visibility"/]
			<br /><br /><br />
		</div>
	</div>
</main>

[#include "/WEB-INF/pages/inc/footer.ftl"/]
