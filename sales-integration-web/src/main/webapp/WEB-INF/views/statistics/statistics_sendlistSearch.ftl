<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 발송내역 조회' />

<@page.base pageTitle>

<#include '/include/statistics-left-menu.ftl'>
<!-- contents -->
<div class="container_r">
	<!-- title -->
	<div class="title_b">
		<em></em>
		<h2>발송내역 조회</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">통계</a> > 
			<a href="">발송내역 조회</a>
		</blockquote>
	</div>
	<!-- //title -->

	<!-- message -->
	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>기간별 상세 발송 내역을 조회합니다.</li>
			<li>발송 내역은 35일간 보관됩니다. 이전 발송 내역은 삭제가 되며 복구가 불가능합니다.</li>
		</ul>
	</div>
	<!-- //message -->

	<!-- button -->
	<div class="align_r mb_15">
		<a href="" class="btn md btn_green mr_3">excel</a><a href=""
			class="btn md btn_blue">인쇄</a>
	</div>
	<!-- //button -->

	<!-- search -->
	<table class="tb_list2_a">
		<colgroup>
			<col style="width: 8%">
			<col style="width: 22%">
			<col style="width: 8%">
			<col style="width: 22%">
			<col style="width: 8%">
			<col style="width: 22%">
			<col style="width: 8%">
		</colgroup>
		<tbody>
			<tr>
				<th><b class="txt_c_red">*</b> 조회기간</th>
				<td><input type="text" class="w80">
					<button class="calendar"></button>~ <input type="text" class="w80">
					<button class="calendar"></button></td>
				<th><select class="p80">
						<option>ID</option>
					</select></th>
				<td colspan="3"><input type="text" class="w100"></td>
				<td rowspan="2"><a href="#" class="btn_sch_black r3">검색</a></td>
			</tr>
			<tr>
				<th>MSG ID</th>
				<td><input type="text" class="w100"></td>
				<th>발신번호</th>
				<td><input type="text" class="w250" placeholder="숫자만 입력(공백, -불가)"></td>
				<th>수신번호</th>
				<td><input type="text" class="w250" placeholder="숫자만 입력(공백, -불가)"></td>
			</tr>
		</tbody>
	</table>
	<!-- //search -->

	<p class="align_l mb_15">조회 건 수:17건</p>

	<div class="scroll_y">
		<table class="tb_list_b p200">
			<colgroup>
				<col style="width: 7%">
				<col style="width: 7%">
				<col style="width: 7%">
				<col style="width: 7%">
				<col style="width: 7%">
				<col style="width: 7%">
				<col style="width: 10%">
				<col style="width: 7%">
				<col style="width: 7%">
				<col style="width: 7%">
				<col style="width: 7%">
				<col style="width: 7%">
				<col style="width: 7%">
				<col style="width: 7%">
			</colgroup>
			<thead>
				<tr>
					<th>ID</th>
					<th>업체명</th>
					<th>담당부서<br /> 
						<select class="p80">
							<option value="1">1</option>
						</select>
					</th>
					<th>담당자<br /> 
						<select class="p80">
							<option value="1">1</option>
						</select>
					</th>
					<th>서비스<br /> 
						<select class="p80">
							<option value="1">1</option>
						</select>
					</th>
					<th>품목<br /> 
						<select class="p80">
							<option value="1">1</option>
						</select>
					</th>
					<th>MSG ID</th>
					<th>제목</th>
					<th>발신번호</th>
					<th>수신번호</th>
					<th>요청/예약시간</th>
					<th>발송/완료시간</th>
					<th>상태<br /> 
						<select class="p80">
							<option value="1">1</option>
						</select>
					</th>
					<th>실패코드<br /> 
						<select class="p80">
							<option value="1">1</option>
						</select>
					</th>
				</tr>
			</thead>
			<tbody>
				<!-- 여기서부터 반복 
					 (원래는 Controller를 거쳐 list를 받아와 해당 정보를 출력하는 것)
				-->
				<#list 1..10 as i>
					<tr>
						<td>daou</td>
						<td>다우기술</td>
						<td>MSG2</td>
						<td>윤수지</td>
						<td>비즈뿌리오</td>
						<td>SMS</td>
						<td>actozg_A355174370853</td>
						<td>회원가입안내</td>
						<td>01012345678</td>
						<td>01098765432</td>
						<td>2017.12.28 16:00</td>
						<td>2017.12.28 16:02</td>
						<td>실패</td>
						<td>1234</td>
					</tr>
				</#list>
			</tbody>
		</table>
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




