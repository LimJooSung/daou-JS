<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 승인 전 회원리스트' />

<@page.base pageTitle>

<#include '/include/customer-left-menu.ftl'>
<!-- contents -->
<div class="container_r">
	<!-- title -->
	<div class="title_b">
		<em></em>
		<h2>승인 전 회원 리스트</h2>
		<blockquote class="txt_bul_bar">
			<a href="">홈</a> > 
			<a href="">고객 관리</a> > 
			<a href="">승인 전 회원 리스트</a>
		</blockquote>
	</div>
	<!-- //title -->

	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>고객이 회원가입 시 입력한 정보를 확인하고 승인합니다.</li>
			<li>담당부서, 담당자, 회원타입(필수) 관리자계정(선택)을 입력하고 계정을 승인합니다.</li>
			<li>그 외 항목 수정은 승인 완료 후 회원정보에서 가능합니다.</li>
		</ul>
	</div>

	<div class="align_r">
		<a href="" class="btn_md_blue">사용 승인</a>
	</div>

	<div class="cont_area mt_15">
		<div class="cont_l">
			<table class="tb_list2_a mb_15">
				<colgroup>
					<col style="width: 20%">
					<col style="width: 30%">
					<col style="width: 20%">
					<col style="width: 30%">
				</colgroup>
				<tbody>
					<tr>
						<th>ID</th>
						<td>@daou</td>
						<th>서비스</th>
						<td>비즈뿌리오</td>
					</tr>
					<tr>
						<th>업체명</th>
						<td colspan="3">다우기술</td>
					</tr>
				</tbody>
			</table>

			<table class="tb_list2_a mb_15">
				<colgroup>
					<col style="width: 25%">
					<col style="width: 25%">
					<col style="width: 25%">
					<col style="width: 25%">
				</colgroup>
				<tbody>
					<tr>
						<th>업태</th>
						<td>서비스</td>
						<th>종목</th>
						<td>S/W</td>
					</tr>
					<tr>
						<th>사업자등록 번호</th>
						<td>12-3456-789</td>
						<th>법인등록번호</th>
						<td>1101112224444</td>
					</tr>
					<tr>
						<th>대표자명</th>
						<td>김윤덕</td>
						<th>종사업자번호</th>
						<td>1234</td>
					</tr>
					<tr>
						<th>회사주소</th>
						<td colspan="3">우편번호 12345<br /> 주소 경기도 용인시 수지구 디지털벨리로 81<br />
							디지털 스퀘어 6층
						</td>
					</tr>
				</tbody>
			</table>
		</div>

		<div class="cont_r">
			<table class="tb_list2_a mb_20">
				<colgroup>
					<col style="width: 25%">
					<col style="width: 25%">
					<col style="width: 25%">
					<col style="width: 25%">
				</colgroup>
				<tbody>
					<tr>
						<th><b class="txt_c_red">*</b> 담당부서</th>
						<td><select id="select1" class="w100">
								<option value="1">1</option>
							</select></td>
						<th><b class="txt_c_red">*</b> 담당자</th>
						<td><select id="select2" class="w100">
								<option value="1">2</option>
							</select></td>
					</tr>
				</tbody>
			</table>

			<table class="tb_list2_a mb_15">
				<colgroup>
					<col style="width: 25%">
					<col style="width: 25%">
					<col style="width: 25%">
					<col style="width: 25%">
				</colgroup>
				<thead>
					<tr>
						<th colspan="2">서비스 담당자</th>
						<th colspan="2">정산 담당자</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th><b class="txt_c_red">*</b> 이름</th>
						<td>김철수</td>
						<th><b class="txt_c_red">*</b> 이름</th>
						<td>김메리</td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 휴대폰 번호</th>
						<td>010-1234-1234</td>
						<th><b class="txt_c_red">*</b> 휴대폰 번호</th>
						<td>010-1234-1234</td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 전화번호</th>
						<td>070-1234-1234</td>
						<th><b class="txt_c_red">*</b> 전화번호</th>
						<td>070-1234-1234</td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 이메일</th>
						<td>message2@daou.co.kr</td>
						<th><b class="txt_c_red">*</b> 이메일</th>
						<td>abc@daou.co.kr</td>
					</tr>
					<tr>
						<th>팩스</th>
						<td>0303-3443-1111</td>
						<th>팩스</th>
						<td></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
<!-- //contents -->

</@page.base>




