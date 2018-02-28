<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 실적자료실' />

<@page.base pageTitle>

<#include '/include/sales-left-menu.ftl'>
<!-- contents -->
<div class="container_r">
	<!-- title -->
	<div class="title_b">
		<em></em>
		<h2>담보관리</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">영업 관리</a> > 
			<a href="">담보 관리</a>
		</blockquote>
	</div>
	<!-- //title -->

	<!-- message -->
	<div class="box_b3 posit_r mb_15">
		<ul class="txt_info">
			<li>담보 만기예정 업체를 조회합니다.(기준 30일)</li>
		</ul>
	</div>
	<!-- //message -->

	<!-- 담보관리 table -->
	<table class="tb_list_b">
		<colgroup>
			<col style="width: 10%">
			<col style="width: 15%">
			<col style="width: 15%">
			<col style="width: 15%">
			<col style="width: 15%">
			<col style="width: 15%">
			<col style="width: 15%">
		</colgroup>
		<thead>
			<tr>
				<th>No</th>
				<th>업체명</th>
				<th>사업자번호</th>
				<th>담보금액</th>
				<th>취득일/발행일</th>
				<th>종료일</th>
				<th>수수료부담</th>
			</tr>
		</thead>
		<tbody>
			<!-- 여기서부터 반복 
				 (원래는 Controller를 거쳐 list를 받아와 해당 정보를 출력하는 것)
			-->
			<#list 1..20 as i>
				<tr>
					<td>${i}</td>
					<td>이머니</td>
					<td>1234567890</td>
					<td>2,000,000</td>
					<td>2016-11-01</td>
					<td>2017-10-31</td>
					<#if i%2 = 0>
						<td>거래처</td>
					<#else>
						<td>거래처/다우기술</td>
					</#if>
				</tr>
			</#list>
		</tbody>
	</table>
	<!-- //담보관리 table -->
</div>

</@page.base>




