<#macro base>
    <link rel="stylesheet" type="text/css" href="css/sales.css" />
    
    <!-- cdn 방식으로 css 삽입 -> css가 더 이상해짐 (sales.css로만 사용하는 듯) -->
    <#--<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">-->
</#macro>

<#macro custom>
    <@base />
    <#nested />
</#macro>

