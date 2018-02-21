<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 여신관리' />

<@page.base pageTitle>

<!-- 레이어 팝업 css -->
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
        height: 550px;
        width: 1100px;
        z-index:99999;
    }
</style>

<!-- 팝업레이어 띄우는 스크립트 -->
<script>
	function wrapWindowByMask(){
	    // 화면의 높이와 너비를 변수로 만듦
	    var maskHeight = $(document).height();
	    var maskWidth = $(window).width();
	
	    // 마스크의 높이와 너비를 화면의 높이와 너비 변수로 설정
	    $('.mask').css({'width':maskWidth,'height':maskHeight});
	
	    // fade 애니메이션 :60%의 불투명 처리
	    $('.mask').fadeTo("slow",0.6);
	
	    // 레이어 팝업을 가운데로 띄우기 위해 화면의 높이와 너비의 가운데 값과 스크롤 값을 더하여 변수로 만듦
	    var left = ( $(window).scrollLeft() + ( $(window).width() - $('.window').width()) / 2 );
	    var top = ( $(window).scrollTop() + ( $(window).height() - $('.window').height()) / 2 );
	
	    // css 스타일을 변경
	    $('.window').css({'left':left,'top':top, 'position':'absolute'});
	
	    // 레이어 팝업을 띄움
	    $('.window').show();
	}
	
	$(document).ready(function(){
	    // showMask를 클릭시 작동하며 검은 마스크 배경과 레이어 팝업을 띄움
	    $('#detailBtn').click(function(e){
	        // preventDefault는 href의 링크 기본 행동을 막는 기능
	        e.preventDefault();
	        wrapWindowByMask();
	    });
	
	    // 닫기(close)를 눌렀을 때 작동
	    $('.window .close').click(function (e) {
	        e.preventDefault();
	        $('.mask, .window').hide();
	    });
	
	    // 뒤 검은 마스크를 클릭시에도 모두 제거하도록 처리
	    $('.mask').click(function () {
	        $(this).hide();
	        $('.window').hide();
	    });
	});
</script>

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
		<h2>여신관리</h2>
		<blockquote class="txt_bul_bar">
			<a href="">홈</a> > <a href="">고객 관리</a> > <a href="">여신관리</a>
		</blockquote>
	</div>
	<!-- //title -->

	<!-- message -->
	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>사업자등록번호당 최대 2개 여신을 부여합니다.(일반(필수), 특별(선택) 각 1개)</li>
			<li>일정 기간동안 여신증액 시 특별여신을 생성합니다.(최대 6개월 기간 설정 가능)</li>
			<li>여신생성과 변경은 전자결재가 필요합니다.</li>
			<li>적용기간 검색은 선택사항입니다.</li>
		</ul>
	</div>
	<!-- //message -->

	<!-- 업체명/적용기간 검색 -->
	<div class="box_grey box_search">
		<p class="align_c">
			<select class="w100" id="compSelect">
				<option value="1">업체명</option>
				<option value="2">1</option>
				<option value="3">2</option>
				<option value="4">3</option>
				<option value="5">4</option>
			</select> <input id="input1" type="text" placeholder="검색 내용 입력" class="mr_15">
			<label for="input1" class="bul">적용기간</label> <select class="w80">
				<option value="">2017</option>
			</select> 년 <select class="w60">
				<option value="">00</option>
			</select> 월 ~ <select class="w80">
				<option value="">2017</option>
			</select> 년 <select class="w60">
				<option value="">00</option>
			</select> 월 <a href="#" class="btn_sm_sch_black r3 ml_10">검색</a>
		</p>
	</div>
	<!-- //업체명/적용기간 검색 -->

	<!-- button -->
	<div class="box">
		<span class="align_l"><a href="${rc.contextPath}/customerCreditManagementCreate.do" class="btn_md_blue">생성</a></span> <span
			class="f_r"><a href="#" class="btn_md_gray mr_3">삭제</a><a
			href="${rc.contextPath}/customerCreditManagementChange.do" class="btn_md_skyBlue">변경</a></span>
	</div>
	<!-- //button -->

	<!-- 여신관리 list table -->
	<table class="tb_list_b">
		<colgroup>
			<col style="width: 4.6%">
			<col style="width: 5.6%">
			<col style="width: 9.6%">
			<col style="width: 7.6%">
			<col style="width: 7.6%">
			<col style="width: 7.6%">
			<col style="width: 7.6%">
			<col style="width: 9.6%">
			<col style="width: 9.6%">
			<col style="width: 8.6%">
			<col style="width: 8.6%">
			<col style="width: 5.6%">
			<col style="width: 6.6%">
		</colgroup>
		<thead>
			<tr>
				<th><input type="checkbox" /></th>
				<th>No.</th>
				<th>구분<br /> <select id="cateSelect" class="w80">
						<option value="1">1</option>
				</select>
				</th>
				<th>서비스<br /> <select id="serviceSelect" class="w80">
						<option value="1">1</option>
				</select>
				</th>
				<th>부서명<br /> <select id="partSelect" class="w80">
						<option value="1">1</option>
				</select>
				</th>
				<th>담당자<br /> <select id="managerSelect" class="w80">
						<option value="1">1</option>
				</select>
				</th>
				<th>고객사명</th>
				<th>사업자등록번호</th>
				<th>여신 생성일<br /> <a href="" class="btn_vsm mr_3"><span
						class="ico_up">오름차순</span></a><a href="" class="btn_vsm"><span
						class="ico_down">내림차순</span></a></th>
				<th>여신 금액<br />
				<a href="" class="btn_vsm mr_3"><span class="ico_up">오름차순</span></a><a
					href="" class="btn_vsm"><span class="ico_down">내림차순</span></a></th>
				<th>적용기간</th>
				<th>변경여부</th>
				<th>상세조회</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><input type="checkbox" /></td>
				<td>1200</td>
				<td>일반</td>
				<td>비즈뿌리오</td>
				<td>MSG2</td>
				<td>윤수지</td>
				<td>다우쇼핑</td>
				<td>12-123-1234</td>
				<td>2017.12.22</td>
				<td>1,000,000w</td>
				<td>-</td>
				<td>변경</td>
				<td><a href="" id="detailBtn" class="btn_sm_skyBlue">상세</a></td>
			</tr>
			<tr>
				<td><input type="checkbox" /></td>
				<td>1200</td>
				<td>일반</td>
				<td>비즈뿌리오</td>
				<td>MSG2</td>
				<td>윤수지</td>
				<td>다우쇼핑</td>
				<td>12-123-1234</td>
				<td>2017.12.22</td>
				<td>1,000,000w</td>
				<td>-</td>
				<td>변경</td>
				<td><a href="" class="btn_sm_skyBlue">상세</a></td>
			</tr>
			<tr>
				<td><input type="checkbox" /></td>
				<td>1200</td>
				<td>일반</td>
				<td>비즈뿌리오</td>
				<td>MSG2</td>
				<td>윤수지</td>
				<td>다우쇼핑</td>
				<td>12-123-1234</td>
				<td>2017.12.22</td>
				<td>1,000,000w</td>
				<td>-</td>
				<td>변경</td>
				<td><a href="" class="btn_sm_skyBlue">상세</a></td>
			</tr>
			<tr>
				<td><input type="checkbox" /></td>
				<td>1200</td>
				<td>일반</td>
				<td>비즈뿌리오</td>
				<td>MSG2</td>
				<td>윤수지</td>
				<td>다우쇼핑</td>
				<td>12-123-1234</td>
				<td>2017.12.22</td>
				<td>1,000,000w</td>
				<td>-</td>
				<td>변경</td>
				<td><a href="" class="btn_sm_skyBlue">상세</a></td>
			</tr>
			<tr>
				<td><input type="checkbox" /></td>
				<td>1200</td>
				<td>일반</td>
				<td>비즈뿌리오</td>
				<td>MSG2</td>
				<td>윤수지</td>
				<td>다우쇼핑</td>
				<td>12-123-1234</td>
				<td>2017.12.22</td>
				<td>1,000,000w</td>
				<td>-</td>
				<td>변경</td>
				<td><a href="" class="btn_sm_skyBlue">상세</a></td>
			</tr>
			<tr>
				<td><input type="checkbox" /></td>
				<td>1200</td>
				<td>일반</td>
				<td>비즈뿌리오</td>
				<td>MSG2</td>
				<td>윤수지</td>
				<td>다우쇼핑</td>
				<td>12-123-1234</td>
				<td>2017.12.22</td>
				<td>1,000,000w</td>
				<td>-</td>
				<td>변경</td>
				<td><a href="" class="btn_sm_skyBlue">상세</a></td>
			</tr>
			<tr>
				<td><input type="checkbox" /></td>
				<td>1200</td>
				<td>일반</td>
				<td>비즈뿌리오</td>
				<td>MSG2</td>
				<td>윤수지</td>
				<td>다우쇼핑</td>
				<td>12-123-1234</td>
				<td>2017.12.22</td>
				<td>1,000,000w</td>
				<td>-</td>
				<td>변경</td>
				<td><a href="" class="btn_sm_skyBlue">상세</a></td>
			</tr>
			<tr>
				<td><input type="checkbox" /></td>
				<td>1200</td>
				<td>일반</td>
				<td>비즈뿌리오</td>
				<td>MSG2</td>
				<td>윤수지</td>
				<td>다우쇼핑</td>
				<td>12-123-1234</td>
				<td>2017.12.22</td>
				<td>1,000,000w</td>
				<td>-</td>
				<td>변경</td>
				<td><a href="" class="btn_sm_skyBlue">상세</a></td>
			</tr>
			<tr>
				<td><input type="checkbox" /></td>
				<td>1200</td>
				<td>일반</td>
				<td>비즈뿌리오</td>
				<td>MSG2</td>
				<td>윤수지</td>
				<td>다우쇼핑</td>
				<td>12-123-1234</td>
				<td>2017.12.22</td>
				<td>1,000,000w</td>
				<td>-</td>
				<td>변경</td>
				<td><a href="" class="btn_sm_skyBlue">상세</a></td>
			</tr>
			<tr>
				<td><input type="checkbox" /></td>
				<td>1200</td>
				<td>일반</td>
				<td>비즈뿌리오</td>
				<td>MSG2</td>
				<td>윤수지</td>
				<td>다우쇼핑</td>
				<td>12-123-1234</td>
				<td>2017.12.22</td>
				<td>1,000,000w</td>
				<td>-</td>
				<td>변경</td>
				<td><a href="" class="btn_sm_skyBlue">상세</a></td>
			</tr>
			<tr>
				<td><input type="checkbox" /></td>
				<td>1200</td>
				<td>일반</td>
				<td>비즈뿌리오</td>
				<td>MSG2</td>
				<td>윤수지</td>
				<td>다우쇼핑</td>
				<td>12-123-1234</td>
				<td>2017.12.22</td>
				<td>1,000,000w</td>
				<td>-</td>
				<td>변경</td>
				<td><a href="" class="btn_sm_skyBlue">상세</a></td>
			</tr>
			<!-- 현재 적용 여신 -->
			<tr class="total_r">
				<td colspan="13">
					<p>
						현재 적용 여신<span>1,500,000</span>\
					</p>
				</td>
			</tr>
			<!-- //현재 적용 여신 -->
		</tbody>
	</table>
	<!-- //여신관리 list table -->
</div>
<!-- //contents -->

<!-- 레이어 팝업 -->
<div class="mask"></div>
<div class="window">
	<!-- popup_상세보기(여신관리) -->
	<div class="popup_wrap ">
		<div class="title_box">
			<h1>상세보기</h1>
		</div>
		<div class="contents">
			<table class="tb_list2_a">
				<colgroup>
					<col style="width:25%">
					<col style="width:25%">
					<col style="width:25%">
					<col style="width:25%">
				</colgroup>
				<tbody>
					<tr>
						<th>여신코드</th>
						<td>0000</td>
						<th>생성 담당자</th>
						<td>윤수지</td>
					</tr>
					<tr>
						<th>이용서비스</th>
						<td colspan="3">비즈뿌리오 유핏</td>
					</tr>
				</tbody>
			</table>
			
			<div class="scroll h300">
				<table class="tb_list2_a mt_15">
				<colgroup>
					<col style="width:13%">
					<col style="width:20%">
					<col style="width:13%">
					<col style="width:20%">
					<col style="width:13%">
					<col style="width:20%">					
				</colgroup>
				<tbody>
					<tr>
						<th>변경일</th>
						<td>2017.12.22</td>
						<th>적용기간</th>
						<td>2017.12 ~ 2018.12</td>
						<th>여신</th>
						<td>1,500,000 \</td>						
					</tr>
					<tr>
						<th>변경일</th>
						<td>2017.12.22</td>
						<th>적용기간</th>
						<td>2017.12 ~ 2018.12</td>
						<th>여신</th>
						<td>1,500,000 \</td>						
					</tr>
					<tr>
						<th>변경일</th>
						<td>2017.12.22</td>
						<th>적용기간</th>
						<td>2017.12 ~ 2018.12</td>
						<th>여신</th>
						<td>1,500,000 \</td>						
					</tr>
					<tr>
						<th>변경일</th>
						<td>2017.12.22</td>
						<th>적용기간</th>
						<td>2017.12 ~ 2018.12</td>
						<th>여신</th>
						<td>1,500,000 \</td>						
					</tr>
					<tr>
						<th>변경일</th>
						<td>2017.12.22</td>
						<th>적용기간</th>
						<td>2017.12 ~ 2018.12</td>
						<th>여신</th>
						<td>1,500,000 \</td>						
					</tr>
					<tr>
						<th><span class="red">생성일</span></th>
						<td>2017.12.22</td>
						<th>적용기간</th>
						<td>2017.12 ~ 2018.12</td>
						<th>여신</th>
						<td>1,500,000 \</td>						
					</tr>
					<tr>
						<th>변경일</th>
						<td>2017.12.22</td>
						<th>적용기간</th>
						<td>2017.12 ~ 2018.12</td>
						<th>여신</th>
						<td>1,500,000 \</td>						
					</tr>
					<tr>
						<th>변경일</th>
						<td>2017.12.22</td>
						<th>적용기간</th>
						<td>2017.12 ~ 2018.12</td>
						<th>여신</th>
						<td>1,500,000 \</td>						
					</tr>
					<tr>
						<th>변경일</th>
						<td>2017.12.22</td>
						<th>적용기간</th>
						<td>2017.12 ~ 2018.12</td>
						<th>여신</th>
						<td>1,500,000 \</td>						
					</tr>
					<tr>
						<th>변경일</th>
						<td>2017.12.22</td>
						<th>적용기간</th>
						<td>2017.12 ~ 2018.12</td>
						<th>여신</th>
						<td>1,500,000 \</td>						
					</tr>
					<tr>
						<th>변경일</th>
						<td>2017.12.22</td>
						<th>적용기간</th>
						<td>2017.12 ~ 2018.12</td>
						<th>여신</th>
						<td>1,500,000 \</td>						
					</tr>
					<tr>
						<th><span class="red">생성일</span></th>
						<td>2017.12.22</td>
						<th>적용기간</th>
						<td>2017.12 ~ 2018.12</td>
						<th>여신</th>
						<td>1,500,000 \</td>						
					</tr>															
				</tbody>
			</table>
			</div>
		</div>
		<div class="bnt_area">
			<button class="btn md btn_blue">확인</button>
			<button class="btn md btn_blue close">닫기</button>
		</div>
	</div>
	<!-- //popup_상세보기(여신관리) -->
</div>


</@page.base>




