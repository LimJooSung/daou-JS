<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 발신번호 담당자 관리' />

<@page.base pageTitle>

<!-- 레이어 팝업 css -->
<!-- 일단 편의상 각 페이지 별로 css 설정 (sales.css 파일에 각각의 이름을 두고 관리 가능) -->
<style>
    .setDiv {
        padding-top: 100px;
        text-align: center;
    }
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
        height: 320px;
        width: 480px;
        z-index:99999;
    }
</style>

<#include '/include/customer-left-menu.ftl'>
<!-- contents -->
<div class="container_r">    
   	<!-- title -->
   	<div class="title_b">
   		<em></em>
   		<h2>발신번호 담당자 관리</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">고객 관리</a> > 
			<a href="">발신번호 관리</a> > 
			<a href="">발신번호 담당자 관리</a>
		</blockquote>
	</div>
	<!-- //title -->
	
	<!-- message -->
	<div class="box_b3 mb_15">
  		<ul class="txt_info">
   			<li>ID별 발신번호 등록 담당자를 승인합니다.</li>
		</ul>
	</div>
	<!-- //message -->
	
	<!-- 아이디 및 서비스 선택 후 검색 -->
	<div class="box_grey box_search">
		<p class="align_c">
			<select id="idselect" class="w100">
				<option value="1">ID</option>
				<option value="2">1</option>
				<option value="3">2</option>
				<option value="4">3</option>
				<option value="5">4</option>
			</select>
			<input id="input1" type="text" placeholder="검색 내용 입력" class="mr_15">
			<label class="bul">서비스</label>
			<label for="bizRadios"><input name="bizRadios" id="bizRadios" type="radio" checked="" value="option1"> 비즈뿌리오</label>
			<label for="ufitRadios" class="mr_15"><input name="ufitRadios" id="ufitRadios" type="radio" value="option2"> 유핏</label>
			<a href="#" class="btn_sm_sch_black r3">검색</a>
		</p>
	</div>	
	<!-- //아이디 및 서비스 선택 후 검색 -->
			
	<!-- button -->
	<div class="align_r mb_15">
		<a href="" class="btn md btn_blue">승인</a>
		<a href="" class="btn md btn_gray" id="detailBtn">반려</a>
	</div>
	<!-- //button -->

	<!-- table list -->	
	<table class="tb_list_b">
	   <colgroup>
			<col style="width:5.3%">
			<col style="width:8.3%">
			<col style="width:8.3%">
			<col style="width:8.3%">
			<col style="width:8.3%">
			<col style="width:9.3%">
			<col style="width:9.3%">
			<col style="width:8.3%">
			<col style="width:8.3%">
			<col style="width:9.3%">
			<col style="width:8.3%">
			<col style="width:8.3%">				
		</colgroup>
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>No.</th>
				<th>ID</th>
				<th>서비스</th>
				<th>업체명</th>
				<th>담당부서<br />
					<select id="partSelect" class="w80">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option> 
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
				</th>
				<th>담당자<br />
					<select id="managerSelect" class="w80">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option> 
						<option value="4">4</option>
						<option value="5">5</option>
					</select>					
				</th>
				<th>신청일</th>
				<th>업체담당자</th>
				<th>휴대폰번호</th>
				<th>첨부 파일</th>
				<th>상태<br />
					<select id="conditionSelect" class="w80">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option> 
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
				</th>
			</tr>
		</thead>
		<tbody>
			<!-- 여기서부터 반복 
				 (원래는 Controller를 거쳐 list를 받아와 해당 정보를 출력하는 것)
			-->
			<#list 1..11 as i>
				<tr>
					<td><input type="checkbox"></td>
					<td>1200</td> 
					<td>daou</td>
					<td>비즈뿌리오</td>
					<td>다우기술</td>
					<td>MSG1</td> 
					<td>김현진</td>
					<td>2017.12.22</td>  						 
					<td>윤수지</td>
					<td>010-1234-5678</td> 
					<td><a href="#" class="btn_sm_skyBlue">보기</a></td>
					<td>승인요청</td>  						 					  						 
				</tr>
			</#list>
		</tbody>
	</table>
	<!-- //table list -->

	
	<!-- paging -->
	<div class="paging_b">
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
	<!-- popup_발신번호 담당자 반려 완료 -->
	<div class="popup_wrap ">
		<div class="title_box">
			<h1>발신번호 담당자 반려 완료</h1>
		</div>
		<div class="contents">
			<p class="align_c">발신번호 담당자 등록이 반려되었습니다.<br />고객 담당자에게 문자를 전송합니다.</p>
			<table class="tb_list2_a mt_15">
				<colgroup>
					<col style="width:20%">
					<col style="width:80%">
				</colgroup>
				<tbody>
					<tr>
						<th>반려 사유<br>(선택)</th>
						<td><input type="text" class="w200"></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="btn_area">
			<a href="" class="btn md btn_blue">문자 전송</a>
			<a href="" class="btn md btn_gray close">전송 안함</a>
		</div>
	</div>
	<!-- popup_발신번호 담당자 반려 완료 -->
</div>
</@page.base>




