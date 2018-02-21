<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 라인별 발송통계' />

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
		<h2>라인별 발송통계</h2>
		<blockquote class="txt_bul_bar">
			<a href="">홈</a> > 
			<a href="">통계</a> > 
			<a href="">라인별 발송통계</a>
		</blockquote>
	</div>
	<!-- //title -->

	<!-- message -->
	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>라인별 발송현황을 조회합니다.</li>
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
				<td><input type="text" class="w100">
				<button class="calendar"></button>~ <input type="text" class="w100">
				<button class="calendar"></button></td>
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
				<th>가입일</th>
				<td><label class="mr_5" for="bizLine"><input
						type="radio" id="bizLine" name="bizLine" checked=""> 비즈망</label> <label
					class="mr_5" for="lowLine"><input type="radio" id="lowLine"
						name="lowLine"> 저가망</label> <select class="w100">
						<option value="1">매입처</option>
				</select></td>
				<th>담당자</th>
				<td><select class="w100">
						<option>직접입력</option>
				</select></td>
				<th><select class="w100">
						<option>선택</option>
				</select></th>
				<td><input type="text" class="p90"></td>
			</tr>
		</tbody>
	</table>
	<!-- //search -->

	<!-- button -->
	<div class="align_r mb_15">
		<a href="" class="btn md btn_black mr_3">상세조회</a><a href=""
			class="btn md btn_green">다운로드</a>
	</div>
	<!-- //button -->

	<div class="scroll_y">
		<!-- 발송통계 list table -->
		<table class="tb_list_b p200">
			<colgroup>
				<col style="width: 10%">
				<col style="width: 10%">
				<col style="width: 10%">
				<col style="width: 10%">
				<col style="width: 10%">
				<col style="width: 10%">
				<col style="width: 10%">
				<col style="width: 10%">
				<col style="width: 10%">
				<col style="width: 10%">
			</colgroup>
			<thead>
				<tr>
					<th>망</th>
					<th>매입처</th>
					<th>SMS</th>
					<th>WAP</th>
					<th>LMS</th>
					<th>MMS</th>
					<th>VMS</th>
					<th>VMMS</th>
					<th>MO</th>
					<th>...</th>
				</tr>
			</thead>
			<tbody>
				<tr class="tr_blue">
					<td colspan="2"><b>계</b></td>
					<td>2,000</td>
					<td></td>
					<td>2,000</td>
					<td>2,000</td>
					<td>2,000</td>
					<td>2,000</td>
					<td>2,000</td>
					<td>2,000</td>
				</tr>
				<tr>
					<td rowspan="3">비즈망</td>
					<td>SKT</td>
					<td>100</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>KT</td>
					<td>100</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>LGU</td>
					<td>100</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td rowspan="5">저가망</td>
					<td>아이아트</td>
					<td>100</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>와이즈캔</td>
					<td>100</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
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
				<tr class="tr_blue">
					<td colspan="2"><b>계</b></td>
					<td>2,000</td>
					<td></td>
					<td>2,000</td>
					<td>2,000</td>
					<td>2,000</td>
					<td>2,000</td>
					<td>2,000</td>
					<td>2,000</td>
				</tr>
				<tr>
					<td rowspan="3">비즈망</td>
					<td>SKT</td>
					<td>100</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>KT</td>
					<td>100</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>LGU</td>
					<td>100</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td rowspan="5">저가망</td>
					<td>아이아트</td>
					<td>100</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>와이즈캔</td>
					<td>100</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
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
		<!-- //발송통계 list table -->
	</div>

	<!-- paging -->
	<div class="paging_b">
		<span>
			<button title="처음페이지" class="first" type="button">&lt;&lt;</button>
			<button title="이전 10페이지" class="pre" type="button">&lt;</button>
		</span> <span class="page"> <span class="here">1</span>
		<button type="button">2</button>
			<button type="button">3</button>
			<button type="button">4</button>
			<button type="button">5</button>
			<button type="button">6</button>
			<button type="button">7</button>
			<button type="button">8</button>
			<button type="button">9</button>
			<button type="button">10</button>
		</span> <span>
			<button title="다음 10페이지" class="next" type="button">&gt;</button>
			<button title="마지막페이지" class="last" type="button">&gt;&gt;</button>
		</span>
	</div>
	<!-- //paging -->

</div>
<!-- //contents -->


</@page.base>




