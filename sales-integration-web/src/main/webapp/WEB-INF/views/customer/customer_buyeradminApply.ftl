<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 매입처 관리' />

<@page.base pageTitle>

<#include '/include/customer-left-menu.ftl'>
<!-- contents -->
<div class="container_r">
	<!-- title -->
	<div class="title_b">
		<em></em>
		<h2>매입처 관리</h2>
		<blockquote class="txt_bul_bar">
			<a href="">홈</a> > 
			<a href="">고객 관리</a> > 
			<a href="">매입처 관리</a>
		</blockquote>
	</div>
	<!-- //title -->

	<!-- 매입처명/사업자등록번호 입력 -->
	<table class="tb_list2_a">
		<colgroup>
			<col style="width: 15%">
			<col style="width: 35%">
			<col style="width: 15%">
			<col style="width: 35%">
		</colgroup>
		<tbody>
			<tr>
				<th><b class="txt_c_red">*</b> 매입처명</th>
				<td><input type="text" class="w150"></td>
				<th><b class="txt_c_red">*</b> 사업자등록번호</th>
				<td><input type="text" class="w80"> - 
					<input type="text" class="w80"> - 
					<input type="text" class="w80"></td>
			</tr>
		</tbody>
	</table>
	<!-- /매입처명/사업자등록번호 입력 -->

	<!-- 담당자/전화번호/이메일 입력 -->
	<table class="tb_list2_a">
		<colgroup>
			<col style="width: 18%">
			<col style="width: 20%">
			<col style="width: 18%">
			<col style="width: 20%">
			<col style="width: 18%">
			<col style="width: 20%">
		</colgroup>
		<tbody>
			<tr>
				<th>담당자</th>
				<td><input type="text" class="w150"></td>
				<th>전화번호</th>
				<td><input type="text" class="w150"></td>
				<th>이메일</th>
				<td><input type="text" class="w150"></td>
			</tr>
		</tbody>
	</table>
	<!-- //담당자/전화번호/이메일 입력 -->

	<!-- 품목/기본료 리스트 -->
	<div class="scroll h300">
		<table class="tb_list2_a">
			<colgroup>
				<col style="width: 15%">
				<col style="width: 35%">
				<col style="width: 15%">
				<col style="width: 35%">
			</colgroup>
			<tbody>
				<tr>
					<th><b class="txt_c_red">*</b> 품목</th>
					<td><input type="text" class="w150"></td>
					<th><b class="txt_c_red">*</b> 기본료</th>
					<td><input type="text" class="w150"> \</td>
				</tr>
				<tr>
					<th><b class="txt_c_red">*</b> 구간</th>
					<td>~ <input type="text" class="w150"></td>
					<th><b class="txt_c_red">*</b> 원가</th>
					<td><input type="text" class="w150"> \ 
						<a href="" class="btn_sm_blue ml_5">추가</a></td>
				</tr>
				<tr>
					<th>구간</th>
					<td>~ <input type="text" class="w150"></td>
					<th>원가</th>
					<td><input type="text" class="w150"> \ 
						<a href="" class="btn_sm_gray ml_5">삭제</a> 
						<a href="" class="btn_sm_blue">추가</a>
					</td>
				</tr>
				<tr>
					<th>구간</th>
					<td>~ <input type="text" class="w150"></td>
					<th>원가</th>
					<td><input type="text" class="w150"> \ 
						<a href="" class="btn_sm_gray ml_5">삭제</a> 
						<a href="" class="btn_sm_blue">추가</a>
					</td>
				</tr>
				<tr>
					<th>구간</th>
					<td>~ <input type="text" class="w150"></td>
					<th>원가</th>
					<td><input type="text" class="w150"> \ 
						<a href="" class="btn_sm_gray ml_5">삭제</a> 
						<a href="" class="btn_sm_blue">추가</a>
					</td>
				</tr>
				<tr>
					<th>구간</th>
					<td>~ <input type="text" class="w150"></td>
					<th>원가</th>
					<td><input type="text" class="w150"> \ 
						<a href="" class="btn_sm_gray ml_5">삭제</a> 
						<a href="" class="btn_sm_blue">추가</a>
					</td>
				</tr>
				<tr>
					<th>구간</th>
					<td>~ <input type="text" class="w150"></td>
					<th>원가</th>
					<td><input type="text" class="w150"> \ 
						<a href="" class="btn_sm_gray ml_5">삭제</a> 
						<a href="" class="btn_sm_blue">추가</a>
					</td>
				</tr>
				<tr>
					<th>구간</th>
					<td>~ <input type="text" class="w150"></td>
					<th>원가</th>
					<td><input type="text" class="w150"> \ 
						<a href="" class="btn_sm_gray ml_5">삭제</a> 
						<a href="" class="btn_sm_blue">추가</a>
					</td>
				</tr>
				<tr>
					<th>구간</th>
					<td>~ <input type="text" class="w150"></td>
					<th>원가</th>
					<td><input type="text" class="w150"> \ 
						<a href="" class="btn_sm_gray ml_5">삭제</a> 
						<a href="" class="btn_sm_blue">추가</a>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- //품목/기본료 리스트 -->

	<!-- button -->
	<div class="align_r mt_15">
		<a href="" class="btn md btn_blue">품목 추가</a>
	</div>
	<!-- //button -->

	<!-- 하단 버튼 -->
	<div class="btn_area mb_15">
		<a href="#" class="btn lg btn_blue">확인</a> 
		<a href="#" class="btn lg btn_gray">취소</a>
	</div>
	<!-- //하단 버튼 -->
</div>
<!-- //contents -->

</@page.base>




