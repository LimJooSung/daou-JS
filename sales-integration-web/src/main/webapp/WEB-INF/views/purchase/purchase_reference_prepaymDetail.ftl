<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 매출 조회' />

<@page.base pageTitle>

<!-- 매크로로 지정해서 사용 
	(현 상황에만 맞게. 실제로는 이렇게 사용 x) -->
<#macro tdMacro>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</#macro>

<#include '/include/purchase-left-menu.ftl'>
<!-- contents -->
<div class="container_r">    
   	<!-- title -->
   	<div class="title_b">
   		<em></em>
   		<h2>매출조회</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">매출/매입관리</a> > 
			<a href="">매출조회</a>
		</blockquote>
	</div>
	<!-- //title -->
	
	<!-- 타이틀 및 버튼 -->
	<div>
		<h4 class="f_l">[선불 고객사 매출 상세 내역]</h4>
		<div class="align_r"><a href="" class="btn_md_gray">목록</a></div>
	</div>
	<!-- //타이틀 및 버튼 -->
	
	<!-- 조회기간/사업자번호/고객사명 -->
	<div class="box">
		<span class="align_l"><span class="gray">조회 기간 : 2018년 01월 17일 ~ 2019년 01월 17일</span></span>
		<span class="align_c">
			<span class="mr_15"><b>사업자번호</b> : 111-222-3333</span>
			<span class="mr_15"><b>고객사명</b> : (주)제주어쩌고</span>
		</span>
		<span class="align_r f15"><b>매출 : 244,555원</b></span>
	</div>
	<!-- //조회기간/사업자번호/고객사명 -->
	
	<!-- button -->
	<p class="align_r mt_10"><a href="" class="btn md btn_green">excel</a></p>
	<!-- //button -->
	
	<table class="tb_list_b mt_15">
		<colgroup>
			<col style="width:6%">
			<col style="width:4%">
			<col style="width:5%">
			<col style="width:5%">
			<col style="width:5%">
			<col style="width:5%">
			<col style="width:5%">
			<col style="width:5%">
			<col style="width:5%">
			<col style="width:5%">
			<col style="width:5%">
			<col style="width:5%">
			<col style="width:5%">
			<col style="width:5%">
			<col style="width:5%">
			<col style="width:5%">
			<col style="width:5%">
			<col style="width:5%">
			<col style="width:5%">				
		</colgroup>
		<thead>
			<tr>
				<th rowspan="2">일자</th>
				<th rowspan="2"></th>
				<th colspan="8">사용내역(유상)</th>
				<th colspan="8">사용내역(무상)</th>
				<th rowspan="2">비고</th>
			</tr>
			<tr>
				<th>SMS</th>
				<th>LMS</th>
				<th>MMS</th>
				<th>FAX IN</th>
				<th>FAX OUT</th>
				<th>알림톡</th>
				<th>친구톡</th>
				<th>ETC</th>
				<th>SMS</th>
				<th>LMS</th>
				<th>MMS</th>
				<th>FAX IN</th>
				<th>FAX OUT</th>
				<th>알림톡</th>
				<th>친구톡</th>
				<th>ETC</th>					
			</tr>
		</thead>
		<tbody>
			<tr>
				<td rowspan="2">합계</td>
				<td>건수</td>
				<@tdMacro/>	<!-- 임시 <td> 추가 매크로 -->
			</tr>
			<tr>
				<td>금액</td>
				<@tdMacro/>	<!-- 임시 <td> 추가 매크로 -->
			</tr>	
			<!-- 여기서부터 반복 
				 (원래는 Controller를 거쳐 list를 받아와 해당 정보를 출력하는 것)
			-->
			<#list 1..7 as i>
				<tr>
					<td rowspan="2">2018.01.17</td>
					<td>건수</td>
					<@tdMacro/>	<!-- 임시 <td> 추가 매크로 -->
				</tr>
				<tr>
					<td>금액</td>
					<@tdMacro/>	<!-- 임시 <td> 추가 매크로 -->
				</tr>
			</#list>
		</tbody>
	</table>
</div>
<!-- //contents -->

</@page.base>




