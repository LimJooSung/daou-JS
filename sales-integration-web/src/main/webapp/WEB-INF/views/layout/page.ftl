<!-- 모든 페이지가 공유하는 common page -->

<#-- baseTitle baseScript baseStyle baseTopMenu -->
<#macro base
	baseTitle='영업관리시스템'
    baseScript='/include/common-script.ftl'
    baseStyle='/include/common-style.ftl'
    baseTopMenu='/include/common-top-menu.ftl'>
    
<!doctype html>
<html lang="ko">
    <head>
        <meta charset="utf-8">
        <title>${baseTitle}!</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    
    <!-- javascript & css 링크 추가 -->
	<#compress>
		<#include '${baseStyle}'>
		<#include '${baseScript}'>
	</#compress>
    
    <body>
		<!-- 공통 영역인 top menu bar 추가 -->
		<#include '${baseTopMenu}'>
		<#nested />
	</body>
</html>
</#macro>

