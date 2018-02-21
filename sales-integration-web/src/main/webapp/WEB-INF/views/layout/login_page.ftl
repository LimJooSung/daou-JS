<#-- baseTitle baseScript baseStyle -->
<#macro base baseTitle='영업관리시스템'
    baseScript='/include/common-script.ftl'
    baseStyle='/include/common-style.ftl'>
<!doctype html>
<html lang="ko">
    <head>
        <meta charset="utf-8">
        <title>${baseTitle}!</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <#nested />
    </body>
</html>
<#compress>
<#include '${baseStyle}'>
<#include '${baseScript}'>
</#compress>
</#macro>


<#macro default defaultTitle='영업관리시스템'
    defaultScript='/include/common-script.ftl'
    defaultStyle='/include/common-style.ftl'
    defaultTopMenu='/include/common-top-menu.ftl'
    >
    <@base defaultTitle defaultScript defaultStyle>
        <#include '${defaultTopMenu}'>
        <#nested />
    </@base>
</#macro>