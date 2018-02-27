<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 예상매입 조회' />

<@page.base pageTitle>

<#include '/include/purchase-left-menu.ftl'>
<!-- contents -->
<div class="container_r">    
   	<!-- title -->
   	<div class="title_b">
   		<em></em>
   		<h2>예상매입조회</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">매출/매입관리</a> > 
			<a href="">매입관리</a>> 
			<a href="">예상매입조회</a>
		</blockquote>
	</div>
	<!-- //title -->
	
	<!-- 검색 -->
	<table class="tb_list_b mb_no">
		<colgroup>
			<col style="">
			<col style="">
			<col style="width:30%">
			<col style="">
		</colgroup>
		<tr>
			<th><b class="txt_c_red">*</b> 청구 월</th>
			<th>담당부서</th>
			<th>매입처</th>
			<th rowspan="2" class="align_l"><a href="#" class="btn_sch_black r3">검색</a></th>
		</tr>
		<tr>
			<td>
				<select class="w100">
					<option value="">2017</option>
				</select> 년
				<select class="w80">
					<option value="">2017</option>
				</select> 월					
			</td>
			<td>
				<select class="w100">
					<option value="">전체</option>
				</select>                
			</td>
			<td>
				<select class="w100">
					<option value="">전체</option>
				</select>                
			</td>        
		</tr>
	</table>
	<!-- 검색 -->
	
	<p class="mb_15 red">* 누적 발송량으로 예상된 수치입니다. (실제 청구금액과 다름)</p>
	
	<div class="cont_area p100">
		<div class="mr_15 f_l p40">
			<table class="tb_list2_a">
				<colgroup>
					<col style="width:30%">
					<col style="width:70%">
				</colgroup>
				<tbody>
					<tr>
						<th>MSG1</th>
						<td>123,234,233원</td>
					</tr>
					<tr>
						<th>MSG2</th>
						<td>123,234,233원</td>
					</tr>				
				</tbody>
			</table>
		</div>
		<div class="f_l p50">
			<table class="tb_list2_a">
				<colgroup>
					<col style="width:12.5%">
					<col style="width:12.5%">
					<col style="width:12.5%">
					<col style="width:12.5%">
					<col style="width:12.5%">
					<col style="width:12.5%">
					<col style="width:12.5%">
					<col style="width:12.5%">
				</colgroup>
				<tbody>
					<tr>
						<th>SMS</th>
						<td>10,000,000</td>
						<th>URL</th>
						<td>10,000</td>
						<th>LMS</th>
						<td>10,000,000</td>
						<th>MMS</th>
						<td>10,000,000</td>						
					</tr>
					<tr>
						<th>SMS</th>
						<td>10,000,000</td>
						<th>URL</th>
						<td>10,000</td>
						<th>LMS</th>
						<td>10,000,000</td>
						<th>MMS</th>
						<td>10,000,000</td>						
					</tr>					
				</tbody>
			</table>
		</div>
	</div>
	
	<!-- button -->
	<p class="f_r mb_15">
		<a href="" class="btn md btn_green">excel</a>
	</p>
	<!-- //button -->
	
	<table class="tb_list_b">
		<colgroup>
			<col style="">
			<col style="">
			<col style="">
			<col style="">
			<col style="">
			<col style="">
			<col style="">
			<col style="">
			<col style="">
			<col style="">
			<col style="">
			<col style="">				
		</colgroup>
		<thead>
			<tr>
				<th rowspan="2">청구월</th>
				<th rowspan="2">매입처명</th>
				<th rowspan="2">팀구분</th>
				<th colspan="4">누적발송량</th>
				<th colspan="4">예상발송량(월)</th>
				<th>예상매입액</th>
			</tr>
			<tr>
				<th>SMS</th>
				<th>URL</th>
				<th>LMS</th>
				<th>MMS</th>
				<th>SMS</th>
				<th>URL</th>
				<th>LMS</th>
				<th>MMS</th>
				<th>계</th>
			</tr>
		</thead>
		<tbody>
			<!-- 여기서부터 반복 
				 (원래는 Controller를 거쳐 list를 받아와 해당 정보를 출력하는 것)
			-->
			<#list 1..10 as i>
				<tr>
					<td>2018.09</td>
					<td>SKT</td>
					<td>MSG1</td>
					<td>100</td>
					<td>200</td>
					<td>300</td>
					<td>400</td>
					<td>110</td>
					<td>210</td>
					<td>310</td>
					<td>410</td>
					<td>30,760</td>
				</tr>
			</#list>
		</tbody>
	</table>

	<!-- paging -->
	<div class="paging_b">
		<span>
			<button title="처음페이지" class="first" type="button">&lt;&lt;</button>
			<button title="이전 10페이지" class="pre" type="button">&lt;</button> 
		</span>
		<span class="page">
			<span class="here">1</span>
			<!-- 버튼을 반복해서 출력 -->
			<#list 2..10 as i>
				<button type="button">${i}</button>
			</#list> 
		</span>
		<span>       
			<button title="다음 10페이지" class="next" type="button">&gt;</button>
			<button title="마지막페이지" class="last" type="button">&gt;&gt;</button>
		</span>
	</div> 		
	<!-- //paging -->				
</div>
<!-- //contents -->

</@page.base>




