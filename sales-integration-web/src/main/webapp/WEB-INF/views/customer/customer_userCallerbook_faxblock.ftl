<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - FAX 차단 통계' />

<@page.base pageTitle>

<#include '/include/customer-left-menu.ftl'>
<!-- contents -->
<div class="container_r">
   	<!-- title -->
   	<div class="title_b">
   		<em></em>
   		<h2>FAX 차단 통계</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">고객 관리</a> > 
			<a href="">발신번호 관리</a> > 
			<a href="">FAX 차단 통계</a>
		</blockquote>
	</div>
	<!-- //title -->
	
	<!-- message -->
	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>FAX 발신번호 차단 내역을 조회합니다.(비즈뿌리오)</li>
		</ul>					
	</div>
	<!-- //message -->
	
	<!-- 일자 시간 검색 -->
	<div class="box_grey box_search">
		<div class="form_group">
			<p class="align_c">
				<label class="bul mr_15">일자</label>
				<select id="year" class="w80">
					<option value="1">2017</option>
				</select> 년
				<select id="month" class="w60">
					<option value="">00</option>
				</select> 월
				<select id="day" class="w60">
					<option value="">00</option>
				</select> 일	
				<select id="year2" class="w80">
					<option value="">2017</option>
				</select> 년					
				<label class="bul ml_30 mr_15">시간</label>
				<select id="time" class="w80">
					<option value="1">00</option>
				</select> 시
				<a href="#" class="btn_sm_sch_black r3">검색</a>
			</p>
		</div>
	</div>
	<!-- //일자 시간 검색 -->
	
	<!-- table list -->
	<table class="tb_list_b">
	   <colgroup>
			<col style="width:13.2%">
			<col style="width:13.2%">
			<col style="width:15.2%">
			<col style="width:15.2%">
			<col style="width:15.2%">
			<col style="width:13.2%">
			<col style="width:14.2%">				
		</colgroup>
		<thead>
			<tr>
				<th>ID</th>
				<th>업체명</th>
				<th>담당부서<br />
					<select id="partSelect" class="w100">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option> 
						<option value="4">4</option>
						<option value="5">5</option>
					</select>						
				</th>
				<th>담당자<br />
					<select id="managerSelect" class="w100">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option> 
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
				</th>
				<th>구분<br />
					<select id="cateSelect" class="w100">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option> 
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
				</th>
				<th>발신번호</th>
				<th>차단 건수(총 XXX건)</th>
			</tr>
		</thead>
		<tbody>
			<!-- 여기서부터 반복 
				 (원래는 Controller를 거쳐 list를 받아와 해당 정보를 출력하는 것)
			-->
			<#list 1..15 as i>
				<tr>
					<td>daou</td>
					<td>다우기술</td>
					<td>MSG1</td>
					<td>김현진</td>
					<td>사전등록제 미등록</td>
					<td>0212345678</td>
					<td>133</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<!-- //table list -->
	
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




