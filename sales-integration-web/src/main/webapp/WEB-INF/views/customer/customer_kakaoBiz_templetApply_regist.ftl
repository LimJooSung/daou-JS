<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 템플릿/이미지 관리' />

<@page.base pageTitle>

<#include '/include/customer-left-menu.ftl'>
<!-- contents -->
<div class="container_r">
   	<!-- title -->
   	<div class="title_b">
   		<em></em>
   		<h2>템플릿/이미지 관리</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">고객 관리</a> > 
			<a href="">카카오톡 비즈메시지</a> > 
			<a href="">템플릿/이미지 관리</a>
		</blockquote>
	</div>
	<!-- //title -->
	
	<!-- tab -->
	<ul class="tab_d">
		<li><a class="active">알림톡 템플릿</a></li>
		<li><a>친구톡 이미지</a></li>
	</ul>		
	<!-- //tab -->					
	
	<!-- tab_알림톡 템플릿 -->
	<!-- 메세징 ID 검색 / 플러스친구 ID/그룹 선택 -->			
	<div class="box_grey box_search">
		<p class="align_c">
			<label for="input1" class="bul mr_15">메세징 ID</label>
			<input id="input1" type="text" placeholder="검색 내용 입력">
			<a href="#" class="btn_sm_sch_black r3 mr_15">검색</a>
			<label class="bul mr_15">플러스친구 ID/그룹</label>
			<select id="plusfriendSelect" class="w200">
				<option value="1">선택</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
			</select>
		</p>
	</div>
	<!-- //메세징 ID 검색 / 플러스친구 ID/그룹 선택 -->						
	
	<!-- 타이틀 -->			
	<div class="title clr">
		<em></em>      
		<h4>템플릿 입력</h4>
	</div>
	<!-- //타이틀 -->	
	
	<!-- button -->
	<div class="align_r mt_15">
		<a href="" class="btn md btn_blue">입력란 추가</a>
		<a href="" class="btn md btn_gray">입력란 삭제</a>
	</div>
	<!-- //button -->
	
	<div class="scroll h250 mt_15">					
		<table class="tb_list2_a mb_15">
			<colgroup>
				<col style="width:20%">
				<col style="width:80%">
			</colgroup>
			<tbody>
				<tr>
					<th><b class="txt_c_red">*</b> 템플릿 명</th>
					<td>
						<input type="text" placeholder="템플릿 명은 메시지 내용에 포함되지 않습니다." class="w300" /><span class="ml_5">0/30자 입력 가능</span><br />
						<p class="red">* 발신 프로필 내 동일한 템플릿 명 등록 불가</p>
					</td>
				</tr>
				<tr>
					<th><b class="txt_c_red">*</b> 템플릿 내용</th>
					<td>
						<textarea class="w400 f_l" rows="5"></textarea>
						<span class="ml_5 f_l">0/1,000자 입력 가능<br />변수입력 형식 : {#변수}</span>
					</td>
				</tr>
				<tr>
					<th>버튼 <a href="" class="btn_sm_line_blue">추가</a></th>
					<td>
						<table class="tb_list_b">
							<colgroup>
								<col style="width:10%">
								<col style="width:30%">
								<col style="width:30%">
								<col style="width:30%">
							</colgroup>
							<thead>
								<tr>
									<th>No</th>
									<th>버튼타입</th>
									<th>버튼명</th>
									<th>버튼링크</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
      
	<!-- 하단 버튼 -->
     <div class="btn_area mb_15">
		<a href="#" class="btn lg btn_blue">등록</a>
		<a href="#" class="btn lg btn_gray">취소</a>
     </div>
	<!-- //하단 버튼 -->
	<!-- //tab_알림톡 템플릿 -->
	
	<!-- tab_친구톡 이미지 -->		
	<!-- 메세징 ID 검색 -->			
	<div class="box_grey box_search">
		<p class="align_c">
			<label for="input2" class="bul mr_15">메세징 ID</label>
			<input id="input2" type="text" placeholder="검색 내용 입력" class="mr_5">
			<a href="#" class="btn_sm_sch_black r3 mr_15">검색</a>
		</p>
	</div>
	<!-- //메세징 ID 검색 -->	
	
	<!-- 타이틀 -->			
	<div class="title clr">
		<em></em>      
		<h4>이미지 입력</h4>
	</div>
	<!-- //타이틀 -->	
	
	<!-- button -->
	<div class="align_r mt_15">
		<a href="" class="btn md btn_blue">입력란 추가</a>
		<a href="" class="btn md btn_gray">입력란 삭제</a>
	</div>
	<!-- //button -->
	
	<!-- 이미지입력 table -->														
	<div class="scroll h250 mt_15">					
		<table class="tb_list2_a mb_15">
			<colgroup>
				<col style="width:20%">
				<col style="width:80%">
			</colgroup>
			<tbody>
				<tr>
					<th><b class="txt_c_red">*</b> 제목</th>
					<td>
						<input type="text" placeholder="템플릿 명은 메시지 내용에 포함되지 않습니다." class="w300" /><span class="ml_5">0/30자 입력 가능</span><br />
						<p class="red">* 발신 프로필 내 동일한 템플릿 명 등록 불가</p>
					</td>
				</tr>
				<tr>
					<th><b class="txt_c_red">*</b> 링크</th>
					<td>
						<input type="text" placeholder="http://를 포함하여 입력합니다." class="w300" /><br />
						<p class="red">* 이미지 클릭 시 이동할 URL</p>
						<p class="red">* 링크를 입력하지 않는 경우, 카카오톡 내 이미지 뷰어 사용</p>
					</td>
				</tr>
				<tr>
					<th><b class="txt_c_red">*</b> 이미지</th>
					<td>
						<input type="file" class="w300" />
						<p class="red">* 파일 : JPG, PNG만 가능, 용량 최대 500KB</p>
						<p class="red">* 권장사이즈 : 720px * 630px(가로 500px 미만 또는 가로*세로 비율이 1:1.5 초과시 업로드 불가)</p>							
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- //이미지입력 table -->		
					
	<!-- 하단 버튼 -->
	<div class="btn_area mb_15">
		<a href="#" class="btn lg btn_blue">등록</a>
		<a href="#" class="btn lg btn_gray">취소</a>
	</div>
	<!-- //하단 버튼 -->		
	<!-- //tab_친구톡 이미지 -->
</div>
<!-- //contents -->

</@page.base>




