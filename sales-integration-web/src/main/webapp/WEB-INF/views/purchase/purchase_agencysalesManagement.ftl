<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 영업대행사 매출관리' />

<@page.base pageTitle>

<#include '/include/purchase-left-menu.ftl'>
<!-- contents -->
<div class="container_r">    
   	<!-- title -->
   	<div class="title_b">
   		<em></em>
   		<h2>영업대행사 매출관리</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">매출/매입관리</a> > 
			<a href="">영업대행사 매출관리</a>
		</blockquote>
	</div>
	<!-- //title -->
	
	<!-- 검색 -->
	<div class="box_grey">
		<div class="form_group">
			<p class="align_c">
				<select class="w100">
					<option value="1">2017</option>
				</select> 년
				<select class="w80">
					<option value="1">09</option>
				</select> 월	
				<select class="w200 ml_10">
					<option>검색조건 선택</option>
				</select>
				<input class="w200" type="text" placeholder="검색내용 입력">
				<a class="btn_sm_sch_black r3" href="">검색</a>				
			</p>
		</div>	
	</div>
	<!-- 검색 -->
	
	<!-- 버튼 -->
	<div class="align_r mb_15">
		<a href="" class="btn md btn_green">excel</a>
	</div>
	<!-- //버튼 -->	
	
	<table class="tb_list_b">
		<colgroup>
			<col style="width:9%">
			<col style="width:9%">
			<col style="width:9%">
			<col style="width:9%">
			<col style="width:9%">
			<col style="width:9%">
			<col style="width:9%">
			<col style="width:9%">
			<col style="width:9%">
			<col style="width:9%">
			<col style="width:9%">
		</colgroup>
		<thead>
			<tr>
				<th>서비스</th>
				<th>영업대행사명</th>
				<th>영업대행사관리자 ID</th>
				<th>팀</th>
				<th>담당자</th>
				<th>영업대행사고객사</th>
				<th>ID</th>
				<th>사업자번호</th>
				<th>매출</th>
				<th>GP(%)</th>
				<th>계산서</th>
			</tr>
		</thead>
		<tbody>
			<tr>
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
			</tr>
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




