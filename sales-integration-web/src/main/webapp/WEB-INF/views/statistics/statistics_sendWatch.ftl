<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 발송추이' />

<@page.base pageTitle>

<!-- sidebar -->
<div class="sidebar">
	<ul class="nav">
		<li class="menu"><a href="#">계정별 발송통계</a></li>
		<li class="menu"><a href="#">라인별 발송현황</a></li>
		<li class="menu"><a href="#">발송 추이</a></li>
		<li class="menu"><a href="#">발송 내역 조회</a></li>
	</ul>
</div>
<!-- //sidebar -->

<!-- contents -->
<div class="container_r">
	<!-- title -->
	<div class="title_b">
		<em></em>
		<h2>발송 추이</h2>
		<blockquote class="txt_bul_bar">
			<a href="">홈</a> > 
			<a href="">통계</a> > 
			<a href="">발송 추이</a>
		</blockquote>
	</div>
	<!-- //title -->

	<!-- tab -->
	<ul class="tab_d">
		<li><a class="active">월별</a></li>
		<li><a>일별</a></li>
		<li><a>증감 TOP 10 업체</a></li>
	</ul>
	<!-- //tab -->

	<!-- tab_월별 -->
	<!-- message -->
	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>품목별 월 발송량을 조회합니다.</li>
			<li>월(숫자) 클릭 시 일별 발송량을 조회합니다.</li>
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
			<col style="width: 12%">
			<col style="width: 15%">
			<col style="width: 8%">
		</colgroup>
		<tbody>
			<tr>
				<th rowspan="2"><b class="txt_c_red">*</b> 조회연도</th>
				<td rowspan="2"><select class="w200">
						<option>2017년</option>
				</select></td>
				<th>담당부서</th>
				<td><select class="w100">
						<option>직접입력</option>
				</select></td>
				<th>서비스</th>
				<td><label> <input name="optionsRadios1"
						id="optionsRadios1" type="radio" checked="" value="option1">
						비즈뿌리오
				</label> <label> <input name="optionsRadios2" id="optionsRadios2"
						type="radio" value="option2"> 유핏
				</label></td>
				<td rowspan="2"><a href="#" class="btn_sch_black r3">검색</a></td>
			</tr>
			<tr>
				<th>담당자</th>
				<td><select class="w100">
						<option>선택</option>
				</select></td>
				<th><select class="w100">
						<option>선택</option>
				</select></th>
				<td><input type="text" class="w100"></td>
			</tr>
		</tbody>
	</table>
	<!-- //search -->

	<p class="align_r mb_15">(단위:건)</p>
	<div class="scroll_y">
		<!-- 발송 추이 list table -->
		<table class="tb_list_b p200">
			<colgroup>
				<col style="width: 8.3%">
				<col style="width: 8.3%">
				<col style="width: 8.3%">
				<col style="width: 8.3%">
				<col style="width: 8.3%">
				<col style="width: 8.3%">
				<col style="width: 8.3%">
				<col style="width: 8.3%">
				<col style="width: 8.3%">
				<col style="width: 8.3%">
				<col style="width: 8.3%">
				<col style="width: 8.3%">
			</colgroup>
			<thead>
				<tr>
					<th>월</th>
					<th>SMS</th>
					<th>LMS</th>
					<th>MMS</th>
					<th>알림톡</th>
					<th>친구톡(T)</th>
					<th>친구톡(I)</th>
					<th>WAP</th>
					<th>VMMS</th>
					<th>VMS</th>
					<th>MO 수신</th>
					<th>FAX 수신</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>합계</td>
					<td>9,800,000</td>
					<td>9,800,000</td>
					<td>9,800,000</td>
					<td>9,800,000</td>
					<td>9,800,000</td>
					<td>9,800,000</td>
					<td>9,800,000</td>
					<td>9,800,000</td>
					<td>9,800,000</td>
					<td>9,800,000</td>
					<td>9,800,000</td>
				</tr>
				<tr>
					<td><a href="a_be">1월</a></td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>2월</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>3월</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>4월</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>5월</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>6월</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>7월</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>8월</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>9월</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>10월</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>11월</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>12월</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>12월(e)</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
			</tbody>
		</table>
		<!-- //발송 추이 list table -->
	</div>

	<!-- 서비스 체크 -->
	<div class="box_grey box_search">
		<p class="align_c">
			<label class="mr_15" for="sms"><input name="sms" id="sms"
				type="checkbox" checked="" value="option1"> SMS</label> <label
				class="mr_15" for="lms"><input name="lms" id="lms"
				type="checkbox" value="option2"> LMS</label> <label class="mr_15"
				for="mms"><input name="mms" id="mms" type="checkbox"
				value="option3"> MMS</label> <label class="mr_15" for="arimtalk"><input
				name="arimtalk" id="arimtalk" type="checkbox" value="option4">
				알림톡</label> <label class="mr_15" for="friendstalk"><input
				name="friendstalk" id="friendstalk" type="checkbox" value="option5">
				친구톡(T)</label> <label class="mr_15" for="friendstalk2"><input
				name="friendstalk2" id="friendstalk2" type="checkbox"
				value="option6"> 친구톡(I)</label> <label class="mr_15" for="wap"><input
				name="wap" id="wap" type="checkbox" value="option7"> WAP</label> <label
				class="mr_15" for="vmms"><input name="vmms" id="vmms"
				type="checkbox" value="option8"> VMMS</label> <label class="mr_15"
				for="vms"><input name="vms" id="vms" type="checkbox"
				value="option9"> VMS</label> <label class="mr_15" for="faxsend"><input
				name="faxsend" id="faxsend" type="checkbox" value="option10">
				FAX 발신</label> <label class="mr_15" for="faxrecive"><input
				name="faxrecive" id="faxrecive" type="checkbox" value="option11">
				FAX 수신</label>
		</p>
	</div>
	<!-- //서비스 체크 -->

	<!-- @그래프자리 -->
	<p class="red mt_15">* 당월은 예상 발송량으로 표시됩니다.</p>
	<div class="mt_15">
		<img src="images/@graph4.gif" alt="그래프자리">
	</div>
	<!-- //@그래프자리 -->
	<!-- //tab_월별 -->

	<!-- tab_일별 -->
	<!-- message -->
	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>품목별 일 발송량을 조회합니다.</li>
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
			<col style="width: 12%">
			<col style="width: 15%">
			<col style="width: 8%">
		</colgroup>
		<tbody>
			<tr>
				<th rowspan="2"><b class="txt_c_red">*</b> 조회 월</th>
				<td rowspan="2"><select class="w100">
						<option>2017년</option>
				</select> <select class="w80 ml_5">
						<option>12월</option>
				</select></td>
				<th>담당부서</th>
				<td><select class="w100">
						<option>직접입력</option>
				</select></td>
				<th>서비스</th>
				<td><label for="bizRadios"> <input name="bizRadios"
						id="bizRadios" type="radio" checked="" value="option1">
						비즈뿌리오
				</label> <label for="ufitRadios"> <input name="ufitRadios"
						id="ufitRadios" type="radio" value="option2"> 유핏
				</label></td>
				<td rowspan="2"><a href="#" class="btn_sch_black r3">검색</a></td>
			</tr>
			<tr>
				<th>담당자</th>
				<td><select class="w100">
						<option>선택</option>
				</select></td>
				<th><select class="w100">
						<option>선택</option>
				</select></th>
				<td><input type="text" class="w100"></td>
			</tr>
		</tbody>
	</table>
	<!-- //search -->

	<p class="align_r mb_15">(단위:건)</p>
	<div class="scroll_y">
		<table class="tb_list2_a p200">
			<colgroup>
				<col style="width: 8.3%">
				<col style="width: 8.3%">
				<col style="width: 8.3%">
				<col style="width: 8.3%">
				<col style="width: 8.3%">
				<col style="width: 8.3%">
				<col style="width: 8.3%">
				<col style="width: 8.3%">
				<col style="width: 8.3%">
				<col style="width: 8.3%">
				<col style="width: 8.3%">
				<col style="width: 8.3%">
			</colgroup>
			<thead>
				<tr>
					<th>X월</th>
					<th>SMS</th>
					<th>LMS</th>
					<th>MMS</th>
					<th>알림톡</th>
					<th>친구톡(T)</th>
					<th>친구톡(I)</th>
					<th>WAP</th>
					<th>VMMS</th>
					<th>VMS</th>
					<th>MO 수신</th>
					<th>FAX 수신</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>합계</td>
					<td>9,800,000</td>
					<td>9,800,000</td>
					<td>9,800,000</td>
					<td>9,800,000</td>
					<td>9,800,000</td>
					<td>9,800,000</td>
					<td>9,800,000</td>
					<td>9,800,000</td>
					<td>9,800,000</td>
					<td>9,800,000</td>
					<td>9,800,000</td>
				</tr>
				<tr>
					<td>1일</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>2일</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>3일</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>4일</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>5일</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>6일</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>7일</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>8일</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>9일</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>10일</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>11일</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>12일</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>13일</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>14일</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>15일</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>16일</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>17일</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>18일</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>19일</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
				<tr>
					<td>20일</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
					<td>1,000,000</td>
				</tr>
			</tbody>
		</table>
	</div>

	<!-- 서비스 체크 -->
	<div class="box_grey box_search">
		<p class="align_c">
			<label class="mr_15" for="sms2"><input name="sms2" id="sms2"
				type="checkbox" checked="" value="option1"> SMS</label> <label
				class="mr_15" for="lms2"><input name="lms2" id="lms2"
				type="checkbox" value="option2"> LMS</label> <label class="mr_15"
				for="mms2"><input name="mms2" id="mms2" type="checkbox"
				value="option3"> MMS</label> <label class="mr_15" for="arimtalk2"><input
				name="arimtalk2" id="arimtalk2" type="checkbox" value="option4">
				알림톡</label> <label class="mr_15" for="friendstalkT2"><input
				name="friendstalkT2" id="friendstalkT2" type="checkbox"
				value="option5"> 친구톡(T)</label> <label class="mr_15"
				for="friendstalkI2"><input name="friendstalkI2"
				id="friendstalkI2" type="checkbox" value="option6"> 친구톡(I)</label> <label
				class="mr_15" for="wap2"><input name="wap2" id="wap2"
				type="checkbox" value="option7"> WAP</label> <label class="mr_15"
				for="vmms2"><input name="vmms2" id="vmms2" type="checkbox"
				value="option8"> VMMS</label> <label class="mr_15" for="vms2"><input
				name="vms2" id="vms2" type="checkbox" value="option9"> VMS</label> <label
				class="mr_15" for="faxsend2"><input name="faxsend2"
				id="faxsend2" type="checkbox" value="option10"> FAX 발신</label> <label
				class="mr_15" for="faxrecive2"><input name="faxrecive2"
				id="faxrecive2" type="checkbox" value="option11"> FAX 수신</label>
		</p>
	</div>
	<!-- //서비스 체크 -->

	<!-- @그래프자리 -->
	<p class="red mt_15">* 당월은 예상 발송량으로 표시됩니다.</p>
	<div class="mt_15">
		<img src="images/@graph4.gif" alt="그래프자리">
	</div>
	<!-- //@그래프자리 -->
	<!-- //tab_일별 -->

	<!-- tab_증감 TOP 10 업체 -->
	<!-- message -->
	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>품목별 발송량 증가/감소 폭이 큰 업체를 조회합니다.</li>
			<li>기준기간 대비 비교기간 발송량 증감을 표시합니다. 예) 기준기간 10건, 비교기간 15건 → 증가 5건</li>
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
		</colgroup>
		<tbody>
			<tr>
				<th><b class="txt_c_red">*</b> 기준 기간</th>
				<td><input type="text" class="w100">
				<button class="calendar"></button>~ <input type="text" class="w100">
				<button class="calendar"></button></td>
				<th>담당부서</th>
				<td><select class="w100">
						<option>직접입력</option>
				</select></td>
				<td rowspan="2"><a href="#" class="btn_sch_black">검색</a></td>
			</tr>
			<tr>
				<th><b class="txt_c_red">*</b> 비교 기간</th>
				<td><input type="text" class="w100">
				<button class="calendar"></button>~ <input type="text" class="w100">
				<button class="calendar"></button></td>
				<th>담당자</th>
				<td><select class="w100">
						<option>선택</option>
				</select></td>
			</tr>
		</tbody>
	</table>
	<!-- //search -->

	<div class="scroll_y">
		<table class="tb_list_b p200">
			<colgroup>
				<col style="width: 4%">
				<col style="width: 6%">
				<col style="width: 6%">
				<col style="width: 6%">
				<col style="width: 6%">
				<col style="width: 6%">
				<col style="width: 6%">
				<col style="width: 6%">
				<col style="width: 6%">
				<col style="width: 6%">
				<col style="width: 6%">
				<col style="width: 6%">
				<col style="width: 6%">
				<col style="width: 6%">
				<col style="width: 6%">
				<col style="width: 6%">
				<col style="width: 6%">
			</colgroup>
			<thead>
				<tr>
					<th rowspan="3">구분</th>
					<th colspan="4">SMS</th>
					<th colspan="4">LMS</th>
					<th colspan="4">MMS</th>
					<th colspan="4">카카오톡 비즈메시지</th>
				</tr>
				<tr>
					<th colspan="2">증가</th>
					<th colspan="2">감소</th>
					<th colspan="2">증가</th>
					<th colspan="2">감소</th>
					<th colspan="2">증가</th>
					<th colspan="2">감소</th>
					<th colspan="2">증가</th>
					<th colspan="2">감소</th>
				</tr>
				<tr>
					<th>업체명</th>
					<th>증감건수</th>
					<th>업체명</th>
					<th>증감건수</th>
					<th>업체명</th>
					<th>증감건수</th>
					<th>업체명</th>
					<th>증감건수</th>
					<th>업체명</th>
					<th>증감건수</th>
					<th>업체명</th>
					<th>증감건수</th>
					<th>업체명</th>
					<th>증감건수</th>
					<th>업체명</th>
					<th>증감건수</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>다우기술</td>
					<td>2,500,000</td>
					<td>(주)바나나</td>
					<td><span class="red">-2,000,000</span></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>2</td>
					<td>다우기술</td>
					<td>2,500,000</td>
					<td>(주)바나나</td>
					<td><span class="red">-2,000,000</span></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>1</td>
					<td>다우기술</td>
					<td>2,500,000</td>
					<td>(주)바나나</td>
					<td><span class="red">-2,000,000</span></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>1</td>
					<td>다우기술</td>
					<td>2,500,000</td>
					<td>(주)바나나</td>
					<td><span class="red">-2,000,000</span></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>1</td>
					<td>다우기술</td>
					<td>2,500,000</td>
					<td>(주)바나나</td>
					<td><span class="red">-2,000,000</span></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>1</td>
					<td>다우기술</td>
					<td>2,500,000</td>
					<td>(주)바나나</td>
					<td><span class="red">-2,000,000</span></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>1</td>
					<td>다우기술</td>
					<td>2,500,000</td>
					<td>(주)바나나</td>
					<td><span class="red">-2,000,000</span></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>1</td>
					<td>다우기술</td>
					<td>2,500,000</td>
					<td>(주)바나나</td>
					<td><span class="red">-2,000,000</span></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>1</td>
					<td>다우기술</td>
					<td>2,500,000</td>
					<td>(주)바나나</td>
					<td><span class="red">-2,000,000</span></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>1</td>
					<td>다우기술</td>
					<td>2,500,000</td>
					<td>(주)바나나</td>
					<td><span class="red">-2,000,000</span></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>1</td>
					<td>다우기술</td>
					<td>2,500,000</td>
					<td>(주)바나나</td>
					<td><span class="red">-2,000,000</span></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>1</td>
					<td>다우기술</td>
					<td>2,500,000</td>
					<td>(주)바나나</td>
					<td><span class="red">-2,000,000</span></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>1</td>
					<td>다우기술</td>
					<td>2,500,000</td>
					<td>(주)바나나</td>
					<td><span class="red">-2,000,000</span></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>1</td>
					<td>다우기술</td>
					<td>2,500,000</td>
					<td>(주)바나나</td>
					<td><span class="red">-2,000,000</span></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>1</td>
					<td>다우기술</td>
					<td>2,500,000</td>
					<td>(주)바나나</td>
					<td><span class="red">-2,000,000</span></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- //tab_증감 TOP 10 업체 -->
</div>
<!-- //contents -->




</@page.base>




