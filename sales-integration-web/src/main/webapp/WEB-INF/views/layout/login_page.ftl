<!-- 로그인 화면에 적용되는 page -->

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
    	<!-- 이 매크로를 사용하는 페이지에서 이 nested를 활용 
			 (여기서는 그냥 nested 위치에 추가되는 정도의 개념)
		-->
		<#nested />
	</body>
</html>
</#macro>
