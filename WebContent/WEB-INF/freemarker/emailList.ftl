${request.contextPath}
<#list page.list as l>
	${l.id}
	<#if l.id==11>
	 asdf
	 <#elseif l.id==10>
	  80
	 <#else>
	  else
	</#if>
	<br/>
	
</#list>
