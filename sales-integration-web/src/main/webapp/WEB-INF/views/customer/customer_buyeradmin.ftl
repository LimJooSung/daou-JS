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

	<!-- message -->
	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>매입처의 기본료, 구간 원가를 조회/등록합니다.</li>
		</ul>
	</div>
	<!-- //message -->

	<!-- 매입처명 검색/등록 -->
	<div class="box_grey box_search">
		<p class="align_c">
			<label class="bul mr_5" for="buyer">매입처명</label> 
			<input id="buyer" type="text" placeholder="검색 내용 입력" class="mr_5 w200"> 
			<a href="#" class="btn_sm_sch_black r3">검색</a> 
			<a href="${rc.contextPath}/customerBuyeradminApply.do" class="btn_sm_blue">등록</a>
		</p>
	</div>
	<!-- //매입처명 검색/등록 -->

	<!-- button -->
	<div class="mt_15 align_r">
		<a href="#" class="btn_md_skyBlue">수정</a> 
		<a href="" class="btn_md_gray">삭제</a>
	</div>
	<!-- //button -->

	<!-- 사업자등록번호/담당자/전화번호/이메일 정보 -->
	<table class="tb_list2_a mt_15">
		<colgroup>
			<col style="width: 20%">
			<col style="width: 30%">
			<col style="width: 20%">
			<col style="width: 30%">
		</colgroup>
		<tbody>
			<tr>
				<th>사업자등록번호</th>
				<td>123-23-23457</td>
				<th>담당자</th>
				<td>조인성</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td>010-1234-5678</td>
				<th>이메일</th>
				<td>daou@daou.co.kr</td>
			</tr>
		</tbody>
	</table>
	<!-- //사업자등록번호/담당자/전화번호/이메일 정보 -->

	<div class="scroll h300">
		<table class="tb_list_b">
			<colgroup>
				<col style="width: 25%">
				<col style="width: 25%">
				<col style="width: 25%">
				<col style="width: 25%">
			</colgroup>
			<thead>
				<tr>
					<th>품목 
						<select id="itemSelect" class="w150">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
						</select>
					</th>
					<th>기본료</th>
					<th>구간</th>
					<th>원가</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td rowspan="4">SMS</td>
					<td rowspan="4">100,000 \</td>
					<td>~ 100,000</td>
					<td>20 \</td>
				</tr>
				<tr>
					<td>~ 1,000,000</td>
					<td>18 \</td>
				</tr>
				<tr>
					<td>...</td>
					<td>...</td>
				</tr>
				<tr>
					<td>23,010,000</td>
					<td>7 \</td>
				</tr>
				<tr>
					<td>LMS</td>
					<td>100,000 \</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
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
				</tr>
				<tr>
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
				</tr>
				<tr>
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
				</tr>
			</tbody>
		</table>
	</div>

</div>
<!-- //contents -->

</@page.base>




