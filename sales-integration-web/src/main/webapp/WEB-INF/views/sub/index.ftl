<#import "/layout/page.ftl" as page>

<#assign pageTitle='영업관리시스템 - 서브' />
<#-- <#assign pageScript='/include/other-script.ftl' /> -->
<#-- <#assign pageStyle='/include/other-style.ftl' /> -->

<@page.default pageTitle>
<#list menuItem.subMenu as menu>
    ${menu.id} / ${menu.link}
</#list>
</@content.base>
</@page.default>
