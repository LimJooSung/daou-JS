<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 승인 전 회원리스트' />

<@page.base pageTitle>

<#include '/include/customer-left-menu.ftl'>
<!-- contents -->
<div class="container_r">
	<!-- title -->
	<div class="title_b">
		<em></em>
		<h2>승인 전 회원 리스트</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">고객 관리</a> > 
			<a href="">승인 전 회원 리스트</a>
		</blockquote>
	</div>
	<!-- //title -->

	<!-- message -->
	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>사용 승인 대기 리스트입니다.</li>
			<li>승인을 클릭하여, 정보 입력/확인 후 사용 승인 처리합니다.</li>
			<li>승인된 ID는 [회원 정보]로 이동합니다.</li>
		</ul>
	</div>
	<!-- //message -->

	<!-- ID/서비스 검색 -->
	<div class="box_grey box_search">
		<p class="align_c">
			<select class="w100">
				<option>ID</option>
			</select> 
			<input id="input1" type="text" placeholder="검색 내용 입력" class="mr_15">
			<label class="bul">서비스</label> 
			<label for="bizRadios"><input name="bizRadios" id="bizRadios" type="radio" checked="" value="option1"> 비즈뿌리오</label> 
			<label for="ufitRadios" class="mr_15"><input name="ufitRadios" id="ufitRadios" type="radio" value="option2"> 유핏</label> 
			<a href="#" class="btn_sm_sch_black r3">검색</a>
		</p>
	</div>
	<!-- //ID/서비스 검색 -->

	<div class="scroll h400">
		<!-- 회원리스트 table -->
		<table class="tb_list_b">
			<colgroup>
				<col style="width: 10%">
				<col style="width: 15%">
				<col style="width: 15%">
				<col style="width: 16%">
				<col style="width: 14%">
				<col style="width: 16%">
				<col style="width: 14%">
			</colgroup>
			<thead>
				<tr>
					<th>No.</th>
					<th>가입일 
						<a href="" class="btn_vsm mr_3"><span class="ico_up">오름차순</span></a>
						<a href="" class="btn_vsm"><span class="ico_down">내림차순</span></a></th>
					<th>서비스</th>
					<th>업체명/이름</th>
					<th>ID</th>
					<th>담당자 전화번호</th>
					<th>승인</th>
				</tr>
			</thead>
			<tbody>
				<!-- 여기서부터 반복 
					 (원래는 Controller를 거쳐 list를 받아와 해당 정보를 출력하는 것)
				-->
				<#list 1..18 as i>
					<tr>
						<td>320</td>
						<td>2017.12.21</td>
						<td>비즈뿌리오</td>
						<td>다우기술</td>
						<td>daou</td>
						<td>070-1234-5678</td>
						<td><a href="${rc.contextPath}/customerBeforeListDetail.do" class="btn_sm_skyBlue">상세</a></td>
					</tr>
				</#list>
			</tbody>
		</table>
		<!-- //회원리스트 table -->
	</div>

	<!-- paging -->
	<div class="paging_b mt_15">
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




