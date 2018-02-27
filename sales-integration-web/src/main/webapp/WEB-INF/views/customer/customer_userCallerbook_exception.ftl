<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 예외사업자 관리' />

<@page.base pageTitle>

<#include '/include/customer-left-menu.ftl'>
<!-- contents -->
<div class="container_r">    
   	<!-- title -->
   	<div class="title_b">
   		<em></em>
   		<h2>예외사업자 관리</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">고객 관리</a> > 
			<a href="">발신번호 관리</a> > 
			<a href="">예외사업자 관리</a>
		</blockquote>
	</div>
	<!-- //title -->
							
	<!-- message -->
	<div class="box_b3 mb_15">
  		<ul class="txt_info">
   			<li>발신번호 예외 사업자 신청 현황을 조회하고 승인합니다.</li>
		</ul>
	</div>
	<!-- //message -->
	
	<!-- 아이디 및 서비스 선택 후 검색 -->
	<div class="box_grey box_search">
		<p class="align_c">
			<select id="idselect2" class="w100">
				<option value="1">ID</option>
				<option value="2">1</option>
				<option value="3">2</option>
				<option value="4">3</option>
				<option value="5">4</option>
			</select>
			<input id="input2" type="text" placeholder="검색 내용 입력" class="mr_15">
			<label class="bul">서비스</label>
			<label for="bizRadios2"><input name="bizRadios2" id="bizRadios2" type="radio" checked="" value="option1"> 비즈뿌리오</label>
			<label for="ufitRadios2" class="mr_15"><input name="ufitRadios2" id="ufitRadios2" type="radio" value="option2"> 유핏</label>
			<a href="#" class="btn_sm_sch_black r3">검색</a>
		</p>
	</div>	
	<!-- //아이디 및 서비스 선택 후 검색 -->
	
	<!-- button -->
	<div class="align_r mb_15">
		<a href="" class="btn md btn_blue">승인</a>
		<a href="" class="btn md btn_gray">반려</a>
	</div>
	<!-- //button -->
	
	<div class="scroll h400">
		
	<!-- table list -->	
	<table class="tb_list_b">
	   <colgroup>
			<col style="width:5.3%">
			<col style="width:8.3%">
			<col style="width:8.3%">
			<col style="width:8.3%">
			<col style="width:8.3%">
			<col style="width:9.3%">
			<col style="width:9.3%">
			<col style="width:8.3%">
			<col style="width:8.3%">
			<col style="width:9.3%">
			<col style="width:8.3%">
			<col style="width:8.3%">				
		</colgroup>
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>No.</th>
				<th>ID</th>
				<th>서비스</th>
				<th>업체명</th>
				<th>업체담당자</th>
				<th>휴대폰번호</th>
				<th>담당부서<br />
					<select id="partselect2" class="p80">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option> 
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
				</th>
				<th>담당자<br />
					<select id="managerSelect2" class="p80">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option> 
						<option value="4">4</option>
						<option value="5">5</option>
					</select>					
				</th>
				<th>신청일</th>
				<th>첨부 파일</th>
				<th>상태<br />
					<select id="conditionSelect2" class="p80">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option> 
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
				</th>
			</tr>
		</thead>
		<tbody>
			<!-- 여기서부터 반복 
				 (원래는 Controller를 거쳐 list를 받아와 해당 정보를 출력하는 것)
			-->
			<#list 1..6 as i>
				<tr>
					<td><input type="checkbox"></td>
					<td>1200</td> 
					<td>daou</td>
					<td>비즈뿌리오</td>
					<td>다우기술</td>
					<td>윤수지</td>
					<td>010-1234-5678</td>
					<td>MSG1</td> 
					<td>김현진</td>
					<td>2017.12.22</td>  						 
					<td><a href="#" class="btn_sm_skyBlue">보기</a></td>
					<td>승인요청</td>  						 					  						 
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>1200</td> 
					<td>daou</td>
					<td>비즈뿌리오</td>
					<td>다우기술</td>
					<td>윤수지</td>
					<td>010-1234-5678</td>
					<td>MSG1</td> 
					<td>김현진</td>
					<td>2017.12.22</td>  						 
					<td><a href="#" class="btn_sm_skyBlue">보기</a></td>
					<td>승인완료</td>  						 					  						 
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>1200</td> 
					<td>daou</td>
					<td>비즈뿌리오</td>
					<td>다우기술</td>
					<td>윤수지</td>
					<td>010-1234-5678</td>
					<td>MSG1</td> 
					<td>김현진</td>
					<td>2017.12.22</td>  						 
					<td><a href="#" class="btn_sm_skyBlue">보기</a></td>
					<td>반려</td>  						 					  						 
				</tr>
			</#list>
		</tbody>
	</table>
	<!-- //table list -->
	</div>	
	
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




