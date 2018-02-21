<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 실적관리' />

<@page.base pageTitle>

<!-- sidebar -->
<div class="sidebar">
	<ul class="nav">
		<li class="menu"><a href="#">실적관리<i></i></a>
			<ul class="nav_second">
				<li><a href="${rc.contextPath}/salesPerformanceAdminTeam.do">실적 조회</a></li>
				<li><a href="${rc.contextPath}/salesReferenceRoom.do">실적 자료실</a></li>
			</ul>
		</li>
		<li class="menu"><a href="#">담보관리</a></li>
	</ul>
</div> 
<!-- //sidebar -->

<!-- contents -->
<div class="container_r">
	<!-- title -->
	<div class="title_b">
		<em></em>
		<h2>실적관리</h2>
		<blockquote class="txt_bul_bar">
			<a href="">홈</a> > 
			<a href="">영업 관리</a> > 
			<a href="">실적 관리</a> > 
			<a href="">실적 조회</a>
		</blockquote>
	</div>
	<!-- //title -->

	<!-- message -->
	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>월간 목표 매출/GP를 입력합니다.</li>
		</ul>
	</div>
	<!-- //message -->

	<div class="title">
		<em></em>
		<h4>월간</h4>
		<blockquote>(단위:원)</blockquote>
	</div>

	<!-- 월간 1월 ~ 6월 -->
	<table class="tb_list_b">
		<colgroup>
			<col style="width: 10%">
			<col style="width: 15%">
			<col style="width: 15%">
			<col style="width: 15%">
			<col style="width: 15%">
			<col style="width: 15%">
			<col style="width: 15%">
		</colgroup>
		<thead>
			<tr>
				<th>구분</th>
				<th>1월</th>
				<th>2월</th>
				<th>3월</th>
				<th>4월</th>
				<th>5월</th>
				<th>6월</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>매출</td>
				<td><input type="text" class="w100" placeholder="매출"></td>
				<td><input type="text" class="w100" placeholder="매출"></td>
				<td><input type="text" class="w100" placeholder="매출"></td>
				<td><input type="text" class="w100" placeholder="매출"></td>
				<td><input type="text" class="w100" placeholder="매출"></td>
				<td><input type="text" class="w100" placeholder="매출"></td>
			</tr>
			<tr>
				<td>GP</td>
				<td><input type="text" class="w100" placeholder="GP"></td>
				<td><input type="text" class="w100" placeholder="GP"></td>
				<td><input type="text" class="w100" placeholder="GP"></td>
				<td><input type="text" class="w100" placeholder="GP"></td>
				<td><input type="text" class="w100" placeholder="GP"></td>
				<td><input type="text" class="w100" placeholder="GP"></td>
			</tr>

		</tbody>
	</table>
	<!-- //월간 1월 ~ 6월 -->

	<!-- 월간 7월 ~ 12월 -->
	<table class="tb_list_b">
		<colgroup>
			<col style="width: 10%">
			<col style="width: 15%">
			<col style="width: 15%">
			<col style="width: 15%">
			<col style="width: 15%">
			<col style="width: 15%">
			<col style="width: 15%">
		</colgroup>
		<thead>
			<tr>
				<th>구분</th>
				<th>7월</th>
				<th>8월</th>
				<th>9월</th>
				<th>10월</th>
				<th>11월</th>
				<th>12월</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>매출</td>
				<td><input type="text" class="w100" placeholder="매출"></td>
				<td><input type="text" class="w100" placeholder="매출"></td>
				<td><input type="text" class="w100" placeholder="매출"></td>
				<td><input type="text" class="w100" placeholder="매출"></td>
				<td><input type="text" class="w100" placeholder="매출"></td>
				<td><input type="text" class="w100" placeholder="매출"></td>
			</tr>
			<tr>
				<td>GP</td>
				<td><input type="text" class="w100" placeholder="GP"></td>
				<td><input type="text" class="w100" placeholder="GP"></td>
				<td><input type="text" class="w100" placeholder="GP"></td>
				<td><input type="text" class="w100" placeholder="GP"></td>
				<td><input type="text" class="w100" placeholder="GP"></td>
				<td><input type="text" class="w100" placeholder="GP"></td>
			</tr>
		</tbody>
	</table>
	<!-- //월간 7월 ~ 12월 -->

	<div class="title clr">
		<em></em>
		<h4>연간</h4>
		<blockquote>(단위:원)</blockquote>
	</div>

	<!-- 연간 -->
	<table class="tb_list2_a">
		<colgroup>
			<col style="width: 18%">
			<col style="width: 82%">
		</colgroup>
		<tr>
			<th>매출</th>
			<td>
				<!--<input type="text" class="w150" placeholder="매출">-->
			</td>
		</tr>
		<tr>
			<th>GP</th>
			<td>
				<!--<input type="text" class="w150" placeholder="GP">-->
			</td>
		</tr>
	</table>
	<!-- //연간 -->

	<!-- 하단버튼 -->
	<div class="btn_area mb_15">
		<a href="#" class="btn lg btn_blue">확인</a> <a href="#"
			class="btn lg btn_gray">취소</a>
	</div>
	<!-- //하단버튼 -->
</div>
<!-- //contents -->


</@page.base>
