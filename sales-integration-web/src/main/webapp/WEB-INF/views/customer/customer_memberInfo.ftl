<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 회원정보' />

<@page.base pageTitle>

<script>
	/********* 팝업 레이어 스크립트 (단가 복사) **********/
	/********* 하나의 페이지에서 여러개의 팝업 레이어를 띄우기 위해 추가 **********/
	function wrapWindowByMask4(){
	    // 화면의 높이와 너비를 변수로 만듦
	    var maskHeight = $(document).height();
	    var maskWidth = $(window).width();
	
	    // 마스크의 높이와 너비를 화면의 높이와 너비 변수로 설정
	    $('.unitpriceCopy_mask').css({'width':maskWidth,'height':maskHeight});
	
	    // fade 애니메이션 :80%의 불투명 처리
	    $('.unitpriceCopy_mask').fadeTo("slow",0.8);
	
	    // 레이어 팝업을 가운데로 띄우기 위해 화면의 높이와 너비의 가운데 값과 스크롤 값을 더하여 변수로 만듦
	    var left = ( $(window).scrollLeft() + ( $(window).width() - $('.unitpriceCopy_window').width()) / 2 );
	    var top = ( $(window).scrollTop() + ( $(window).height() - $('.unitpriceCopy_window').height()) / 2 );
	
	    // css 스타일을 변경
	    $('.unitpriceCopy_window').css({'left':left,'top':top, 'position':'absolute'});
	
	    // 레이어 팝업을 띄움
	    $('.unitpriceCopy_window').show();
	}
	
	$(document).ready(function(){
	    // showMask를 클릭시 작동하며 검은 마스크 배경과 레이어 팝업을 띄움
	    $('#unitpriceCopyBtn').click(function(e){
	        // preventDefault는 href의 링크 기본 행동을 막는 기능
	        e.preventDefault();
	        wrapWindowByMask4();
	    });
	
	    // 닫기(close)를 눌렀을 때 작동
	    $('.unitpriceCopy_window .close').click(function (e) {
	        e.preventDefault();
	        $('.unitpriceCopy_mask, .unitpriceCopy_window').hide();
	    });
	
	    // 뒤 검은 마스크를 클릭시에도 모두 제거하도록 처리
	    $('.unitpriceCopy_mask').click(function () {
	        $(this).hide();
	        $('.unitpriceCopy_window').hide();
	    });
	});
/*******************************************/
</script>
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
        height: 470px;
        width: 600px;
        z-index:99999;
    }
    .unitpriceCopy_mask {
        position:absolute;
        left:0;
        top:0;
        z-index:9999;
        background-color:#000;
        display:none;
    }
    .unitpriceCopy_window {
        display: none;
        background-color: #ffffff;
        height: 400px;
        width: 450px;
        z-index:99999;
    }
</style>

<#include '/include/customer-left-menu.ftl'>
<!-- contents -->
<div class="container_r">    
   	<!-- title -->
   	<div class="title_b">
   		<em></em>
   		<h2>회원정보</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">고객 관리</a> > 
			<a href="">회원 정보</a>
		</blockquote>
	</div>
	<!-- //title -->
	
	<!-- message -->
	<div class="box_b3 mb_15 posit_r">
  			<ul class="txt_info f_l">
   			<li><b class="txt_c_red">*</b> 표시된 항목은 필수 입력 값입니다.</li>
   			<li>신규 업체 등록(선/후불), 후불 전환 시 전자결재를 진행해야 합니다.</li>
   			<li>버튼 설명
   				<p>- 수정 : 수정 가능한 상태로 전환</p>
   				<p>- 저장 : 변경된 내용을 저장</p>
   				<p>- 취소 : 수정 중 취소로 변경 내용이 저장되지 않음</p>
   			</li>
		</ul>
		<ul class="ul_atten f_l ml_20">
			<li class="red">- 업체정보(법인명, 대표자명, 사업소재지), 단가정보 변경 시 전자결재 페이지로 이동</li>
			<li class="red  mb_15">- 사업자등록번호, 법인등록번호, 결제방식(선→후불) 변경 시 신규 거래처 등록 필수</li>
			<li class="red">- 결재 승인 완료 후 변경사항 적용(결재 중인 항목은 적색 테두리로 표시)</li>
			<li class="red">- 결재 진행 중 해당 항목 중복 변경 불가(결재 취소 후 재결재 진행)</li>
		</ul>
	</div>
	<!-- //message -->
	
	<!-- button -->
	<div class="align_r mb_15">
		<a href="#" class="btn md btn_skyBlue">목록</a>
	</div>
	<!-- //button -->
	
	<!-- button -->
	<div class="box">
		<span class="align_l"><a href="#" class="btn md btn_skyBlue">수정/저장</a> <a href="#" class="btn md btn_gray">취소</a> <a href="#" class="btn md btn_gray">사용해지</a></span>
		<span class="f_r"><a href="#" class="btn md btn_blue">신규 거래처 등록</a></span>
	</div>
	<!-- //button -->
	
	<div class="cont_area">
		<div class="cont_l">
			<!-- 회원정보1 table -->
			<table class="tb_list2_a">
				<colgroup>
					<col style="width:20%">
					<col style="width:30%">
					<col style="width:20%">
					<col style="width:30%">
				</colgroup>
				<tbody>
					<tr>
						<th>ID</th>
						<td>@daou</td>
						<th><b class="txt_c_red">*</b> 서비스</th>
						<td>비즈뿌리오
							<select id="select1" class="w60">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option> 
								<option value="4">4</option>
								<option value="5">5</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>법인명</th>
						<td><input type="text" class="mr_5 p80" /></td>
						<th>발송상태</th>
						<td>
							<select class="p80">
								<option>발송 가능</option>
							</select>
						</td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 회원타입</th>
						<td>
							<select id="select2" class="p80">
								<option value="1">일반(직판)</option>
								<option value="2">Option 1</option>
								<option value="3">Option 2</option> 
								<option value="4">Option 3</option>
							</select>
						</td>
						<th>관리자 계정</th>
						<td>
							<select id="select3" class="p80">
								<option value="1">일반(직판)</option>
								<option value="2">Option 1</option>
								<option value="3">Option 2</option> 
								<option value="4">Option 3</option>
							</select>								
						</td>							
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="text" class="p80" value="사용자 지정 비밀번호" /></td>
						<th>ID 승인일</th>
						<td>2017.08.11</td>
					</tr>
					<tr>
						<th>특이 사항</th>
						<td colspan="3"><input type="text" class="p80"></td>
					</tr>
				</tbody>
			</table>
			<!-- //회원정보1 table -->
		</div>
		
		<div class="cont_r mb_15">
			<!-- 회원정보2 table -->
			<table class="tb_list2_a">
				<colgroup>
					<col style="width:20%">
					<col style="width:30%">
					<col style="width:20%">
					<col style="width:30%">
				</colgroup>
				<tbody>
					<tr>
						<th><b class="txt_c_red">*</b> 담당부서</th>
						<td>
							<select id="select4" class="p80">
								<option value="1">일반(직판)</option>
								<option value="2">Option 1</option>
								<option value="3">Option 2</option> 
								<option value="4">Option 3</option>
							</select>																
						</td>
						<th><b class="txt_c_red">*</b> 담당자</th>
						<td>
							<select class="p80">
								<option value="1">일반(직판)</option>
								<option value="2">Option 1</option>
								<option value="3">Option 2</option> 
								<option value="4">Option 3</option>
							</select>																
						</td>
					</tr>
					<tr>
						<th>Slave ID</th>
						<td colspan="3"><input type="text" class="w80" /> 개<a href="" class="btn sm btn_skyBlue ml_10">상세</a></td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 결제 방식</th>
						<td colspan="3">
							<select class="w100 mr_3">
								<option>후불</option>
							</select>
							<select class="w60">
								<option>익월</option>
							</select>
							<a href="" class="btn sm btn_skyBlue ml_5">상세</a>
						</td>
					</tr>
					<tr>
						<th>전자 결재</th>
						<td colspan="3">결제 진행 건 <input type="text" class="w60" /> 건 <a href="" class="btn sm btn_skyBlue ml_15">상세</a></td>
					</tr>
				</tbody>
			</table>
			<!-- //회원정보2 table -->
		</div>
	</div>
	
	<div class="cont_area">
		<div class="cont_l">
		    <!-- 회원정보3 table -->
			<table class="tb_list2_a">
				<colgroup>
					<col style="width:25%">
					<col style="width:25%">
					<col style="width:25%">
					<col style="width:25%">					
				</colgroup>
				<tbody>
					<tr>
						<th><b class="txt_c_red">*</b> 업태</th>
						<td><input type="text" class="p80" /></td>
						<th><b class="txt_c_red">*</b> 종목</th>
						<td><input type="text" class="p80" /></td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 사업자등록번호</th>
						<td><input type="text" class="p80" /></td>
						<th><b class="txt_c_red">*</b> 법인등록번호</th>
						<td><input type="text" class="p80" /></td>
					</tr>
					<tr>
						<th>대표자명</th>
						<td><input type="text" class="p80" /></td>
						<th>종사업자번호</th>
						<td><input type="text" class="p80" /></td>					
					</tr>
					<tr>
						<th>납입자코드</th>
						<td><input type="text" class="p80" /></td>
						<th>업체 예약일</th>
						<td><input type="text" class="p80" /></td>					
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 회사주소</th>
						<td colspan="3">
							<p class="mb_5">
								<input class="w100" id="zip_code" type="text"><a class="btn_sm_black ml_5" href="#">우편번호검색</a> 
							</p>
							<p>
								<input class="w300" type="text"><br /><input class="w250" type="text"> * 나머지주소
							</p>							
						</td>
					</tr>
				</tbody>
			</table>
			<!-- //회원정보3 table -->
			<p class="mb_15"><input type="checkbox" class="mr_5" />사업자등록정보가 같은 모든 계정들의 회사정보가 일괄 업데이트</p>
		</div>
		
		<div class="cont_r">
			<!-- 회원정보4 table -->
			<table class="tb_list2_a">
				<colgroup>
					<col style="width:25%">
					<col style="width:25%">
					<col style="width:25%">
					<col style="width:25%">						
				</colgroup>
				<tbody>
					<tr>
						<th>여신 코드</th>
						<td>ABCD</td>
						<th>여신 금액</th>
						<td>2,000,000\</td>
					</tr>
					<tr>
						<th>특별 여신</th>
						<td>500,000\</td>
						<th>기간</th>
						<td>2017.12.20 ~ 2018.08</td>							
					</tr>
					<tr>
						<th>여신 잔액</th>
						<td colspan="3">200,000\ <a href="" class="btn_sm_black ml_10">조회</a></td>
					</tr>
					<tr>
						<th>담보 종류</th>
						<td>보증보험증권</td>
						<th>담보 금액</th>
						<td>4,000,000\</td>
					</tr>
					<tr>
						<th>담보 기간</th>
						<td>2017.01 ~ 2017.12</td>
						<th>사서함 번호</th>
						<td>2017-0290 3270</td>
					</tr>
					<tr>
						<th>사업자등록증</th>
						<td colspan="3"><a href="" class="btn_sm_blue">첨부</a> <a href="" class="btn_sm_green">다운로드</a></td>
					</tr>
					<tr>
						<th>계약서</th>
						<td colspan="3"><a href="" class="btn_sm_blue">첨부</a> <a href="" class="btn_sm_green">다운로드</a></td>
					</tr>						
				</tbody>
			</table>
			<!-- //회원정보4 table -->
		</div>
	</div>
	
	<div class="p100 clr">
		<!-- tab -->
		<ul class="tab_d">
			<li><a class="active">담당자/기타정보</a></li>
			<li><a>발송 정보</a></li>
			<li><a>단가 정보</a></li>
			<li><a>히스토리</a></li>
		</ul>		
		<!-- //tab -->
	</div>			
	
	<!-- tab_담당자/기타정보 -->
	<div class="cont_area">
		<div class="f_l p30">
			<div class="title">
				<em></em>      
				<h5>서비스 담당자</h5>
			</div>
			
			<!-- 서비스 담당자 table -->
			<table class="tb_list2_a mb_no">
				<colgroup>
					<col style="width:40%">
					<col style="width:60%">
				</colgroup>
				<tbody>
					<tr>
						<th><b class="txt_c_red">*</b> 이름</th>
						<td>김철수</td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 휴대폰 번호</th>
						<td>010-1234-5678</td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 전화번호</th>
						<td>070-8707-1111</td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 이메일</th>
						<td><a href="" class="a_be">message2@daou.co.kr</a></td>
					</tr>						
					<tr>
						<th>팩스</th>
						<td>0303-3443-1111</td>
					</tr>																		
				</tbody>
			</table>
			<!-- //서비스 담당자 table -->
			
			<div class="title pt_no">
				<em></em>      
				<h5>정산 담당자</h5>
			</div>
			
			<!-- 정산 담당자 table -->
			<table class="tb_list2_a">
				<colgroup>
					<col style="width:40%">
					<col style="width:60%">
				</colgroup>
				<tbody>
					<tr>
						<th><b class="txt_c_red">*</b> 이름</th>
						<td>김영희</td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 휴대폰 번호</th>
						<td>010-1234-5678</td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 전화번호</th>
						<td>070-8707-1111</td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 이메일</th>
						<td><a href="" class="a_be">message2@daou.co.kr</a></td>
					</tr>						
					<tr>
						<th>팩스</th>
						<td>0303-3443-1111</td>
					</tr>																		
				</tbody>
			</table>
			<!-- //정산 담당자 table -->				
		</div>
		
		<div class="f_r p68 ml_10">
			<div class="title">
				<em></em>      
				<h5>기타 사항</h5>
			</div>
			
			<div class="scroll h428">
				<!-- 기타 사항 table -->
				<table class="tb_list_b">
					<colgroup>
						<col style="width:10%">
						<col style="width:20%">
						<col style="width:20%">
						<col style="width:20%">
						<col style="width:30%">
					</colgroup>
					<thead>
						<tr>
							<th><input type="checkbox" /></th>
							<th>구분
								<select id="select5" class="w80">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option> 
									<option value="4">4</option>
								</select>							
							</th>						
							<th>작성일<a href="" class="btn_vsm ml_3"><span class="ico_up">올림차순</span></a><a href="" class="btn_vsm ml_3"><span class="ico_down">내림차순</span></a></th>
							<th>작성자
								<select id="select6" class="w80">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option> 
									<option value="4">4</option>
								</select>														
							</th>
							<th>내용</th>
						</tr>
					</thead>
					<tbody>
						<!-- 여기서부터 반복 
							 (원래는 Controller를 거쳐 list를 받아와 해당 정보를 출력하는 것)
						-->
						<#list 1..13 as i>
							<tr>
								<td><input type="checkbox" /></td>
								<td><input type="text" class="p80" /></td>
								<td></td>
								<td></td>
								<td><input type="text" class="p80" /></td>
							</tr>
						</#list>
					</tbody>
				</table>
				<!-- //기타 사항 table -->
			</div>
			
			<!-- button -->
			<div class="btn_area mb_15 f_r">
				<a href="#" class="btn_md_gray">삭제</a>
			</div>
			<!-- //button -->				
		</div>
	</div>
	<!-- //tab_담당자/기타정보 -->

	<!-- tab_발송 정보 -->
	<div class="cont_area mt_15">
		<div class="cont_l">
			<!-- 연동방식/OS/접속허용Ip/전송 속도/리포트 수신 여부 -->
			<table class="tb_list2_a mb_no">
				<colgroup>
					<col style="width:25%">
					<col style="width:75%">
				</colgroup>
				<tbody>
					<tr>
						<th><b class="txt_c_red">*</b> 연동방식</th>
						<td>
							<!-- 비즈뿌리오 일 때 -->
							<p style="display:none">
								<label class="mr_15" for="dbRadios"><input name="dbRadios" id="dbRadios" type="radio" checked="" value="option1"> DB연동</label>
								<label class="mr_15" for="liveRadios"><input name="liveRadios" id="liveRadios" type="radio" value="option2"> 라이브러리 연동</label>
								<label class="mr_15" for="webRadios"><input name="webRadios" id="webRadios" type="radio" value="option3"> 웹</label>
								<label class="mr_15" for="ppurioRadios"><input name="ppurioRadios" id="ppurioRadios" type="radio" value="option4"> 뿌리오메신저</label>
							</p>
							<!-- //비즈뿌리오 일 때 -->
							
							<!-- 유핏 일 때 -->
							<p style="display:block">
								<label class="mr_15" for="dbroChecks"><input name="dbroChecks" id="dbroChecks" type="checkbox" value="option1"> 디비로(DB연동)</label>
								<label class="mr_15" for="webChecks"><input name="webChecks" id="webChecks" type="checkbox" value="option2"> 웹</label>
								<label class="mr_15" for="webroChecks"><input name="webroChecks" id="webroChecks" type="checkbox" value="option3"> 웨브로(ASP)</label>
								<label class="mr_15" for="excelroChecks4"><input name="excelroChecks4" id="excelroChecks4" type="checkbox" value="option4"> excel로(메신저)</label>
							</p>
							<!-- //유핏 일 때 -->
						</td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> OS/DB</th>
						<td>
							<label for="os">OS</label> <input name="os" id="os" type="text" class="w120 mr_15" /> <label for="db">DB</label> <input name="db" id="db" type="text" class="w120" />
						</td>
					</tr>
					<tr>
						<th>접속 허용 IP</th>
						<td><input name="month" id="month" type="text" class="w300" placeholder="여러 IP를 입력하려면 구분자 “|”를 사용하세요." /></td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 전송 속도(초당)</th>
						<td>
							<label for="basic13" class="mr_15"><input type="radio" name="basic13" id="basic13" checked=""> 기본(13)</label>
							<label for="spacial50" class="mr_5"><input type="radio" name="spacial50" id="spacial50"> 별도(최대50)</label>
							<input type="text" class="w100">
						</td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 리포트 수신 여부</th>
						<td>
							<label for="reception" class="mr_15"><input type="radio" name="reception" id="reception" checked=""> 수신</label>
							<label for="receptionNo" class="mr_15"><input type="radio" name="receptionNo" id="receptionNo"> 미수신</label>
						</td>
					</tr>
				</tbody>
			</table>
			<!-- //연동방식/OS/접속허용Ip/전송 속도/리포트 수신 여부 -->
			
			<!-- 발송한도/한도-SMS발송 -->
			<table class="tb_list2_a mb_no mt_10">
				<colgroup>
					<col style="width:25%">
					<col style="width:25%">
					<col style="width:25%">
					<col style="width:25%">						
				</colgroup>
				<tbody>
					<tr>
						<th>발송 한도(월)</th>
						<td><input type="text" class="p80" placeholder="여신 한도" /> \</td>
						<th>발송 한도(일)</th>
						<td><input type="text" class="p80" placeholder="여신 한도" /> \</td>
					</tr>
					<tr>
						<th>한도-SMS발송</th>
						<td colspan="3">
							01023456789 <input type="text" class="p30 mr_3" placeholder="연락처1"><input type="text" class="p30" placeholder="연락처2"></td>
					</tr>
				</tbody>
			</table>
			<!-- //발송한도/한도-SMS발송 -->
			<p class="red">* 한도 SMS 발송: 여신 한도 80% 초과 시 SMS 발송(기본값 : 영업담당자, 서비스담당자)</p>
			
			<!-- 발신번호 사전등록 /카카오톡 대체 발송 -->	
			<table class="tb_list2_a mt_15">
				<colgroup>
					<col style="width:25%">
					<col style="width:75%">
				</colgroup>
				<tbody>
					<tr>
						<th>발신번호 사전 등록</th>
						<td>
							<label class="mr_15" for="sendnumRadios1"><input name="sendnumRadios1" id="sendnumRadios1" type="radio" value="option1"> 문자 예외</label>
							<label class="mr_15" for="sendnumRadios2"><input name="sendnumRadios2" id="sendnumRadios2" type="radio" value="option2"> 팩스 예외</label>
							<label class="mr_15" for="sendnumRadios3"><input name="sendnumRadios3" id="sendnumRadios3" type="radio" value="option3"> 문자/팩스 예외</label>
							<label class="mr_15" for="sendnumRadios4"><input name="sendnumRadios4" id="sendnumRadios4" type="radio" checked="" value="option4"> 예외 아님</label>
						</td>
					</tr>
					<tr>
						<th>카카오톡 대체 발송</th>
						<td>
							<label class="mr_15" for="kakaoRadios1"><input name="kakaoRadios1" id="kakaoRadios1" type="radio" value="option1"> 클라이언트(고객사) 발송</label>
							<label class="mr_15" for="kakaoRadios2"><input name="kakaoRadios2" id="kakaoRadios2" type="radio" checked="" value="option2"> Service(다우)발송</label>
							<label class="mr_15" for="kakaoRadios3"><input name="kakaoRadios3" id="kakaoRadios3" type="radio" value="option3"> 사용 안함</label>
						</td>
					</tr>						
				</tbody>
			</table>
			<!-- //발신번호 사전등록 /카카오톡 대체 발송 -->
		</div>
		
		<div class="cont_r">
			<!-- 메세징서비스/부가서비스 -->
			<table class="tb_list2_a mb_no">
				<colgroup>
					<col style="width:30%">
					<col style="width:70%">
				</colgroup>
				<tbody>
					<tr>
						<th><b class="txt_c_red">*</b> 메세징 서비스</th>
						<td>
							<p>
								<label class="p20" for="itemCheckbox1"><input name="itemCheckbox1" id="itemCheckbox1" type="checkbox" value="option1"> SMS</label>
								<label class="p20" for="itemCheckbox2"><input name="itemCheckbox2" id="itemCheckbox2" type="checkbox" value="option2"> LMS</label>
								<label class="p20" for="itemCheckbox3"><input name="itemCheckbox3" id="itemCheckbox3" type="checkbox" value="option3"> MMS</label>
								<label class="p20" for="itemCheckbox4"><input name="itemCheckbox4" id="itemCheckbox4" type="checkbox" value="option4"> 알림톡</label>
								<label class="p20" for="itemCheckbox5"><input name="itemCheckbox5" id="itemCheckbox5" type="checkbox" value="option5"> 친구톡</label>
								<label class="p20" for="itemCheckbox6"><input name="itemCheckbox6" id="itemCheckbox6" type="checkbox" value="option6"> URL</label>
								<label class="p20" for="itemCheckbox7"><input name="itemCheckbox7" id="itemCheckbox7" type="checkbox" value="option7"> 동영상</label>
								<label class="p20" for="itemCheckbox8"><input name="itemCheckbox8" id="itemCheckbox8" type="checkbox" value="option8"> 국제 SMS</label>
							</p>
						</td>
					</tr>
					<tr>
						<th>부가 서비스</th>
						<td>
							<p style="display:none">
								<label class="p20" for="itemCheckbox9"><input name="itemCheckbox9" id="itemCheckbox9" type="checkbox" value="option9"> FAX수신</label>
								<label class="p20" for="itemCheckbox10"><input name="itemCheckbox10" id="itemCheckbox10" type="checkbox" value="option10"> FAX발신</label>
								<label for="itemCheckbox11"><input name="itemCheckbox11" id="itemCheckbox11" type="checkbox" value="option11"> MO 번호</label>
								<label for="itemCheckbox12"><input name="itemCheckbox12" id="itemCheckbox12" type="checkbox" value="option12"> 080 번호</label>
								<label for="itemCheckbox13"><input name="itemCheckbox13" id="itemCheckbox13" type="checkbox" value="option13"> VMS 유선</label>
								<label for="itemCheckbox14"><input name="itemCheckbox14" id="itemCheckbox14" type="checkbox" value="option14"> VMS 무선</label>
							</p>
							<p style="display:block">
								<label class="p20" for="itemCheckbox15"><input name="itemCheckbox15" id="itemCheckbox15" type="checkbox" value="option15"> MO 번호</label>
							</p>			
						</td>
					</tr>						
				</tbody>
			</table>
			<!-- //메세징서비스/부가서비스 -->
			<p class="red">* 선택한 서비스만 [단가 정보] 탭에서 단가를 입력할 수 있습니다.</p>
			
			<!-- 망설정_비즈뿌리오 일 때만 노출 -->
			<h5 class="mt_25 mb_10">망설정</h5>
			
			<div class="scroll h200">
				<table class="tb_list2_a">
				<colgroup>
					<col style="width:25%">
					<col style="width:25%">
					<col style="width:50%">
				</colgroup>
				<tbody>
					<tr>
						<th rowspan="3">SMS 통신사</th>
						<td>기본라인</td>
						<td>
							<label class="mr_15" for="basicRadios"><input name="basicRadios" id="basicRadios" checked="" type="radio" value="option1"> 일반</label>
						</td>
					</tr>
					<tr>
						<td>통신사</td>
						<td></td>
					</tr>
					<tr>
						<td>WCAN</td>
						<td></td>
					</tr>
					<tr>
						<th rowspan="2">LMS 통신사</th>
						<td></td>
						<td><label class="mr_15" for="basicRadios1"><input name="basicRadios1" id="basicRadios1" checked="" type="radio" value="option1"> 일반</label></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<th rowspan="3">SMS 통신사</th>
						<td>기본라인</td>
						<td>
							<label class="mr_15" for="basicRadios2"><input name="basicRadios2" id="basicRadios2" checked="" type="radio" value="option2"> 일반</label>
						</td>
					</tr>
					<tr>
						<td>통신사</td>
						<td></td>
					</tr>
					<tr>
						<td>WCAN</td>
						<td></td>
					</tr>
					<tr>
						<th rowspan="2">LMS 통신사</th>
						<td></td>
						<td><label class="mr_15" for="basicRadios3"><input name="basicRadios3" id="basicRadios3" checked="" type="radio" value="option3"> 일반</label></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
					</tr>
				</tbody>
			</table>
			</div>
			<!-- //망설정_비즈뿌리오 일 때만 노출 -->	
			
		</div>
	</div>
	<!-- //tab_발송 정보 -->
	
	<!--  tab_단가 정보 -->		
	<div class="cont_area">
		<!-- 일반(직판), 일반(재판), 재판매(에이전트)_관리자, 영업대행_고객사, 사내 대체 -->
		<div class="box_grey">
			<div class="form_group">
				<p class="">
					<label for="priceCopy" class="mr_15"><input type="checkbox" class="mr_3" id="priceCopy" name="priceCopy">타 계정 단가 복사(발송 정보에서 선택한 서비스 단가만 복사됩니다.)</label>
					<label for="useID">ID : <input type="text" class="w80" value="ABC1234" id="useID" name="useID"></label>
					<a href="" class="btn_sm_sch_black r3" id="unitpriceCopyBtn">검색</a>
				</p>
				<p>
					<span class="red mr_5 f14">* 단가는 현재 적용 단가가 표시됩니다.</span> <label for="priModify" class="mr_15">단가 변경 여부 : <input type="text" class="w100" id="priModify" name="priModify" placeholder="변경/미변경"></label>
					<label for="finalDate">최종 변경일 : <input type="text" class="w100" name="finalDate" id="finalDate"></label>
					<a href="${rc.contextPath}/customerMemberListUnitpriHistory.do" class="btn_sm_skyBlue">변경내용</a>
				</p>
			</div>
		</div>
		
		<div>
			<h5 class="mb_10">메세징 서비스</h5>
			
			<!-- SMS, 알림톡, 친구톡(T), 친구톡(I), URL, 국제 SMS, 바코드 -->
			<table class="tb_list2_a mb_15">
				<colgroup>
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:10%">								
				</colgroup>
				<tbody>
					<tr>
						<td colspan="9"><p class="align_c">SMS, 알림톡, 친구톡(T), 친구톡(I), URL, 국제 SMS, 바코드</p></td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 발송범위</th>
						<td> ~ <input type="text" class="p80"></td>
						<th><b class="txt_c_red">*</b> 단가</th>
						<td><input type="text" class="p80"> \</td>
						<th>적용기간</th>
						<td>2018.01.22 ~</td>
						<th>등록일</th>
						<td>2018.01.22</td>
						<td>
							<a href="" class="btn_sm_gray">삭제</a> <a href="" class="btn_sm_blue">추가</a>
						</td>
					</tr>
					<tr>
						<th>발송범위</th>
						<td> ~ <input type="text" class="p80"></td>
						<th>단가</th>
						<td><input type="text" class="p80"> \</td>
						<th>적용기간</th>
						<td>2018.01.22 ~</td>
						<th>등록일</th>
						<td>2018.01.22</td>
						<td>
							<a href="" class="btn_sm_gray">삭제</a> <a href="" class="btn_sm_blue">추가</a>
						</td>							
					</tr>
					<tr>
						<th>발송범위</th>
						<td> ~ <input type="text" class="p80"></td>
						<th>단가</th>
						<td><input type="text" class="p80"> \</td>
						<th>적용기간</th>
						<td>2018.01.22 ~</td>
						<th>등록일</th>
						<td>2018.01.22</td>
						<td>
							<a href="" class="btn_sm_gray">삭제</a> <a href="" class="btn_sm_blue">추가</a>
						</td>														
					</tr>
				</tbody>
			</table>
			<!-- //SMS, 알림톡, 친구톡(T), 친구톡(I), URL, 국제 SMS, 바코드 -->
			
			<!-- LMS, MMS, 동영상 -->
			<table class="tb_list2_a mb_15">
				<colgroup>
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:10%">								
				</colgroup>
				<tbody>
					<tr>
						<td colspan="9"><p class="align_c">LMS, MMS, 동영상</p></td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 발송범위</th>
						<td> ~ <input type="text" class="p70"></td>
						<th><b class="txt_c_red">*</b> 단가</th>
						<td><input type="text" class="p70"> \</td>
						<th>적용기간</th>
						<td>2018.01.22 ~</td>
						<th>등록일</th>
						<td>2018.01.22</td>
						<td>
							<a href="" class="btn_sm_blue">추가</a>
						</td>
					</tr>
				</tbody>
			</table>
			<!-- //LMS, MMS, 동영상 -->
			
			<!-- 선불 일 때는 SMS, 알림톡, 친구톡(T), 친구톡(I), URL, 국제 SMS, 바코드, LMS, MMS, 동영상 두 테이블만 노출 -->
			<!-- FAX 수신번호 -->
			<table class="tb_list2_a mb_15">
				<colgroup>
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:10%">								
				</colgroup>
				<tbody>
					<tr>
						<td colspan="9"><p class="align_c">FAX 수신번호</p></td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 개수</th>
						<td> ~ <input type="text" class="p80"></td>
						<th><b class="txt_c_red">*</b> 단가</th>
						<td>
							<label for="allPri" class="mr_3">전체 <input type="text" class="w60" name="allPri" id="allPri"></label>
							<label for="skPri" class="mr_3">SK <input type="text" class="w60" name="skPri" id="skPri"></label>
							<label for="ktPri" class="mr_3">KT <input type="text" class="w60" name="ktPri" id="ktPri"></label>
							<label for="lguPri" class="mr_3">LGU <input type="text" class="w60" name="lguPri" id="lguPri"></label>
							<label for="etcPri" class="mr_3">ETC <input type="text" class="w60" name="etcPri" id="etcPri"></label> \
						</td>
						<th>적용기간</th>
						<td>2018.01.22 ~</td>
						<th>등록일</th>
						<td>2018.01.22</td>
						<td>
							<a href="" class="btn_sm_blue">추가</a>
						</td>
					</tr>
				</tbody>
			</table>
			<!-- //FAX 수신번호 -->

			<!-- FAX 발신 -->
			<table class="tb_list2_a mb_15">
				<colgroup>
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:10%">								
				</colgroup>
				<tbody>
					<tr>
						<td colspan="9"><p class="align_c">FAX 수신번호</p></td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 발송 범위</th>
						<td> ~ <input type="text" class="w100"></td>
						<th><b class="txt_c_red">*</b> 단가</th>
						<td><input type="text" class="w100"> \</td>
						<th>적용기간</th>
						<td>2018.01.22 ~</td>
						<th>등록일</th>
						<td>2018.01.22</td>
						<td>
							<a href="" class="btn_sm_blue">추가</a>
						</td>
					</tr>
				</tbody>
			</table>
			<!-- //FAX 수신번호 -->

			<!-- MO 번호 -->
			<table class="tb_list2_a mb_15">
				<colgroup>
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:10%">								
				</colgroup>
				<tbody>
					<tr>
						<td colspan="9"><p class="align_c">MO 번호</p></td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 개수</th>
						<td> ~ <input type="text" class="p80"></td>
						<th><b class="txt_c_red">*</b> 단가</th>
						<td><input type="text" class="p80"> \</td>
						<th>적용기간</th>
						<td>2018.01.22 ~</td>
						<th>등록일</th>
						<td>2018.01.22</td>
						<td>
							<a href="" class="btn_sm_blue">추가</a>
						</td>
					</tr>
				</tbody>
			</table>
			<!-- //MO 번호 -->
														
			<!-- 080 수신거부 번호 -->
			<table class="tb_list2_a mb_15">
				<colgroup>
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:10%">								
				</colgroup>
				<tbody>
					<tr>
						<td colspan="9"><p class="align_c">080 수신거부 번호</p></td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 개수</th>
						<td> ~ <input type="text" class="p80"></td>
						<th><b class="txt_c_red">*</b> 단가</th>
						<td><input type="text" class="p80"> \</td>
						<th>적용기간</th>
						<td>2018.01.22 ~</td>
						<th>등록일</th>
						<td>2018.01.22</td>
						<td>
							<a href="" class="btn_sm_blue">추가</a>
						</td>
					</tr>
				</tbody>
			</table>
			<!-- //080 수신거부 번호 -->
												
			<!-- VMS 유선 -->
			<table class="tb_list2_a mb_15">
				<colgroup>
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">						
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:10%">								
				</colgroup>
				<tbody>
					<tr>
						<td colspan="11"><p class="align_c">VMS 무선</p></td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 발송 범위</th>
						<td> ~ <input type="text" class="p80"></td>
						<th><b class="txt_c_red">*</b> 단위</th>
						<td><input type="text" class="p80"> 초</td>
						<th><b class="txt_c_red">*</b> 단가</th>
						<td>
							<label for="inPrice" class="mr_5">시내 <input type="text" class="w60" id="inPrice" name="inPrice"></label>
							<label for="outPrice">시외 <input type="text" class="w60" id="outPrice" name="outPrice"></label> \
						</td>							
						<th>적용기간</th>
						<td>2018.01.22 ~</td>
						<th>등록일</th>
						<td>2018.01.22</td>
						<td>
							<a href="" class="btn_sm_blue">추가</a>
						</td>
					</tr>
				</tbody>
			</table>
			<!-- //080 수신거부 번호 -->

			<!-- VMS 무선 -->
			<table class="tb_list2_a mb_15">
				<colgroup>
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">						
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:8%">
					<col style="width:14.5%">
					<col style="width:10%">								
				</colgroup>
				<tbody>
					<tr>
						<td colspan="11"><p class="align_c">VMS 유선</p></td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 발송 범위</th>
						<td> ~ <input type="text" class="w100"></td>
						<th><b class="txt_c_red">*</b> 단위</th>
						<td><input type="text" class="w60"> 초</td>
						<th><b class="txt_c_red">*</b> 단가</th>
						<td>
							<label for="outPrice2"><input type="text" class="w60" id="outPrice2" name="outPrice2"> \</label>
						</td>							
						<th>적용기간</th>
						<td>2018.01.22 ~</td>
						<th>등록일</th>
						<td>2018.01.22</td>
						<td>
							<a href="" class="btn_sm_blue">추가</a>
						</td>
					</tr>
				</tbody>
			</table>
			<!-- //선불 일 때는 SMS, 알림톡, 친구톡(T), 친구톡(I), URL, 국제 SMS, 바코드, LMS, MMS, 동영상 두 테이블만 노출 -->
		</div>
		
		<!-- //일반(직판), 일반(재판), 재판매(에이전트)_관리자, 영업대행_고객사, 사내 대체 -->
		
		<!-- 영업대행 관리자_수수료 수수료 유형(대행 판매단가-단가) -->			
		<div class="box_grey box_search mt_15">
			<p class="align_c">
				<label for="select10" class="bul">수수료 유형</label>
				<select id="select10" class="w250">
					<option value="1">고객사 단가-발송 원가) X 수수료율 </option>
					<option value="2">건당 고정 수수료</option>
				</select>
				<a href="#" class="ml_3 btn_sm_black r3" id="detailBtn">평균 수수료</a>
			</p>
		</div>

		<div class="scroll h350 mb_15">
			<table class="tb_list_b">
			<colgroup>
				<col style="width:16%">
				<col style="width:14%">
				<col style="width:12%">
				<col style="width:20%">
				<col style="width:14%">
				<col style="width:12%">
				<col style="width:12%">
			</colgroup>
			<thead>
				<tr>
					<th>영업대행사의 고객사<br />
						<select id="select11" class="w100">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option> 
						</select>
					</th>
					<th>ID<br />
						<select id="select12" class="w80">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option> 
						</select>
					</th>
					<th>품목</th>
					<th><b class="txt_c_red">*</b> 발송 원가</th>
					<th>고객사 단가</th>
					<th><b class="txt_c_red">*</b> 수수료율</th>
					<th>수수료</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td rowspan="6">게티이미지</td>
					<td rowspan="3">gety1</td>
					<td>SMS</td>
					<td><input type="text" class="p70" /> \</td>
					<td>6 \</td>
					<td><input type="text" class="p70" /> %</td>
					<td>1 \</td>
				</tr>
				<tr>
					<td>LMS</td>
					<td>
						<label for="lmsSkt">SKT <input type="text" class="w60 mr_5" id="lmsSkt" /></label>
						<label for="lmsKt">KT <input type="text" class="w60 mr_5" id="lmsKt" /></label>
						<label for="lmsLgu">LGU <input type="text" class="w60 mr_5" id="lmsLgu" /></label> \
					</td>
					<td>40/40/60 \</td>
					<td><input type="text" class="p70" /> %</td>
					<td>5 / 5 / 10 \</td>
				</tr>
				<tr>
					<td>MMS</td>
					<td>
						<label for="mmsSkt" class="mr_3">SKT <input type="text" class="w60 mr_5" id="mmsSkt" /></label>
						<label for="mmsKt" class="mr_3">KT <input type="text" class="w60 mr_5" id="mmsKt" /></label>
						<label for="mmsLgu">LGU <input type="text" class="w60 mr_5" id="mmsLgu" /></label> \
					</td>
					<td>40/40/60 \</td>
					<td><input type="text" class="p70" /> %</td>
					<td>\</td>
				</tr>
				<tr>
					<td rowspan="3">gety2</td>
					<td>SMS</td>
					<td><input type="text" class="p70" /> \</td>
					<td>6 \</td>
					<td><input type="text" class="p70" /> %</td>
					<td>1 \</td>
				</tr>
				<tr>
					<td>LMS</td>
					<td>
						<label for="lmsSkt2">SKT <input type="text" class="w60 mr_5" name="lmsSkt2" id="lmsSkt2" /></label>
						<label for="lmsKt2">KT <input type="text" class="w60 mr_5" name="lmsKt2" id="lmsKt2" /></label>
						<label for="lmsLgu2">LGU <input type="text" class="w60 mr_5" name="lmsLgu2" id="lmsLgu2" /></label> \
					</td>
					<td>40/40/60 \</td>
					<td><input type="text" class="p70" /> %</td>
					<td>5 / 5 / 10 \</td>
				</tr>
				<tr>
					<td>MMS</td>
					<td>
						<label for="mmsSkt2" class="mr_3">SKT <input type="text" class="w60 mr_5" name="mmsSkt2" id="mmsSkt2" /></label>
						<label for="mmsKt2" class="mr_3">KT <input type="text" class="w60 mr_5" name="mmsKt2" id="mmsKt2" /></label>
						<label for="mmsLgu2">LGU <input type="text" class="w60 mr_5" name="mmsLgu2" id="mmsLgu2" /></label> \
					</td>
					<td>40/40/60 \</td>
					<td><input type="text" class="p70" /> %</td>
					<td>\</td>
				</tr>					
				<tr>
					<td rowspan="2">키움증권</td>
					<td rowspan="2">동일</td>
					<td>LMS</td>
					<td><input type="text" class="p70" /> \</td>
					<td>\</td>
					<td><input type="text" class="p70" /> %</td>
					<td>\</td>
				</tr>
				<tr>
					<td>이하생략</td>
					<td><input type="text" class="p70" /> \</td>
					<td><input type="text" class="p70" /> \</td>
					<td><input type="text" class="p70" /> %</td>
					<td><input type="text" class="p70" /> \</td>						
				</tr>
			</tbody>
		</table>
		</div>
		<!-- //영업대행 관리자_수수료 수수료 유형(대행 판매단가-단가) -->
		
		<!-- 영업대행 관리자_수수료 유형(건당 고정 수수료) -->
		<div class="scroll h350">
			<table class="tb_list_b">
			<colgroup>
				<col style="width:30%">
				<col style="width:30%">
				<col style="width:10%">
				<col style="width:30%">
			</colgroup>
			<thead>
				<tr>
					<th>영업대행사의 고객사<br />
						<select id="select7" class="w100">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option> 
						</select>						
					</th>
					<th>ID<br />
						<select class="w80">
							<option>1</option>
						</select>
					</th>
					<th>품목</th>
					<th><b class="txt_c_red">*</b> 수수료<br /></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td rowspan="5">게티이미지</td>
					<td rowspan="3">gety1</td>
					<td>SMS</td>
					<td><input type="text" class="p70" /> \</td>
				</tr>
				<tr>
					<td>LMS</td>
					<td>
						<label for="lmsSkt3" class="mr_3">SKT </label><input type="text" class="w60 mr_5" name="lmsSkt3" id="lmsSkt3" />
						<label for="lmsKt3" class="mr_3">KT </label><input type="text" class="w60 mr_5" name="lmsKt3" id="lmsKt3" />
						<label for="lmsLgu3">LGU </label><input type="text" class="w60 mr_5" name="lmsLgu3" id="lmsLgu3" /> \
					</td>						
				</tr>
				<tr>
					<td>MMS</td>
					<td>
						<label for="mmsSkt3" class="mr_3">SKT </label><input type="text" class="w60 mr_5" name="mmsSkt3" id="mmsSkt3" />
						<label for="mmsKt3" class="mr_3">KT </label><input type="text" class="w60 mr_5" name="mmsKt3" id="mmsKt3" />
						<label for="mmsLgu3">LGU </label><input type="text" class="w60 mr_5" name="mmsLgu3" id="mmsLgu3" /> \
					</td>						
				</tr>
				<tr>
					<td rowspan="2">gety2</td>
					<td>LMS</td>
					<td>
						<label for="mmsSkt4" class="mr_3">SKT </label><input type="text" class="w60 mr_5" name="mmsSkt4" id="mmsSkt4" />
						<label for="mmsKt4" class="mr_3">KT </label><input type="text" class="w60 mr_5" name="mmsKt4" id="mmsKt4" />
						<label for="mmsLgu4">LGU </label><input type="text" class="w60 mr_5" name="mmsLgu4" id="mmsLgu4" /> \							
					</td>
				</tr>
				<tr>
					<td>MMS</td>
					<td>
						<label for="lmsSkt4" class="mr_3">SKT </label><input type="text" class="w60 mr_5" name="lmsSkt4" id="lmsSkt4" />
						<label for="lmsKt4" class="mr_3">KT </label><input type="text" class="w60 mr_5" name="lmsKt4" id="lmsKt4" />
						<label for="lmsLgu4">LGU </label><input type="text" class="w60 mr_5" name="lmsLgu4" id="lmsLgu4" /> \
					</td>						
				</tr>
				<tr>
					<td rowspan="3">키움증권</td>
					<td rowspan="3">동일</td>
					<td>MMS</td>
					<td><input type="text" class="p70"> \</td>
				</tr>
				<tr>
					<td>...</td>
					<td><input type="text" class="p70"> \</td>
				</tr>
				<tr>
					<td>...</td>
					<td><input type="text" class="p70"> \</td>
				</tr>					
			</tbody>
		</table>
		</div>
		<!-- //영업대행 관리자_수수료 유형(건당 고정 수수료) -->
	</div>
	<!-- //tab_단가 정보 -->	
	
	<!-- tab_히스토리 -->
	<div class="box_b3 mb_15">
  			<ul class="txt_info">
   			<li>변경 항목 : 기본 정보, 담당자/기타 정보, 발송 정보, 단가 정보</li>
   			<li>세부 항목 : 필드명</li>
			<li>자동 발송 중지의 사유는 변경 후에 기재됨</li>
		</ul>			
	</div>
	
	<table class="tb_list_b">
		<colgroup>
			<col style="width:14.2%">
			<col style="width:14.2%">
			<col style="width:14.2%">
			<col style="width:16.2%">
			<col style="width:14.2%">
			<col style="width:18.2%">
			<col style="width:8.2%">
		</colgroup>
		<thead>
			<tr>
				<th rowspan="2">변경일 <a href="" class="btn_vsm mr_3"><span class="ico_up">오름차순</span></a><a href="" class="btn_vsm"><span class="ico_down">내림차순</span></a></th>
				<th rowspan="2">ID
					<select class="w80">
						<option>daou</option>
					</select>
				</th>
				<th rowspan="2">변경 항목
					<select class="w80">
						<option value="1">1</option>
					</select>
				</th>
				<th rowspan="2">세부 항목</th>
				<th colspan="2">내용</th>
				<th rowspan="2">변경자 <a href="" class="btn_vsm mr_3"><span class="ico_up">오름차순</span></a><a href="" class="btn_vsm"><span class="ico_down">내림차순</span></a></th>
			</tr>
			<tr>
				<th>변경 전</th>
				<th>변경 후</th>
			</tr>				
		</thead>
		<tbody>
			<tr>
				<td>2017.08.31</td>
				<td>ⓜdaou</td>
				<td>발송 정보</td>
				<td>발송 한도(일)</td>
				<td>500,000 \</td>
				<td>700,000 \</td>
				<td>윤수지</td>
			</tr>
			<tr>
				<td>2017.08.31</td>
				<td>ⓜdaou</td>
				<td>기본 정보</td>
				<td>발송 가능</td>
				<td>-</td>
				<td>-</td>
				<td>윤수지</td>
			</tr>
			<tr>
				<td>2017.08.31</td>
				<td>ⓜdaou</td>
				<td>기본 정보</td>
				<td>발송 중지</td>
				<td>-</td>
				<td>발송 한도(일) 초과</td>
				<td>시스템</td>
			</tr>
			<tr>
				<td>2017.08.31</td>
				<td>ⓜdaou</td>
				<td>기본 정보</td>
				<td>카카오톡 대체 발송</td>
				<td>사용 안 함</td>
				<td>클라이먼트(고객사) 발송</td>
				<td>윤수지</td>
			</tr>
			<tr>
				<td>2017.08.31</td>
				<td>ⓜdaou</td>
				<td>기본 정보</td>
				<td>발송 중지</td>
				<td>-</td>
				<td>발송 한도(일) 초과</td>
				<td>시스템</td>
			</tr>
			<tr>
				<td>2017.08.31</td>
				<td>ⓜdaou</td>
				<td>발송 정보</td>
				<td>발송 한도(일)</td>
				<td>500,000 \</td>
				<td>700,000 \</td>
				<td>윤수지</td>
			</tr>
			<tr>
				<td>2017.08.31</td>
				<td>ⓜdaou</td>
				<td>기본 정보</td>
				<td>발송 가능</td>
				<td>-</td>
				<td>-</td>
				<td>윤수지</td>
			</tr>
			<tr>
				<td>2017.08.31</td>
				<td>ⓜdaou</td>
				<td>기본 정보</td>
				<td>발송 중지</td>
				<td>-</td>
				<td>발송 한도(일) 초과</td>
				<td>시스템</td>
			</tr>
			<tr>
				<td>2017.08.31</td>
				<td>ⓜdaou</td>
				<td>기본 정보</td>
				<td>카카오톡 대체 발송</td>
				<td>사용 안 함</td>
				<td>클라이먼트(고객사) 발송</td>
				<td>윤수지</td>
			</tr>
			<tr>
				<td>2017.08.31</td>
				<td>ⓜdaou</td>
				<td>기본 정보</td>
				<td>발송 중지</td>
				<td>-</td>
				<td>발송 한도(일) 초과</td>
				<td>시스템</td>
			</tr>																
		</tbody>
	</table>
	
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
	<!-- //tab_히스토리 -->
</div>
<!-- //contents -->

<!-- 레이어 팝업 -->
<div class="mask"></div>
<div class="window">
	<!-- popup_평균 수수료 조회 -->
	<div class="popup_wrap ">
		<div class="title_box">
			<h1>평균 수수료 조회</h1>
		</div>
		<div class="contents">
			<div class="scroll h300">
				<table class="tb_list_b">
					<colgroup>
						<col style="width:20%">
						<col style="width:80%">
					</colgroup>
					<thead>
						<tr>
							<th>품목</th>
							<th>평균 수수료</th>
						</tr>
					</thead>
					<tbody>
						<!-- 여기서부터 반복 
							 (원래는 Controller를 거쳐 list를 받아와 해당 정보를 출력하는 것)
						-->
						<#list 1..2 as i>
							<tr>
								<td>SMS</td>
								<td class="align_r">2 \</td>
							</tr>
							<tr>
								<td>LMS</td>
								<td class="align_r">SKT(1) / KT(1.5) / LGU(2) \</td>
							</tr>
							<tr>
								<td>MMS</td>
								<td class="align_r">SKT(1) / KT(1.5) / LGU(2) \</td>
							</tr>						
							<tr>
								<td>알림톡</td>
								<td class="align_r">0.5 \</td>
							</tr>						
							<tr>
								<td>친구톡(T)</td>
								<td class="align_r">2 \</td>
							</tr>						
							<tr>
								<td>친구톡(I)</td>
								<td class="align_r">1.5 \</td>
							</tr>
						</#list>
					</tbody>
				</table>				
			</div>
			<div class="bnt_area"><button class="btn md btn_blue close">확인</button></div>
		</div>
	</div>	
	<!-- //popup_평균 수수료 조회 -->
</div>

<!-- 레이어 팝업 -->
<div class="unitpriceCopy_mask"></div>
<div class="unitpriceCopy_window">
	<!-- popup_단가 복사 -->
	<div class="popup_wrap ">
		<div class="title_box">
			<h1>단가 복사</h1>
		</div>
		<div class="contents">
			<!-- 조회 -->
			<div class="box_grey box_search">
				<div class="form_group">
					<p class="align_c">			
						<label for="useID" class="bul">ID
							<input type="text" class="ml_3 w200" id="useID" name="useID">
						</label>
						<a href="" class="btn_sm_sch_black r3">검색</a>
					</p>
				</div>
			</div>
			<!-- //조회 -->
			
			<table class="tb_list_b mt_10">
				<colgroup>
					<col style="width:20%">
					<col style="width:80%">
				</colgroup>
				<thead>
					<tr>
						<th></th>
						<th>ID</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox"></td>
						<td>daoutest</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>daoutest</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>daoutest</td>
					</tr>					
				</tbody>
			</table>
		</div>
		<div class="btn_area"><button class="btn md btn_blue">확인</button><button class="btn md btn_gray ml_5 close">취소</button></div>
	</div>
	<!-- //popup_단가 복사 -->
</div>
</@page.base>




