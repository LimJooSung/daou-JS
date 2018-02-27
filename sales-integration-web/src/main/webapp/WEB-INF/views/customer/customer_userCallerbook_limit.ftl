<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 발신번호 한도' />

<@page.base pageTitle>

<#include '/include/customer-left-menu.ftl'>
<!-- contents -->
<div class="container_r">    
   	<!-- title -->
   	<div class="title_b">
   		<em></em>
   		<h2>발신번호 한도</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">고객 관리</a> > 
			<a href="">발신번호 관리</a> > 
			<a href="">발신번호 한도</a>
		</blockquote>
	</div>
	<!-- //title -->
	
	<!-- message -->
	<div class="box_b3 mb_15">
  		<ul class="txt_info">
   			<li>ID별 등록된 발신번호 수를 확인합니다.</li>
   			<li>ID별 발신번호 한도를 설정합니다.</li>
		</ul>
	</div>
	<!-- //message -->
	
	<!-- 아이디 및 서비스 선택 후 검색 -->
	<div class="box_grey box_search">
		<p class="align_c">
			<select id="idselect" class="w100">
				<option value="1">ID</option>
				<option value="2">1</option>
				<option value="3">2</option>
				<option value="4">3</option>
				<option value="5">4</option>
			</select>
			<input id="input1" type="text" placeholder="검색 내용 입력" class="mr_15">
			<label for="input1" class="bul">서비스</label>
			<label for="bizRadios"><input name="bizRadios" id="bizRadios" type="radio" checked="" value="option1"> 비즈뿌리오</label>
			<label for="ufitRadios" class="mr_15"><input name="ufitRadios2" id="ufitRadios" type="radio" value="option2"> 유핏</label>
			<a href="#" class="btn_sm_sch_black r3">검색</a>
		</p>
	</div>	
	<!-- //아이디 및 서비스 선택 후 검색 -->
	

	<!-- table list -->
	<table class="tb_list_b">
		<colgroup>
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:10%">
		</colgroup>
			<thead>
			<tr>
				<th rowspan="2">ID</th>
				<th rowspan="2">서비스</th>
				<th rowspan="2">업체명/이름</th>
				<th rowspan="2">기업/개인<br />
					<select id="memberSelect" class="w80">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option> 
						<option value="4">4</option>
						<option value="5">6</option>
					</select>					
				</th>
				<th rowspan="2">담당부서<br />
					<select id="partSelect" class="w80">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option> 
						<option value="4">4</option>
						<option value="5">5</option>
					</select>										
				</th>
				<th rowspan="2">담당자<br />
					<select id="managerSelect" class="w80">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option> 
						<option value="4">4</option>
						<option value="5">5</option>
					</select>										
				</th>
				<th colspan="2">등록 현황</th>
				<th>한도</th>
				<th rowspan="2">한도변경</th>
			</tr>
			<tr>
				<th>웹</th>
				<th>서버</th>
				<th>웹</th>
			</tr>
		</thead>
		<tbody>
			<!-- 여기서부터 반복 
				 (원래는 Controller를 거쳐 list를 받아와 해당 정보를 출력하는 것)
			-->
			<#list 1..10 as i>
				<tr>
					<td>daou</td>
					<td>비즈뿌리오</td>
					<td>다우기술</td>
					<td>기업</td>
					<td>MSG1</td>
					<td>김현진</td>
					<td>3</td>
					<td>10</td>
					<td><input type="text" class="p80" /></td>
					<td><a href="" class="btn sm btn_skyBlue">저장</a></td>					
				</tr>
			</#list>
		</tbody>
	</table>
	<!-- table list -->

	
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


