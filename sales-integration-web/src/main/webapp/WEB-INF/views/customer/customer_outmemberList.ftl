<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 해지회원 회원리스트' />

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
		<h2>해지회원 리스트</h2>
		<blockquote class="txt_bul_bar">
			<a href="">홈</a> > 
			<a href="">고객 관리</a> > 
			<a href="">해지회원 리스트</a>
		</blockquote>
	</div>
	<!-- //title -->

	<!-- message -->
	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>사용 해지된 리스트입니다.</li>
			<li>사용 해지 후, 일주일 내 해지 취소가 가능합니다.</li>
			<li class="red">해지 신청 일주일 초과 후 복원이 불가능하며 업체명, 업체담당자, 영업담당자 정보가
				보관됩니다.</li>
		</ul>
	</div>
	<!-- //message -->

	<!-- id/서비스 검색 -->
	<div class="box_grey box_search">
		<p class="align_c">
			<select class="w100">
				<option value="1">ID</option>
				<option value="2">1</option>
				<option value="3">2</option>
				<option value="4">3</option>
				<option value="5">4</option>
			</select> <input id="input1" type="text" placeholder="검색 내용 입력" class="mr_15">
			<label for="input1" class="bul">서비스</label> <label for="bizRadios"><input
				name="bizRadios" id="bizRadios" type="radio" checked=""
				value="option1"> 비즈뿌리오</label> <label for="ufitRadios" class="mr_15"><input
				name="ufitRadios2" id="ufitRadios" type="radio" value="option2">
				유핏</label> <a href="#" class="btn_sm_sch_black r3">검색</a>
		</p>
	</div>
	<!-- //id/서비스 검색 -->

	<!-- 회원 리스트 table -->
	<table class="tb_list_b">
		<colgroup>
			<col style="width: 10%">
			<col style="width: 15%">
			<col style="width: 15%">
			<col style="width: 16%">
			<col style="width: 14%">
			<col style="width: 16%">
			<col style="width: 14%">
		</colgroup>
		<thead>
			<tr>
				<th>No.</th>
				<th>해지일 <a href="" class="btn_vsm mr_3"><span
						class="ico_up">오름차순</span></a><a href="" class="btn_vsm"><span
						class="ico_down">내림차순</span></a></th>
				<th>서비스</th>
				<th>업체명/이름</th>
				<th>ID</th>
				<th>담당자 전화번호</th>
				<th>해지 취소 및 회원 정보</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>320</td>
				<td>2017.12.21</td>
				<td>비즈뿌리오</td>
				<td>다우기술</td>
				<td>daou</td>
				<td>070-1234-5678</td>
				<td><a href="" class="btn_sm_gray mr_3">해지취소</a><a href=""
					class="btn_sm_skyBlue">정보보기</a></td>
			</tr>
			<tr>
				<td>320</td>
				<td>2017.12.21</td>
				<td>비즈뿌리오</td>
				<td>다우기술</td>
				<td>daou</td>
				<td>070-1234-5678</td>
				<td><a href="" class="btn_sm_gray mr_3">해지취소</a><a href=""
					class="btn_sm_skyBlue">정보보기</a></td>
			</tr>
			<tr>
				<td>320</td>
				<td>2017.12.21</td>
				<td>비즈뿌리오</td>
				<td>다우기술</td>
				<td>daou</td>
				<td>070-1234-5678</td>
				<td><a href="" class="btn_sm_gray mr_3">해지취소</a><a href=""
					class="btn_sm_skyBlue">정보보기</a></td>
			</tr>
			<tr>
				<td>320</td>
				<td>2017.12.21</td>
				<td>비즈뿌리오</td>
				<td>다우기술</td>
				<td>daou</td>
				<td>070-1234-5678</td>
				<td><a href="" class="btn_sm_gray mr_3">해지취소</a><a href=""
					class="btn_sm_skyBlue">정보보기</a></td>
			</tr>
			<tr>
				<td>320</td>
				<td>2017.12.21</td>
				<td>비즈뿌리오</td>
				<td>다우기술</td>
				<td>daou</td>
				<td>070-1234-5678</td>
				<td><a href="" class="btn_sm_gray mr_3">해지취소</a><a href=""
					class="btn_sm_skyBlue">정보보기</a></td>
			</tr>
			<tr>
				<td>320</td>
				<td>2017.12.21</td>
				<td>비즈뿌리오</td>
				<td>다우기술</td>
				<td>daou</td>
				<td>070-1234-5678</td>
				<td><a href="" class="btn_sm_gray mr_3">해지취소</a><a href=""
					class="btn_sm_skyBlue">정보보기</a></td>
			</tr>
			<tr>
				<td>320</td>
				<td>2017.12.21</td>
				<td>비즈뿌리오</td>
				<td>다우기술</td>
				<td>daou</td>
				<td>070-1234-5678</td>
				<td><a href="" class="btn_sm_gray mr_3">해지취소</a><a href=""
					class="btn_sm_skyBlue">정보보기</a></td>
			</tr>
			<tr>
				<td>320</td>
				<td>2017.12.21</td>
				<td>비즈뿌리오</td>
				<td>다우기술</td>
				<td>daou</td>
				<td>070-1234-5678</td>
				<td><a href="" class="btn_sm_gray mr_3">해지취소</a><a href=""
					class="btn_sm_skyBlue">정보보기</a></td>
			</tr>
			<tr>
				<td>320</td>
				<td>2017.12.21</td>
				<td>비즈뿌리오</td>
				<td>다우기술</td>
				<td>daou</td>
				<td>070-1234-5678</td>
				<td><a href="" class="btn_sm_gray mr_3">해지취소</a><a href=""
					class="btn_sm_skyBlue">정보보기</a></td>
			</tr>
			<tr>
				<td>320</td>
				<td>2017.12.21</td>
				<td>비즈뿌리오</td>
				<td>다우기술</td>
				<td>daou</td>
				<td>070-1234-5678</td>
				<td><a href="" class="btn_sm_gray mr_3">해지취소</a><a href=""
					class="btn_sm_skyBlue">정보보기</a></td>
			</tr>
			<tr>
				<td>320</td>
				<td>2017.12.21</td>
				<td>비즈뿌리오</td>
				<td>다우기술</td>
				<td>daou</td>
				<td>070-1234-5678</td>
				<td><a href="" class="btn_sm_gray mr_3">해지취소</a><a href=""
					class="btn_sm_skyBlue">정보보기</a></td>
			</tr>
			<tr>
				<td>320</td>
				<td>2017.12.21</td>
				<td>비즈뿌리오</td>
				<td>다우기술</td>
				<td>daou</td>
				<td>070-1234-5678</td>
				<td><a href="" class="btn_sm_gray mr_3">해지취소</a><a href=""
					class="btn_sm_skyBlue">정보보기</a></td>
			</tr>
			<tr>
				<td>320</td>
				<td>2017.12.21</td>
				<td>비즈뿌리오</td>
				<td>다우기술</td>
				<td>daou</td>
				<td>070-1234-5678</td>
				<td><a href="" class="btn_sm_gray mr_3">해지취소</a><a href=""
					class="btn_sm_skyBlue">정보보기</a></td>
			</tr>
			<tr>
				<td>320</td>
				<td>2017.12.21</td>
				<td>비즈뿌리오</td>
				<td>다우기술</td>
				<td>daou</td>
				<td>070-1234-5678</td>
				<td><a href="" class="btn_sm_gray mr_3">해지취소</a><a href=""
					class="btn_sm_skyBlue">정보보기</a></td>
			</tr>
			<tr>
				<td>320</td>
				<td>2017.12.21</td>
				<td>비즈뿌리오</td>
				<td>다우기술</td>
				<td>daou</td>
				<td>070-1234-5678</td>
				<td><a href="" class="btn_sm_gray mr_3">해지취소</a><a href=""
					class="btn_sm_skyBlue">정보보기</a></td>
			</tr>
			<tr>
				<td>320</td>
				<td>2017.12.21</td>
				<td>비즈뿌리오</td>
				<td>다우기술</td>
				<td>daou</td>
				<td>070-1234-5678</td>
				<td><a href="" class="btn_sm_gray mr_3">해지취소</a><a href=""
					class="btn_sm_skyBlue">정보보기</a></td>
			</tr>
			<tr>
				<td>320</td>
				<td>2017.12.21</td>
				<td>비즈뿌리오</td>
				<td>다우기술</td>
				<td>daou</td>
				<td>070-1234-5678</td>
				<td><a href="" class="btn_sm_gray mr_3">해지취소</a><a href=""
					class="btn_sm_skyBlue">정보보기</a></td>
			</tr>
			<tr>
				<td>320</td>
				<td>2017.12.21</td>
				<td>비즈뿌리오</td>
				<td>다우기술</td>
				<td>daou</td>
				<td>070-1234-5678</td>
				<td><a href="" class="btn_sm_gray mr_3">해지취소</a><a href=""
					class="btn_sm_skyBlue">정보보기</a></td>
			</tr>
		</tbody>
	</table>

	<!-- paging -->
	<div class="paging_b mt_15">
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
</div>
<!-- //contents -->





</@page.base>




