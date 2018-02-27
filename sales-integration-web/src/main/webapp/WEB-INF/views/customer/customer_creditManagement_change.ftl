<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 여신변경' />

<@page.base pageTitle>

<#include '/include/customer-left-menu.ftl'>
<!-- contents -->
<div class="container_r">
	<!-- title -->
	<div class="title_b">
		<em></em>
		<h2>여신변경</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">고객 관리</a> > 
			<a href="">여신관리</a>
		</blockquote>
	</div>
	<!-- //title -->

	<!-- message -->
	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>일반/특별여신을 증액/감액합니다.</li>
		</ul>
	</div>
	<!-- //message -->

	<!-- button -->
	<div class="align_r mb_15">
		<a href="" class="btn md btn_green">목록</a>
	</div>
	<!-- //button -->

	<!-- 여신정보 table_list -->
	<table class="tb_list_b mb_15">
		<colgroup>
			<col style="width: 25%">
			<col style="width: 25%">
			<col style="width: 25%">
			<col style="width: 25%">
		</colgroup>
		<thead>
			<tr>
				<th>업체명</th>
				<th>사업자번호</th>
				<th>담당부서</th>
				<th>담당자</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>다우쇼핑</td>
				<td>123-23-3456</td>
				<td>MSG3</td>
				<td>윤수지</td>
			</tr>
		</tbody>
	</table>
	<!-- //여신정보 table_list -->

	<!-- 여신정보2 table_list -->
	<table class="tb_list_b mb_15">
		<colgroup>
			<col style="width: 25%">
			<col style="width: 25%">
			<col style="width: 25%">
			<col style="width: 25%">
		</colgroup>
		<thead>
			<tr>
				<th>여신종류</th>
				<th>여신 생성일</th>
				<th>여신 코드</th>
				<th>여신 금액</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>일반여신</td>
				<td>2017.12.22</td>
				<td>oooo</td>
				<td><span class="align_r">500,000 \</span></td>
			</tr>
		</tbody>
	</table>
	<!-- 여신정보2 table_list -->

	<!-- 증액/감면 -->
	<div class="box_b3">
		<div class="form_group p100">
			<p class="align_c mb_15">
				<label for="normalRadios" class="mr_15">
					<input name="normalRadios" id="normalRadios" type="radio" checked="" value="option1"> 증액</label> 
				<label for="spacialRadios" class="mr_15">
					<input name="spacialRadios2" id="spacialRadios" type="radio" value="option2"> 감면</label>
			</p>

			<!-- 증액 선택 시-->
			<table class="tb_list2_a p80 mar_auto">
				<colgroup>
					<col style="width: 20%">
					<col style="width: 80%">
				</colgroup>
				<tbody>
					<tr>
						<th>변경 여신</th>
						<td><input type="text" class="w200 mr_5" placeholder="여신 입력" />
							\</td>
					</tr>
					<tr>
						<th>변경 사유</th>
						<td><input type="text" class="w200 mr_5" placeholder="사유 입력" /></td>
					</tr>
				</tbody>
			</table>
			<!-- //증액 선택 시-->

			<!-- 감면 선택 시(상단 증액 선택 시 아래 추가됨 -->
			<table class="tb_list2_a p80 mar_auto">
				<colgroup>
					<col style="width: 20%">
					<col style="width: 80%">
				</colgroup>
				<tbody>
					<tr>
						<th>증/감액</th>
						<td><input type="text" class="w200 mr_5" placeholder="자동 계산" />
							\</td>
					</tr>
				</tbody>
			</table>
			<!-- //감면 선택 시(상단 증액 선택 시 아래 추가됨 -->
		</div>
	</div>
	<!-- //증액/감면 -->

	<!-- 하단 버튼 -->
	<div class="btn_area mb_15">
		<a href="#" class="btn lg btn_blue">확인</a> 
		<a href="#" class="btn lg btn_gray">취소</a>
	</div>
	<!-- //하단 버튼 -->
</div>
<!-- //contents -->

</@page.base>




