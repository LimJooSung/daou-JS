<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 해지회원 회원리스트' />

<@page.base pageTitle>

<!-- 레이어 팝업 css -->
<!-- 일단 편의상 각 페이지 별로 css 설정 (sales.css 파일에 각각의 이름을 두고 관리 가능) -->
<style>
    .mask {
        position:absolute;
        left:0;
        top:0;
        z-index:9999;
        background-color:#000;
        display:none;
    }
    .window {
        display: none;
        background-color: #ffffff;
        height: 300px;
        width: 350px;
        z-index:99999;
    }
</style>

<#include '/include/customer-left-menu.ftl'>
<!-- contents -->
<div class="container_r">
	<!-- title -->
	<div class="title_b">
		<em></em>
		<h2>해지회원 리스트</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
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
			<li class="red">해지 신청 일주일 초과 후 복원이 불가능하며 업체명, 업체담당자, 영업담당자 정보가 보관됩니다.</li>
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
			<label for="input1" class="bul">서비스</label> 
			<label for="bizRadios"><input name="bizRadios" id="bizRadios" type="radio" checked="" value="option1"> 비즈뿌리오</label> 
			<label for="ufitRadios" class="mr_15"><input name="ufitRadios2" id="ufitRadios" type="radio" value="option2"> 유핏</label> 
			<a href="#" class="btn_sm_sch_black r3">검색</a>
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
				<th>해지일 
					<a href="" class="btn_vsm mr_3"><span class="ico_up">오름차순</span></a>
					<a href="" class="btn_vsm"><span class="ico_down">내림차순</span></a></th>
				<th>서비스</th>
				<th>업체명/이름</th>
				<th>ID</th>
				<th>담당자 전화번호</th>
				<th>해지 취소 및 회원 정보</th>
			</tr>
		</thead>
		<tbody>
			<!-- 여기서부터 반복 
				 (원래는 Controller를 거쳐 list를 받아와 해당 정보를 출력하는 것)
			-->
			<#list 1..18 as i>
				<tr>
					<td>320</td>
					<td>2017.12.21</td>
					<td>비즈뿌리오</td>
					<td>다우기술</td>
					<td>daou</td>
					<td>070-1234-5678</td>
					<td><a href="" class="btn_sm_gray mr_3">해지취소</a>
						<a href="" class="btn_sm_skyBlue" id="detailBtn">정보보기</a>
					</td>
				</tr>
			</#list>
		</tbody>
	</table>

	<!-- paging -->
	<div class="paging_b mt_15">
		<span>
			<button title="처음페이지" class="first" type="button">&lt;&lt;</button>
			<button title="이전 10페이지" class="pre" type="button">&lt;</button>
		</span> 
		<span class="page"> 
			<span class="here">1</span>
			<!-- 버튼을 반복해서 출력 -->
			<#list 2..10 as i>
				<button type="button">${i}</button>
			</#list>
		</span> 
		<span>
			<button title="다음 10페이지" class="next" type="button">&gt;</button>
			<button title="마지막페이지" class="last" type="button">&gt;&gt;</button>
		</span>
	</div>
	<!-- //paging -->
</div>
<!-- //contents -->

<!-- 레이어 팝업 -->
<div class="mask"></div>
<div class="window">
	<!-- popup_회원 정보 -->
	<div class="popup_wrap ">
		<div class="title_box">
			<h1>회원 정보</h1>
		</div>
		<div class="contents">
			<ul class="txt_info ml_20">
				<li>업체명 : 이머니</li>
				<li>사업자등록번호 : 123-45-6789</li>
				<li>승인일 : 2016.05.15 / 해지일 : 2016.05.25</li>
				<li>담당자 : 김철수</li>
				<li>담당자 전화번호 : 02-1111-2222</li>
				<li>영업담당자 : 윤수지</li>	
			</ul>
		</div>
		<div class="bnt_area"><button class="btn md btn_blue close">확인</button></div>				
	</div>
	<!-- //popup_회원 정보 -->
</div>
</@page.base>




