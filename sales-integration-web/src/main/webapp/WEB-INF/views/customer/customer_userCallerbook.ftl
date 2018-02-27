<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 발신번호 승인' />

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
        height: 250px;
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
   		<h2>발신번호 승인</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">고객 관리</a> > 
			<a href="">발신번호 관리</a> > 
			<a href="">발신번호 승인</a>
		</blockquote>
	</div>
	<!-- //title -->
	
	<!-- message -->
	<div class="box_b3 mb_15">
  		<ul class="txt_info">
   			<li>서류 인증을 통해 승인을 요청한 내역입니다.</li>
   			<li>구분– 개별등록 : 발신번호를 각각 등록 / 일괄등록 : 여러 발신번호를 한 번에 등록</li>
   			<li>상태 변경 시 고객 담당자에게 심사 결과를 문자 발송합니다.</li>
   			<li>승인완료된 발신번호는 [발신번호 조회] 탭으로 이동합니다.</li>
   			<li>첨부파일은 서비스 해지 후 1년 동안만 보관됩니다.</li>
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
			<input id="id_input1" type="text" placeholder="검색 내용 입력" class="mr_15">
			<label class="bul">서비스</label>
			<label for="bizRadios"><input name="bizRadios" id="bizRadios" type="radio" checked="" value="option1"> 비즈뿌리오</label>
			<label for="ufitRadios" class="mr_15"><input name="ufitRadios2" id="ufitRadios" type="radio" value="option2"> 유핏</label>
			<a href="#" class="btn_sm_sch_black r3">검색</a>
		</p>
	</div>	
	<!-- //아이디 및 서비스 선택 후 검색 -->
	
	<!-- button -->
	<div class="align_r mb_15">
		<a href="" class="btn md btn_blue" id="detailBtn">승인</a>
		<a href="" class="btn md btn_gray" id="detailBtn">반려</a>
	</div>
	<!-- //button -->
	
	<div class="scroll h400">
		<!-- table list -->
		<table class="tb_list_b">
		   <colgroup>
				<col style="width:5.6%">
				<col style="width:6.6%">
				<col style="width:7.6%">
				<col style="width:7.6%">
				<col style="width:7.6%">
				<col style="width:8.6%">
				<col style="width:8.6%">
				<col style="width:7.6%">
				<col style="width:8.6%">
				<col style="width:8.6%">
				<col style="width:6.6%">
				<col style="width:6.6%">
				<col style="width:8.6%">				
		   </colgroup>
		   <thead>
				<tr>
					<th><input type="checkbox" /></th>
					<th>No.</th>
					<th>ID</th>
					<th>서비스</th>
					<th>업체명/이름</th>
					<th>담당부서<br />
						<select id="select1" class="w60">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option> 
							<option value="4">4</option>
							<option value="5">5</option>
						</select>					
					</th>
					<th>담당자<br />
						<select id="select2" class="w60">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option> 
							<option value="4">4</option>
							<option value="5">5</option>
						</select>					
					</th>
					<th>구분</th>
					<th>발신번호</th>
					<th>용도<br />
						<select id="select3" class="w80">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option> 
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</th>
					<th>신청일</th>
					<th>첨부 파일</th>
					<th>상태<br />
						<select id="select4" class="w80">
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
		   		<#list 1..7 as i>
					<tr>
						<td><input type="checkbox"></td>
						<td>1200</td> 
						<td>daou</td>
						<td>비즈뿌리오</td>
						<td>다우기술</td>
						<td>MSG1</td> 
						<td>김현진</td>
						<td>개별등록</td>  						 
						<td>070-1234-5678</td>
						<td>웹</td> 
						<td>2017.12.22</td>
						<td><a href="#" class="btn_sm_skyBlue">보기</a></td>  	
						<td>승인 요청</td>					 					  						 
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>1200</td> 
						<td>daou</td>
						<td>비즈뿌리오</td>
						<td>다우기술</td>
						<td>MSG1</td> 
						<td>김현진</td>
						<td><a href="" class="a_be blue">일괄등록</a></td>  						 
						<td>070-1234-5678</td>
						<td>웹</td> 
						<td>2017.12.22</td>
						<td><a href="#" class="btn_sm_skyBlue">보기</a></td>  	
						<td>반려</td>					 					  						 
					</tr>
				</#list>																																																									
			</tbody>
		</table>
		<!-- //table list -->
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
	<!-- //tab_발신번호 승인 -->
	
	<!-- tab_발신번호 조회 -->
	<!-- message -->
	<div class="box_b3 mb_15">
  		<ul class="txt_info">
   			<li>발신번호 사전 등록이 완료된 리스트입니다.</li>
		</ul>
	</div>
	<!-- //message -->
	
	<!-- 아이디 및 서비스 선택 후 검색 -->
	<div class="box_grey box_search">
		<p class="align_c">
			<select id="idselect2" class="w100">
				<option value="1">ID</option>
				<option value="2">1</option>
				<option value="3">2</option>
				<option value="4">3</option>
				<option value="5">4</option>
			</select>
			<input id="id_input2" type="text" placeholder="검색 내용 입력" class="mr_15">
			<label class="bul">서비스</label>
			<label for="bizRadios2"><input name="bizRadios2" id="bizRadios2" type="radio" checked="" value="option1"> 비즈뿌리오</label>
			<label for="ufitRadios2" class="mr_15"><input name="ufitRadios2" id="ufitRadios2" type="radio" value="option2"> 유핏</label>
			<a href="#" class="btn_sch_black">검색</a>
		</p>
	</div>	
	<!-- //아이디 및 서비스 선택 후 검색 -->
	
	<!-- button -->
	<div class="align_r mb_15">
		<a href="" class="btn md btn_gray">삭제</a>
	</div>
	<!-- //button -->
	
	<!-- table list -->
	<table class="tb_list_b">
	   <colgroup>
			<col style="width:5.6%">
			<col style="width:6.6%">
			<col style="width:7.6%">
			<col style="width:7.6%">
			<col style="width:8.6%">
			<col style="width:8.6%">
			<col style="width:8.6%">
			<col style="width:8.6%">
			<col style="width:8.6%">
			<col style="width:8.6%">
			<col style="width:6.6%">
			<col style="width:6.6%">
			<col style="width:8.6%">				
		</colgroup>
		<thead>
			<tr>
				<th><input type="checkbox" /></th>
				<th>No.</th>
				<th>ID</th>
				<th>서비스</th>
				<th>업체명</th>
				<th>담당부서<br />
					<select id="partselect1" class="w80">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option> 
						<option value="4">4</option>
						<option value="5">5</option>
					</select>					
				</th>
				<th>담당자<br />
					<select id="partselect2" class="w80">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option> 
						<option value="4">4</option>
						<option value="5">5</option>
					</select>					
				</th>
				<th>발신번호</th>
				<th>용도<br />
					<select id="partselect3" class="w80">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option> 
						<option value="4">4</option>
						<option value="5">5</option>
					</select>					
				</th>
				<th>인증 수단<br />
					<select id="partselect4" class="w80">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option> 
						<option value="4">4</option>
						<option value="5">5</option>
					</select>					
				</th>					
				<th>신청일</th>
				<th>승인일</th>
				<th>첨부파일</th>
			</tr>
		</thead>
		<tbody>
			<!-- 여기서부터 반복 
					 (원래는 Controller를 거쳐 list를 받아와 해당 정보를 출력하는 것)
				-->
		   		<#list 1..5 as i>
					<tr>
						<td><input type="checkbox"></td>
						<td>1200</td> 
						<td>daou</td>
						<td>비즈뿌리오</td>
						<td>다우기술</td>
						<td>MSG1</td> 
						<td>김현진</td>
						<td>070-1234-5678</td>  						 
						<td>웹</td>
						<td>서류</td> 
						<td>2017.12.22</td>
						<td>2017.12.22</td>
						<td><a href="#" class="btn_sm_line_blue">보기</a></td>  						 					  						 
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>1200</td> 
						<td>daou</td>
						<td>비즈뿌리오</td>
						<td>다우기술</td>
						<td>MSG1</td> 
						<td>김현진</td>
						<td>070-1234-5678</td>  						 
						<td>웹</td>
						<td>서류</td> 
						<td>2017.12.22</td>
						<td>2017.12.22</td>
						<td>-</td>  						 					  						 
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
	<!-- popup_발신번호 승인(반려) 완료 -->
	<div class="popup_wrap ">
		<div class="title_box">
			<h1>발신번호 승인(반려) 완료</h1>
		</div>
		<div class="contents">
			<p class="align_c">발신번호를 승인(반려) 되었습니다.<br /><br />
			고객 담당자에게 문자를 전송합니다.</p>
		</div>
		<div class="bnt_area"><button class="btn md btn_blue">문자 전송</button><button class="btn md btn_gray ml_5 close">전송 안함</button></div>	
	</div>
	<!-- //popup_발신번호 승인(반려) 완료 -->
</div>
</@page.base>




