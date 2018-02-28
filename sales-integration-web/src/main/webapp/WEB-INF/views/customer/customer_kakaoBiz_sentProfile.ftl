<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 발신프로필 관리' />

<@page.base pageTitle>

<script>
	/********* 팝업 레이어 스크립트 (템플릿 그룹설정) **********/
	function wrapWindowByMask6(){
	    // 화면의 높이와 너비를 변수로 만듦
	    var maskHeight = $(document).height();
	    var maskWidth = $(window).width();
	
	    // 마스크의 높이와 너비를 화면의 높이와 너비 변수로 설정
	    $('.setGroup_mask').css({'width':maskWidth,'height':maskHeight});
	
	    // fade 애니메이션 :80%의 불투명 처리
	    $('.setGroup_mask').fadeTo("slow",0.8);
	
	    // 레이어 팝업을 가운데로 띄우기 위해 화면의 높이와 너비의 가운데 값과 스크롤 값을 더하여 변수로 만듦
	    var left = ( $(window).scrollLeft() + ( $(window).width() - $('.setGroup_window').width()) / 2 );
	    var top = ( $(window).scrollTop() + ( $(window).height() - $('.setGroup_window').height()) / 2 );
	
	    // css 스타일을 변경
	    $('.setGroup_window').css({'left':left,'top':top, 'position':'absolute'});
	
	    // 레이어 팝업을 띄움
	    $('.setGroup_window').show();
	}
	
	$(document).ready(function(){
	    // showMask를 클릭시 작동하며 검은 마스크 배경과 레이어 팝업을 띄움
	    $('#setGroupBtn').click(function(e){
	        // preventDefault는 href의 링크 기본 행동을 막는 기능
	        e.preventDefault();
	        wrapWindowByMask6();
	    });
	
	    // 닫기(close)를 눌렀을 때 작동
	    $('.setGroup_window .close').click(function (e) {
	        e.preventDefault();
	        $('.setGroup_mask, .setGroup_window').hide();
	    });
	
	    // 뒤 검은 마스크를 클릭시에도 모두 제거하도록 처리
	    $('.setGroup_mask').click(function () {
	        $(this).hide();
	        $('.setGroup_window').hide();
	    });
	});
	/*******************************************/
</script>
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
    
    /* 발신프로필 삭제 팝업 레이어 css */
    .sentProfile_delete_mask {
        position:absolute;
        left:0;
        top:0;
        z-index:9999;
        background-color:#000;
        display:none;
    }
    .sentProfile_delete_window {
        display: none;
        background-color: #ffffff;
        height: 300px;
        width: 350px;
        z-index:99999;
    }
    
    /* 연동 팝업 레이어 css */
    .interlock_mask {
        position:absolute;
        left:0;
        top:0;
        z-index:9999;
        background-color:#000;
        display:none;
    }
    .interlock_window {
        display: none;
        background-color: #ffffff;
        height: 370px;
        width: 470px;
        z-index:99999;
    }
    
    /* 템플릿 그룹설정 팝업 레이어 css */
    .setGroup_mask {
        position:absolute;
        left:0;
        top:0;
        z-index:9999;
        background-color:#000;
        display:none;
    }
    .setGroup_window {
        display: none;
        background-color: #ffffff;
        height: 480px;
        width: 500px;
        z-index:99999;
    }
</style>
    
<#include '/include/customer-left-menu.ftl'>
<!-- contents -->
<div class="container_r">
   	<!-- title -->
   	<div class="title_b">
   		<em></em>
   		<h2>발신프로필 관리</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">고객 관리</a> > 
			<a href="">카카오톡 비즈메시지</a> > 
			<a href="">발신프로필 관리</a>
		</blockquote>
	</div>
	<!-- //title -->
	
	<!-- tab -->
	<ul class="tab_d">
		<li><a class="active">발신프로필 등록</a></li>
		<li><a>발신프로필 연동</a></li>
	</ul>		
	<!-- //tab -->			
	
	<!-- tab_발신프로필 등록 -->
	<!-- message -->
	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>메세징 ID와 플러스친구ID를 매핑 등록/삭제합니다.</li>
			<li>매핑 삭제 시, 재매핑 가능합니다.</li>
			<li class="red">발신프로필의 템플릿 그룹을 지정합니다.(선택)</li>
		</ul>					
	</div>
	<!-- //message -->
	
	<!-- 메세징 ID, 서비스 검색 -->
	<div class="box_grey box_search">
		<div class="form_group">
			<p class="align_c">
				<select id="messageid" class="w100 mr_15">
					<option value="">메세징 ID</option>
				</select>
				<input type="text" class="w200" />
				<label class="bul ml_30 mr_15">서비스</label>
				<label for="bizppurioRadios"><input name="bizppurioRadios" id="bizppurioRadios" type="radio" checked="" value="option3"> 비즈뿌리오</label>
				<label class="mr_15" for="ufitRadios"><input name="ufitRadios" id="ufitRadios" type="radio" value="option4"> 유핏</label>
				<a href="#" class="btn_sm_sch_black r3">검색</a>
			</p>
		</div>			
	</div>
	<!-- //메세징 ID, 서비스 검색 -->
	
	<!-- button -->
	<div class="align_r mb_15">
		<a href="" class="btn_md_blue" id="detailBtn">등록</a>
		<a href="" class="btn_md_skyBlue" id="setGroupBtn">그룹 설정</a>
		<a href="" class="btn_md_gray" id="sentProfileDeleteBtn">삭제</a>
	</div>
	<!-- //button -->

	<div class="scroll h400">
		<!-- 발신프로필 등록 list table -->
		<table class="tb_list_b">
		   <colgroup>
				<col style="width:13.2%">
				<col style="width:14.2%">
				<col style="width:15.2%">
				<col style="width:15.2%">
				<col style="width:18.2%">
				<col style="width:18.2%">
				<col style="width:5.2%">				
			</colgroup>
			<thead>
				<tr>
					<th>업체명/이름</th>
					<th>서비스</th>
					<th>메세징 ID</th>
					<th>플러스친구 ID</th>
					<th>템플릿 그룹<br />
						<select id="templetSelect" class="w100">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option> 
							<option value="4">4</option>
							<option value="5">5</option>
						</select>												
					</th>
					<th>등록일 <a href="" class="btn_vsm mr_3"><span class="ico_up">오름차순</span></a><a href="" class="btn_vsm"><span class="ico_down">내림차순</span></a></th>
					<th><input type="checkbox" /></th>
				</tr>
			</thead>
			<tbody>
				<!-- 여기서부터 반복 
				 (원래는 Controller를 거쳐 list를 받아와 해당 정보를 출력하는 것)
				-->
				<#list 1..15 as i>
					<tr>
						<td>다우기술</td>
						<td>비즈뿌리오</td>
						<td>daou</td>
						<td>@다우기술</td>
						<td>다우키움그룹</td>
						<td>2017.12.26</td>
						<td><input type="checkbox" /></td>
					</tr>
				</#list>
			</tbody>
		</table>
		<!-- //발신프로필 등록 list table  -->			
	</div>
	
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
	<!-- //tab_발신프로필 등록 -->
	
	<!-- tab_발신프로필 연동 -->
	<!-- message -->
	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>비즈메세징 ID를 연동하여 발신프로필을 공유합니다.</li>
			<li>메인 계정– 공유될 계정 / 서브 계정- <span class="red">메인 계정의 것을 사용할 계정</span></li>
			<li class="red">연동 시, 서브 계정의 기존 발신프로필은 사용 불가합니다.</li>
		</ul>					
	</div>
	<!-- //message -->
	
	<!-- 메세징 ID, 서비스 검색 -->
	<div class="box_grey box_search">
		<div class="form_group">
			<p class="align_c">
				<label for="messageid2" class="bul mr_15">메세징 ID</label>
				<input type="text" class="w200" id="messageid2" />
				<a href="#" class="btn_sm_sch_black r3">검색</a>	
			</p>
		</div>			
	</div>
	<!-- //메세징 ID, 서비스 검색 -->
	
	<!-- button -->
	<div class="align_r mb_15">
		<a href="" class="btn_md_skyBlue mr_3" id="interlockBtn">연동</a>
	</div>
	<!-- //button -->
	
	<div class="scroll h400">
		<table class="tb_list_b">
			<colgroup>
				<col style="width:25%">
				<col style="width:25%">
				<col style="width:25%">
				<col style="width:25%">
			</colgroup>
			<thead>
				<tr>
					<th colspan="2">메인 계정</th>
					<th colspan="2">서브 계정</th>
				</tr>
				<tr>
					<th>메세징 ID</th>
					<th>업체명</th>
					<th>메세징 ID</th>
					<th>업체명</th>
				</tr>
				<!-- 여기서부터 반복 
				 (원래는 Controller를 거쳐 list를 받아와 해당 정보를 출력하는 것)
				-->
				<#list 1..16 as i>
					<tr>
						<td>daou</td>
						<td>다우기술</td>
						<td>daou</td>
						<td>다우기술</td>
					</tr>
				</#list>
			</thead>
		</table>
	</div>
	
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

	<!-- //tab_발신프로필 연동 -->
</div>
<!-- //contents -->

<!-- 레이어 팝업 -->
<div class="mask"></div>
<div class="window">
	<!-- popup_발신프로필 등록 -->
	<div class="popup_wrap ">
		<div class="title_box">
			<h1>발신프로필 등록</h1>
		</div>
		<div class="contents">
			<table class="tb_list2_a">
				<colgroup>
					<col style="width:20%">
					<col style="width:80%">
				</colgroup>
				<tbody>
					<tr>
						<th><b class="txt_c_red">*</b> 서비스</th>
						<td>
							<select id="serviceSelect" class="w200">
								<option value="1">1</option>
							</select>
						</td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 메세징 ID</th>
						<td><input type="text" class="w200" /></td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 발신프로필키</th>
						<td><input type="text" class="w200" /></td>
					</tr>
					<tr>
						<th>템플릿 그룹</th>
						<td>
							<select id="templetSelect" class="w200">
								<option value="1">1</option>
							</select>
						</td>
					</tr>					
				</tbody>
			</table>
		</div>
		<div class="bnt_area"><button class="btn md btn_blue">등록</button><button class="btn md btn_gray ml_5 close">취소</button></div>
	</div>
	<!-- popup_발신프로필 등록 -->
</div>

<!-- 레이어 팝업 (발신프로필 삭제) -->
<div class="sentProfile_delete_mask"></div>
<div class="sentProfile_delete_window">
	<!-- popup_발신프로필 삭제 -->
	<div class="popup_wrap ">
		<div class="title_box">
			<h1>발신프로필 삭제</h1>
		</div>
		<div class="contents">
			<p class="align_c f16 mb_15">발신프로필을 삭제하시겠습니까?</p>
			<ul class="txt_info ml_20">
				<li>서비스 : 유핏</li>
				<li>업체명 : 게티이미지</li>
				<li>사용자 ID : gety</li>
				<li>플러스친구 ID : @게티이미지</li>	
			</ul>			
		</div>
		<div class="bnt_area"><button class="btn md btn_blue">확인</button><button class="btn md btn_gray ml_5 close">취소</button></div>	
	</div>
	<!-- popup_발신프로필 삭제 -->
</div>

<!-- 레이어 팝업 (연동) -->
<div class="interlock_mask"></div>
<div class="interlock_window">
	<!-- popup_연동 -->
	<div class="popup_wrap ">
		<div class="title_box">
			<h1>연동</h1>
		</div>
		<div class="contents">
			<ul class="box_b2">
				<li class="red">메인 계정 : 공유될 계정</li>
				<li class="red">서브 계정: 메인 계정의 발신프로필을 사용할 계정</li>
			</ul>
			<table class="tb_list2_a mt_15">
				<colgroup>
					<col style="width:20%">
					<col style="width:80%">
				</colgroup>
				<tbody>
					<tr>
						<th><b class="txt_c_red">*</b> 메인 ID</th>
						<td><input type="text" class="w200"></td>
					</tr>
					<tr>
						<th><b class="txt_c_red">*</b> 서브 ID</th>
						<td><input type="text" class="w200"></td>
					</tr>					
				</tbody>
			</table>		
		</div>
		<div class="bnt_area"><button class="btn md btn_blue">등록</button><button class="btn md btn_gray ml_5 close">취소</button></div>	
	</div>
	<!-- //popup_연동 -->
</div>

<!-- 레이어 팝업 (템플릿 그룹 설정) -->
<div class="setGroup_mask"></div>
<div class="setGroup_window">
	<!-- popup_템플릿 그룹 지정 -->
	<div class="popup_wrap ">
		<div class="title_box">
			<h1>템플릿 그룹 설정</h1>
		</div>
		<div class="contents">
			<!-- 조회 -->
			<div class="box_grey box_search">
				<div class="form_group">
					<p class="align_c">
						<label class="bul ml_5">템플릿 그룹
							<input type="text" class="w200" placeholder="검색 조건 입력">
						</label>
						<a href="" class="btn_sm_sch_black r3">검색</a>
					</p>
				</div>
			</div>
			<!-- //조회 -->
		
			<div class="scroll h200 box_b3">
				<ul class="checklist">
					<li>시스포유<input type="checkbox" class="f_r checkbox"></li>
					<li>시스포유<input type="checkbox" class="f_r checkbox"></li>
					<li>시스포유<input type="checkbox" class="f_r checkbox"></li>
					<li>시스포유<input type="checkbox" class="f_r checkbox"></li>
					<li>시스포유<input type="checkbox" class="f_r checkbox"></li>
					<li>시스포유<input type="checkbox" class="f_r checkbox"></li>
					<li>시스포유<input type="checkbox" class="f_r checkbox"></li>
					<li>시스포유<input type="checkbox" class="f_r checkbox"></li>
				</ul>
			</div>
		</div>
		<div class="bnt_area"><button class="btn md btn_blue">확인</button><button class="btn md btn_gray ml_5 close">취소</button></div>
	</div>
	<!-- popup_템플릿 그룹 지정 -->
</div>
</@page.base>