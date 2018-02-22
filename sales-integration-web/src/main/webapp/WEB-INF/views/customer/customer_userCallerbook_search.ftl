<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 발신번호 조회' />

<@page.base pageTitle>

<#include '/include/customer-left-menu.ftl'>
<!-- contents -->
<div class="container_r">    
   	<!-- title -->
   	<div class="title_b">
   		<em></em>
   		<h2>발신번호 조회</h2>
		<blockquote class="txt_bul_bar">
			<a href="">홈</a> > 
			<a href="">고객 관리</a> > 
			<a href="">발신번호 관리</a> > 
			<a href="">발신번호 조회</a>
		</blockquote>
	</div>
	<!-- //title -->
	
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
	<div class="align_l mb_15">
		<a href="" class="btn_md_gray mr_3">삭제</a>
	</div>
	<!-- //button -->
		

	<!-- table list -->
	<table class="tb_list_b">
	   <colgroup>
			<col style="width:5.6%">
			<col style="width:6.6%">
			<col style="width:7.6%">
			<col style="width:7.6%">
			<col style="width:7.6%">
			<col style="width:7.6%">
			<col style="width:8.6%">
			<col style="width:8.6%">
			<col style="width:8.6%">
			<col style="width:8.6%">
			<col style="width:6.6%">
			<col style="width:7.6%">
			<col style="width:6.6%">				
	   </colgroup>
	   <thead>
			<tr>
				<th><input type="checkbox" /></th>
				<th>No.</th>
				<th>ID</th>
				<th>서비스</th>
				<th>업체명</th>
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
				<th>발신번호</th>
				<th>용도<br />
					<select id="select3" class="w60">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option> 
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
				</th>
				<th>인증 수단<br />
					<select id="select4" class="w60">
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
	   		<tr>
	   			<td><input type="checkbox" /></td>
	   			<td>123</td>
	   			<td>daou</td>
	   			<td>비즈뿌리오</td>
	   			<td>다우기술</td>
	   			<td>MSG1</td>
	   			<td>김현진</td>
	   			<td>01012345678</td>
	   			<td>웹</td>
	   			<td>서류</td>
	   			<td>2017.02.02</td>
	   			<td>2017.02.02</td>
	   			<td><a href="" class="btn_sm_skyBlue">보기</a></td>
	   		</tr>
	   		<tr>
	   			<td><input type="checkbox" /></td>
	   			<td>123</td>
	   			<td>daou</td>
	   			<td>비즈뿌리오</td>
	   			<td>다우기술</td>
	   			<td>MSG1</td>
	   			<td>김현진</td>
	   			<td>01012345678</td>
	   			<td>웹</td>
	   			<td>서류</td>
	   			<td>2017.02.02</td>
	   			<td>2017.02.02</td>
	   			<td><a href="" class="btn_sm_skyBlue">보기</a></td>
	   		</tr>
	   		<tr>
	   			<td><input type="checkbox" /></td>
	   			<td>123</td>
	   			<td>daou</td>
	   			<td>비즈뿌리오</td>
	   			<td>다우기술</td>
	   			<td>MSG1</td>
	   			<td>김현진</td>
	   			<td>01012345678</td>
	   			<td>웹</td>
	   			<td>서류</td>
	   			<td>2017.02.02</td>
	   			<td>2017.02.02</td>
	   			<td><a href="" class="btn_sm_skyBlue">보기</a></td>
	   		</tr>
	   		<tr>
	   			<td><input type="checkbox" /></td>
	   			<td>123</td>
	   			<td>daou</td>
	   			<td>비즈뿌리오</td>
	   			<td>다우기술</td>
	   			<td>MSG1</td>
	   			<td>김현진</td>
	   			<td>01012345678</td>
	   			<td>웹</td>
	   			<td>서류</td>
	   			<td>2017.02.02</td>
	   			<td>2017.02.02</td>
	   			<td><a href="" class="btn_sm_skyBlue">보기</a></td>
	   		</tr>
	   		<tr>
	   			<td><input type="checkbox" /></td>
	   			<td>123</td>
	   			<td>daou</td>
	   			<td>비즈뿌리오</td>
	   			<td>다우기술</td>
	   			<td>MSG1</td>
	   			<td>김현진</td>
	   			<td>01012345678</td>
	   			<td>웹</td>
	   			<td>서류</td>
	   			<td>2017.02.02</td>
	   			<td>2017.02.02</td>
	   			<td><a href="" class="btn_sm_skyBlue">보기</a></td>
	   		</tr>
	   		<tr>
	   			<td><input type="checkbox" /></td>
	   			<td>123</td>
	   			<td>daou</td>
	   			<td>비즈뿌리오</td>
	   			<td>다우기술</td>
	   			<td>MSG1</td>
	   			<td>김현진</td>
	   			<td>01012345678</td>
	   			<td>웹</td>
	   			<td>서류</td>
	   			<td>2017.02.02</td>
	   			<td>2017.02.02</td>
	   			<td><a href="" class="btn_sm_skyBlue">보기</a></td>
	   		</tr>
	   		<tr>
	   			<td><input type="checkbox" /></td>
	   			<td>123</td>
	   			<td>daou</td>
	   			<td>비즈뿌리오</td>
	   			<td>다우기술</td>
	   			<td>MSG1</td>
	   			<td>김현진</td>
	   			<td>01012345678</td>
	   			<td>웹</td>
	   			<td>서류</td>
	   			<td>2017.02.02</td>
	   			<td>2017.02.02</td>
	   			<td><a href="" class="btn_sm_skyBlue">보기</a></td>
	   		</tr>
	   		<tr>
	   			<td><input type="checkbox" /></td>
	   			<td>123</td>
	   			<td>daou</td>
	   			<td>비즈뿌리오</td>
	   			<td>다우기술</td>
	   			<td>MSG1</td>
	   			<td>김현진</td>
	   			<td>01012345678</td>
	   			<td>웹</td>
	   			<td>서류</td>
	   			<td>2017.02.02</td>
	   			<td>2017.02.02</td>
	   			<td><a href="" class="btn_sm_skyBlue">보기</a></td>
	   		</tr>
	   		<tr>
	   			<td><input type="checkbox" /></td>
	   			<td>123</td>
	   			<td>daou</td>
	   			<td>비즈뿌리오</td>
	   			<td>다우기술</td>
	   			<td>MSG1</td>
	   			<td>김현진</td>
	   			<td>01012345678</td>
	   			<td>웹</td>
	   			<td>서류</td>
	   			<td>2017.02.02</td>
	   			<td>2017.02.02</td>
	   			<td><a href="" class="btn_sm_skyBlue">보기</a></td>
	   		</tr>
	   		<tr>
	   			<td><input type="checkbox" /></td>
	   			<td>123</td>
	   			<td>daou</td>
	   			<td>비즈뿌리오</td>
	   			<td>다우기술</td>
	   			<td>MSG1</td>
	   			<td>김현진</td>
	   			<td>01012345678</td>
	   			<td>웹</td>
	   			<td>서류</td>
	   			<td>2017.02.02</td>
	   			<td>2017.02.02</td>
	   			<td><a href="" class="btn_sm_skyBlue">보기</a></td>
	   		</tr>
	   		<tr>
	   			<td><input type="checkbox" /></td>
	   			<td>123</td>
	   			<td>daou</td>
	   			<td>비즈뿌리오</td>
	   			<td>다우기술</td>
	   			<td>MSG1</td>
	   			<td>김현진</td>
	   			<td>01012345678</td>
	   			<td>웹</td>
	   			<td>서류</td>
	   			<td>2017.02.02</td>
	   			<td>2017.02.02</td>
	   			<td><a href="" class="btn_sm_skyBlue">보기</a></td>
	   		</tr>			   		
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
			<span class="here">1</span><button type="button">2</button><button type="button">3</button><button type="button">4</button><button type="button">5</button><button type="button">6</button><button type="button">7</button><button type="button">8</button><button type="button">9</button><button type="button">10</button> 
		</span>
		<span>       
			<button title="다음 10페이지" class="next" type="button">&gt;</button>
			<button title="마지막페이지" class="last" type="button">&gt;&gt;</button>
		</span>
	</div> 		
	<!-- //paging -->						
</div>
<!-- //contents -->

</@page.base>




