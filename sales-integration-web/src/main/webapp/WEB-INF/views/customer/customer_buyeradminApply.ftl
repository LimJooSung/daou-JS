<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 매입처 관리' />

<@page.base pageTitle>

<!-- sidebar -->
<div class="sidebar">
	<ul class="nav">
		<li class="menu"><a href="#">회원리스트</a></li>
		<li class="menu"><a href="#">승인 전 회원리스트</a></li>
		<li class="menu"><a href="#">해지고객 리스트</a></li>
		<li class="menu"><a href="#">여신 관리</a></li>
		<li class="menu"><a href="#">발신번호 관리<i></i></a>
			<ul class="nav_second">
				<li><a href="#">발신번호 조회</a></li>
				<li><a href="#">발신번호 승인</a></li>
				<li><a href="#">발신번호 담당자</a></li>
				<li><a href="#">예외사업자 관리</a></li>
				<li><a href="#">FAX 차단 통계</a></li>
			</ul></li>
		<li class="menu"><a href="#">카카오톡 비즈메시지<i></i></a>
			<ul class="nav_second">
				<li><a href="#">발신프로필 관리</a></li>
				<li><a href="#">템플릿/이미지 관리</a></li>
			</ul></li>
		<li class="menu"><a href="#">수동 입출금</a></li>
		<li class="menu"><a href="#">매입처 관리</a></li>
	</ul>
</div>
<!-- //sidebar -->

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
				<td><input type="text" class="w80"> - <input
					type="text" class="w80"> - <input type="text" class="w80"></td>
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
					<td><input type="text" class="w150"> \ <a href=""
						class="btn_sm_blue ml_5">추가</a></td>
				</tr>
				<tr>
					<th>구간</th>
					<td>~ <input type="text" class="w150"></td>
					<th>원가</th>
					<td><input type="text" class="w150"> \ <a href=""
						class="btn_sm_gray ml_5">삭제</a> <a href="" class="btn_sm_blue">추가</a>
					</td>
				</tr>
				<tr>
					<th>구간</th>
					<td>~ <input type="text" class="w150"></td>
					<th>원가</th>
					<td><input type="text" class="w150"> \ <a href=""
						class="btn_sm_gray ml_5">삭제</a> <a href="" class="btn_sm_blue">추가</a>
					</td>
				</tr>
				<tr>
					<th>구간</th>
					<td>~ <input type="text" class="w150"></td>
					<th>원가</th>
					<td><input type="text" class="w150"> \ <a href=""
						class="btn_sm_gray ml_5">삭제</a> <a href="" class="btn_sm_blue">추가</a>
					</td>
				</tr>
				<tr>
					<th>구간</th>
					<td>~ <input type="text" class="w150"></td>
					<th>원가</th>
					<td><input type="text" class="w150"> \ <a href=""
						class="btn_sm_gray ml_5">삭제</a> <a href="" class="btn_sm_blue">추가</a>
					</td>
				</tr>
				<tr>
					<th>구간</th>
					<td>~ <input type="text" class="w150"></td>
					<th>원가</th>
					<td><input type="text" class="w150"> \ <a href=""
						class="btn_sm_gray ml_5">삭제</a> <a href="" class="btn_sm_blue">추가</a>
					</td>
				</tr>
				<tr>
					<th>구간</th>
					<td>~ <input type="text" class="w150"></td>
					<th>원가</th>
					<td><input type="text" class="w150"> \ <a href=""
						class="btn_sm_gray ml_5">삭제</a> <a href="" class="btn_sm_blue">추가</a>
					</td>
				</tr>
				<tr>
					<th>구간</th>
					<td>~ <input type="text" class="w150"></td>
					<th>원가</th>
					<td><input type="text" class="w150"> \ <a href=""
						class="btn_sm_gray ml_5">삭제</a> <a href="" class="btn_sm_blue">추가</a>
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
		<a href="#" class="btn lg btn_blue">확인</a> <a href="#"
			class="btn lg btn_gray">취소</a>
	</div>
	<!-- //하단 버튼 -->
</div>
<!-- //contents -->




</@page.base>




