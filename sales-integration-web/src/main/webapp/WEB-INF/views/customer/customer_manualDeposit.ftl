<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 수동 입출금' />

<@page.base pageTitle>

<!-- 레이어 팝업 css -->
<!-- 일단 편의상 각 페이지 별로 css 설정 (sales.css 파일에 각각의 이름을 두고 관리 가능) -->
<style>
	/* 발신프로필 등록 팝업 레이어 css */
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
        height: 330px;
        width: 640px;
        z-index:99999;
    }
</style>

<#include '/include/customer-left-menu.ftl'>
<!-- contents -->
<div class="container_r">
   	<!-- title -->
   	<div class="title_b">
   		<em></em>
   		<h2>수동 입출금</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">고객 관리</a> > 
			<a href="">수동입출금</a>
		</blockquote>
	</div>
	<!-- //title -->
	
	<!-- message -->
	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>선불 업체 캐시를 충전, 차감합니다.</li>
			<li>잔액 종류– Balance: 정상 결제, Point Balance: 서비스 적립</li>
			<li>잔액 차감 순서 : Point Balance > Balance</li>
		</ul>					
	</div>
	<!-- //message -->
	
	<!-- ID 검색 -->			
	<div class="box_grey">
		<p class="align_c">
			<select class="w100 mr_15">
				<option>ID</option>
			</select>
			<input id="input1" type="text" placeholder="검색 내용 입력" class="w200">
			<a href="#" class="btn_sm_sch_black r3">검색</a>
		</p>
	</div>
	<!-- //ID 검색 -->
	
	<!-- 입출금 정보 table -->
	<table class="tb_list_b">
		<colgroup>
			<col style="width:11.5%">
			<col style="width:11.5%">
			<col style="width:12.5%">
			<col style="width:12.5%">
			<col style="width:12.5%">
			<col style="width:12.5%">
			<col style="width:11.5%">
			<col style="width:14.5%">
		</colgroup>
		<thead>
			<tr>
				<th>ID</th>
				<th>서비스</th>
				<th>업체명</th>
				<th>담당부서</th>
				<th>담당자</th>
				<th>Balance</th>
				<th>Point Balane</th>
				<th>캐시 충전/차감</th>
			</tr>
		</thead>
		<tbody>
			<!-- 여기서부터 반복 
				 (원래는 Controller를 거쳐 list를 받아와 해당 정보를 출력하는 것)
			-->
			<#list 1..5 as i>
				<tr>
					<td>gogs766</td>
					<td>비즈뿌리오</td>
					<td>수지닷컴</td>
					<td>MSG1</td>
					<td>김현진</td>
					<td>2,000 \</td>
					<td>1,000 \</td>
					<td>
						<a href="" class="btn_sm_blue mr_3">충전</a><a class="btn_sm_gray mr_3">차감</a>
					</td>
				</tr>
			</#list>
		</tbody>
	</table>
      <!-- //입출금 정보 table -->	
      
      <table class="tb_list2_a">
      		<colgroup>
      			<col style="width:20%">
      			<col style="width:80%">
      		</colgroup>
      		<tbody>
      			<tr>
      				<th><b class="txt_c_red">*</b> 용도</th>
      				<td>
      					<!-- 충전 일 때 -->
      					<select class="w200" style="display:none">
      						<option value="1">가입출하금</option>
      						<option value="2">무통장입금</option>
      						<option value="3">무통장입금(선발행)</option>
      						<option value="4">서비스보상</option>
      						<option value="5">기타적립</option>
      					</select>
      					<!-- //충전 일 때 -->
      					
       				<!-- 차감 일 때 -->
      					<select class="w200" style="display:block">
      						<option value="1">가입출하금 취소</option>
      						<option value="2">무통장입금 취소</option>
      						<option value="3">서비스보상 취소</option>
      						<option value="4">기타출금</option>
      						<option value="5">환불</option>
      					</select>
      					<!-- //충전 일 때 -->      					
      				</td>
      			</tr>
      			<tr>
      				<th><b class="txt_c_red">*</b> 금액</th>
      				<td><input type="text" class="w200" /> \</td>
      			</tr>
      			<tr>
      				<th>입금은행</th>
      				<td>
      					<select id="bankSelect" class="w200">
      						<option value="1">1</option>
      						<option value="2">2</option>
      						<option value="3">3</option>
      						<option value="4">4</option>
      						<option value="5">5</option>
      					</select>
      				</td>
      			</tr>
      			<tr>
      				<th>입금자</th>
      				<td><input type="text" class="w200" /> \</td>
      			</tr>
      			<tr>
      				<th>입금일</th>
      				<td>
      					<input type="text" class="w100" /> 년
      					<input type="text" class="w60" /> 월
      					<input type="text" class="w60" /> 일
      				</td>
      			</tr>
      			<tr>
      				<th>비고</th>
      				<td>
      					<textarea class="w300" rows="5"></textarea>
      				</td>
      			</tr>
      		</tbody>
      </table>

      <!-- 하단 버튼 -->
       <div class="btn_area mb_15">
       	<a href="#" class="btn lg btn_blue" id="detailBtn">확인</a>
		<a href="#" class="btn lg btn_gray">취소</a>
       </div>
       <!-- //하단 버튼 -->				
</div>
<!-- //contents -->

<!-- 레이어 팝업 -->
<div class="mask"></div>
<div class="window">
	<!-- popup_수동 입출금 확인 -->
	<div class="popup_wrap ">
		<div class="title_box">
			<h1>수동 입출금 확인</h1>
		</div>
		<div class="contents">
			<table class="tb_list2_a">
				<colgroup>
					<col style="width:15%">
					<col style="width:35%">
					<col style="width:15%">
					<col style="width:35%">					
				</colgroup>
				<tbody>
					<tr>
						<th>ID</th>
						<td>sicon</td>
						<th>서비스</th>
						<td>비즈뿌리오</td>						
					</tr>
					<tr>
						<th>내역</th>
						<td colspan="3">충전(가입축하금)</td>
					</tr>
					<tr>
						<th>금액</th>
						<td colspan="3">1,000 \</td>
					</tr>
					<tr>
						<th>비고</th>
						<td colspan="3">1,000 \</td>
					</tr>															
				</tbody>
			</table>
		</div>
		<div class="btn_area"><button class="btn md btn_blue">확인 후 승인</button><button class="btn md btn_gray ml_5 close">수동 입출금 취소</button></div>	
	</div>
	<!-- popup_수동 입출금 확인 -->
</div>
</@page.base>




