<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 여신생성' />

<@page.base pageTitle>

<#include '/include/customer-left-menu.ftl'>
<!-- contents -->
<div class="container_r">
	<!-- title -->
	<div class="title_b">
		<em></em>
		<h2>여신생성</h2>
		<blockquote class="txt_bul_bar">
			<a href="">홈</a> > 
			<a href="">고객 관리</a> > 
			<a href="">여신관리</a>
		</blockquote>
	</div>
	<!-- //title -->

	<!-- message -->
	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>자동 생성되지 않은 업체 대상으로 여신(코드)을 임의 생성합니다.</li>
			<li>동일 사업자등록번호 내, 모든 계정을 대상으로 여신을 설정합니다.(계정 추가/삭제 불가)</li>
		</ul>
	</div>
	<!-- //message -->

	<!-- button -->
	<div class="align_r mb_15">
		<a href="#" class="btn md btn_green">목록</a>
	</div>
	<!-- //button -->

	<!-- search -->
	<div class="box_grey box_search">
		<p class="align_c">
			<select class="w100" id="compselect">
				<option value="1">업체명</option>
				<option value="2">1</option>
				<option value="3">2</option>
				<option value="4">3</option>
				<option value="5">4</option>
			</select> 
			<input id="input1" type="text" placeholder="검색 내용 입력" class="w200 mr_1"> 
			<a href="#" class="btn_sm_sch_black r3">검색</a>
		</p>
	</div>
	<!-- //search -->

	<!-- table_list -->
	<table class="tb_list_b">
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
	<!-- //table_list -->

	<!-- 일반여신/특별여신 -->
	<div class="box_b3">
		<div class="form_group p100">
			<p class="align_c mb_15">
				<label for="normalRadios" class="mr_15">
					<input name="normalRadios" id="normalRadios" type="radio" checked="" value="option1"> 일반여신</label> 
				<label for="spacialRadios" class="mr_15">
					<input name="spacialRadios2" id="spacialRadios" type="radio" value="option2"> 특별여신</label>
			</p>

			<!-- 일반 여신 선택 시 -->
			<table class="tb_list2_a p80 mar_auto">
				<colgroup>
					<col style="width: 20%">
					<col style="width: 80%">
				</colgroup>
				<tbody>
					<tr>
						<th>사업자등록증</th>
						<td><input type="file" class="w200"></td>
					</tr>
					<tr>
						<th>신용평가보고서</th>
						<td><input type="file" class="w200"></td>
					</tr>
					<tr>
						<th>여신 금액</th>
						<td><input type="text" class="w200 mr_5" placeholder="여신 입력" />
							\</td>
					</tr>
				</tbody>
			</table>
			<!-- //일반 여신 선택 시 -->

			<!-- 특별 여신 선택 시 -->
			<table class="tb_list2_a p80 mar_auto">
				<colgroup>
					<col style="width: 20%">
					<col style="width: 80%">
				</colgroup>
				<tbody>
					<tr>
						<th>사업자등록증</th>
						<td><input type="file" class="w200"></td>
					</tr>
					<tr>
						<th>여신 금액</th>
						<td><input type="text" class="w200 mr_5" placeholder="여신 입력" />
							\</td>
					</tr>
					<tr>
						<th>신청 사유</th>
						<td><input type="text" class="w200 mr_5" placeholder="사유 입력" /></td>
					</tr>
					<tr>
						<th>기간 설정</th>
						<td>
							<p>
								<select class="w80">
									<option value="">2017</option>
								</select> 년 
								<select class="w60">
									<option value="">00</option>
								</select> 월 ~ 
								<select class="w80">
									<option value="">2017</option>
								</select> 년 
								<select class="w60">
									<option value="">00</option>
								</select> 월
							</p>
							<p class="red">*최대 6개월 설정 가능</p>
						</td>
					</tr>
				</tbody>
			</table>
			<!-- //일반여신/특별여신 -->
		</div>
	</div>
	<!-- //select -->

	<!-- 하단 버튼 -->
	<div class="btn_area mb_15">
		<a href="#" class="btn lg btn_blue">확인</a> 
		<a href="#" class="btn lg btn_gray">취소</a>
	</div>
	<!-- //하단 버튼 -->
</div>
<!-- //contents -->

</@page.base>




