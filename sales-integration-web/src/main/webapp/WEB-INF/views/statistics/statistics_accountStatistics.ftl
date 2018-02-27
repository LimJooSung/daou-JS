<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 계정별 발송통계' />

<@page.base pageTitle>

<#include '/include/statistics-left-menu.ftl'>
<!-- contents -->
<div class="container_r">
	<!-- title -->
	<div class="title_b">
		<em></em>
		<h2>계정별 발송통계</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">통계</a> > 
			<a href="">계정별 발송통계</a>
		</blockquote>
	</div>
	<!-- //title -->

	<!-- message -->
	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>계정별 발송현황을 조회합니다.</li>
			<li>발송량은 성공건수가 표시되며 [상세 조회]를 통해 전체건수, 성공률을 조회합니다.</li>
		</ul>
	</div>
	<!-- //message -->

	<!-- search -->
	<table class="tb_list2_a">
		<colgroup>
			<col style="width: 10%">
			<col style="width: 30%">
			<col style="width: 10%">
			<col style="width: 15%">
			<col style="width: 12%">
			<col style="width: 15%">
			<col style="width: 8%">
		</colgroup>
		<tbody>
			<tr>
				<th><b class="txt_c_red">*</b> 발송기간</th>
				<td>
					<input type="text" class="w100">
					<button class="calendar"></button>~ <input type="text" class="w100">
					<button class="calendar"></button></td>
				<th>담당부서</th>
				<td>
					<select class="w100">
							<option>직접입력</option>
					</select></td>
				<th>서비스</th>
				<td>
					<label><input name="optionsRadios1" id="optionsRadios1" type="radio" checked="" value="option1">비즈뿌리오</label> 
					<label><input name="optionsRadios2" id="optionsRadios2" type="radio" value="option2"> 유핏</label></td>
				<td rowspan="2"><a href="#" class="btn_sch_black r3">검색</a></td>
			</tr>
			<tr>
				<th>가입일</th>
				<td><input type="text" class="w100">
				<button class="calendar"></button>~ <input type="text" class="w100">
				<button class="calendar"></button></td>
				<th>담당자</th>
				<td>
					<select class="w100">
						<option>직접입력</option>
					</select></td>
				<th>
					<select class="w100">
						<option>선택</option>
					</select></th>
				<td><input type="text" class="p80"></td>
			</tr>
		</tbody>
	</table>
	<!-- //search -->

	<!-- button -->
	<div class="align_r">
		<a href="" class="btn md btn_black mr_3">상세조회</a>
		<a href="" class="btn md btn_green">excel</a>
	</div>
	<!-- //button -->

	<div class="scroll_y mt_15">
		<!-- 발송통계 list table -->
		<table class="tb_list_b p200">
			<colgroup>
				<col style="width: 5.8%">
				<col style="width: 5.8%">
				<col style="width: 5.8%">
				<col style="width: 5.8%">
				<col style="width: 5.8%">
				<col style="width: 5.8%">
				<col style="width: 5.8%">
				<col style="width: 5.8%">
				<col style="width: 5.8%">
				<col style="width: 5.8%">
				<col style="width: 5.8%">
				<col style="width: 5.8%">
				<col style="width: 5.8%">
				<col style="width: 5.8%">
				<col style="width: 5.8%">
				<col style="width: 5.8%">
				<col style="width: 5.8%">
			</colgroup>
			<thead>
				<tr>
					<th colspan="7">업체정보</th>
					<th colspan="8">SMS <a href="" class="btn_vsm mr_3">
						<span class="ico_up"></span></a><a href="" class="btn_vsm">
						<span class="ico_down"></span></a></th>
					<th rowspan="2">...</th>
					<th rowspan="2">사용금액</th>
				</tr>
				<tr>
					<th rowspan="2">ID</th>
					<th rowspan="2">가입일</th>
					<th rowspan="2">업체명</th>
					<th rowspan="2">서비스</th>
					<th rowspan="2">담당부서</th>
					<th rowspan="2">담당자</th>
					<th rowspan="2">결제</th>
					<th colspan="4">국내</th>
					<th colspan="4">국제</th>
				</tr>
				<tr>
					<th>전체</th>
					<th>SKT</th>
					<th>KT</th>
					<th>LGU</th>
					<th>전체</th>
					<th>SKT</th>
					<th>KT</th>
					<th>LGU</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td colspan="7">계</td>
					<td>35,000</td>
					<td>10,000</td>
					<td>15,000</td>
					<td>10,000</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<!-- 여기서부터 반복 
					 (원래는 Controller를 거쳐 list를 받아와 해당 정보를 출력하는 것)
				-->
				<#list 1..15 as i>
					<tr>
						<td>@daou</td>
						<td>2017.12.28</td>
						<td>다우기술</td>
						<td>비즈뿌리오</td>
						<td>MSG2</td>
						<td>윤수지</td>
						<td>선불</td>
						<td>10</td>
						<td>5</td>
						<td>2</td>
						<td>3</td>
						<td>2</td>
						<td>2</td>
						<td>1</td>
						<td>1</td>
						<td>150,000</td>
						<td>1,200,000</td>
					</tr>
				</#list>
			</tbody>
		</table>
		<!-- //발송통계 list table -->
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




