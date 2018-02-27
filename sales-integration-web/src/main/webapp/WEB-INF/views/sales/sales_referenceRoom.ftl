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
		<h2>실적 자료실</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">영업 관리</a> > 
			<a href="">실적 관리</a> > <a href="">실적 자료실</a>
		</blockquote>
	</div>
	<!-- //title -->

	<!-- message -->
	<div class="box_b3 posit_r mb_15">
		<ul class="txt_info">
			<li>조회기간을 설정하여 월별 데이터를 다운로드합니다.</li>
		</ul>
	</div>
	<!-- //message -->

	<!-- 담당자 및 기간 조회 -->
	<table class="tb_list_b">
		<colgroup>
			<col style="width: 40%">
			<col style="width: 60%">
		</colgroup>
		<thead>
			<tr>
				<th>담당자</th>
				<th>조회 기간</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><select class="w100 mr_5">
						<option>전체</option>
				</select> <select class="w100 mr_5">
						<option>영업사원</option>
				</select></td>
				<td><select class="w100">
						<option>2017</option>
				</select> 년 <select class="w80">
						<option>07</option>
				</select> 월 ~ <select class="w100">
						<option>2017</option>
				</select> 년 <select class="w80">
						<option>07</option>
				</select> 월</td>
			</tr>
		</tbody>
	</table>
	<!-- 담당자 및 기간 조회 -->

	<!-- button -->
	<p class="align_r">
		<a href="#" class="btn_md_green ml_10">excel</a>
	</p>
	<!-- //button -->

	<!-- 항목 table -->
	<table class="tb_list_b mt_15">
		<colgroup>
			<col style="width: 5%">
			<col style="width: 15%">
			<col style="width: 80%">
		</colgroup>
		<thead>
			<tr>
				<th><input type="checkbox" /></th>
				<th>No.</th>
				<th>항목</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><input type="checkbox" /></td>
				<td>1</td>
				<td>매출/GP</td>
			</tr>
			<tr>
				<td><input type="checkbox" /></td>
				<td>2</td>
				<td>매출/GP TOP10 업체</td>
			</tr>
			<tr>
				<td><input type="checkbox" /></td>
				<td>3</td>
				<td>직/재판 매출/GP</td>
			</tr>
			<tr>
				<td><input type="checkbox" /></td>
				<td>4</td>
				<td>품목별 발송량/매출/GP</td>
			</tr>
			<tr>
				<td><input type="checkbox" /></td>
				<td>5</td>
				<td>품목별 발송량/매출/GP</td>
			</tr>
		</tbody>
	</table>
	<!-- //항목 table -->
</div>
<!-- contents -->

</@page.base>
