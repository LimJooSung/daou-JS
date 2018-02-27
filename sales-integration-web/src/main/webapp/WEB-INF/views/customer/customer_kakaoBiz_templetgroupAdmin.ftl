<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 발신프로필 관리' />

<@page.base pageTitle>

<#include '/include/customer-left-menu.ftl'>
<!-- contents -->
<div class="container_r">
   	<!-- title -->
   	<div class="title_b">
   		<em></em>
   		<h2>템플릿 그룹 관리</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">고객 관리</a> > 
			<a href="">카카오톡 비즈메시지</a> > 
			<a href="">템플릿 그룹 관리</a>
		</blockquote>
	</div>
	<!-- //title -->
	
	<!-- message -->
	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>템플릿 그룹을 생성합니다.(템플릿 그룹명 수정 불가)</li>
			<li>템플릿에 포함된 발신프로필을 조회합니다.</li>
		</ul>					
	</div>
	<!-- //message -->
	
	<!-- 검색 -->
	<div class="box_grey box_search">
		<div class="form_group">
			<p class="align_c">
				<label for="templetGroup" class="bul">템플릿 그룹명</label> <input type="text" class="w200 mr_15" name="templetGroup" id="templetGroup">
				<label class="bul ml_15 mr_15">서비스</label>
				<label><input name="bizppurioRadios1" id="bizppurioRadios1" type="radio" checked="" value="option1"> 비즈뿌리오</label>
				<label class="mr_15"><input name="ufitRadios2" id="ufitRadios2" type="radio" value="option2"> 유핏</label>
				<a href="#" class="btn_sm_sch_black r3">검색</a>	
			</p>
		</div>
	</div>
	<!-- //검색 -->
	
	<!-- button -->
	<div class="align_r mb_15">
		<a href="" class="btn md btn_blue">생성</a>
		<a href="" class="btn md btn_gray">삭제</a>
	</div>
	<!-- //button -->
	
	<table class="tb_list_b">
		<colgroup>
			<col style="width:16.6%">
			<col style="width:16.6%">
			<col style="width:18.6%">
			<col style="width:18.6%">
			<col style="width:18.6%">
			<col style="width:10.6%">
		</colgroup>
		<thead>
			<tr>
				<th>템플릿 그룹명</th>
				<th>서비스</th>
				<th>생성일 <a href="" class="btn_vsm"><span class="ico_up">오름차순</span></a> <a href="" class="btn_vsm"><span class="ico_down">내림차순</span></a></th>
				<th>연동 플러스 친구 ID</th>
				<th>상세 연동 조회</th>
				<th><input type="checkbox"></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>다우키움그룹</td>
				<td>유핏</td>
				<td>2017.01.22</td>
				<td>20개</td>
				<td><a href="" class="btn_sm_black">조회</a></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>키움그룹</td>
				<td>비즈뿌리오</td>
				<td>2017.01.22</td>
				<td>20개</td>
				<td><a href="" class="btn_sm_black">조회</a></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>차앤박피부과</td>
				<td>비즈뿌리오</td>
				<td>2017.01.22</td>
				<td>20개</td>
				<td><a href="" class="btn_sm_black">조회</a></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>다우키움그룹</td>
				<td>유핏</td>
				<td>2017.01.22</td>
				<td>20개</td>
				<td><a href="" class="btn_sm_black">조회</a></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>키움그룹</td>
				<td>비즈뿌리오</td>
				<td>2017.01.22</td>
				<td>20개</td>
				<td><a href="" class="btn_sm_black">조회</a></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>차앤박피부과</td>
				<td>비즈뿌리오</td>
				<td>2017.01.22</td>
				<td>20개</td>
				<td><a href="" class="btn_sm_black">조회</a></td>
				<td><input type="checkbox"></td>
			</tr>				
			<tr>
				<td>차앤박피부과</td>
				<td>비즈뿌리오</td>
				<td>2017.01.22</td>
				<td>20개</td>
				<td><a href="" class="btn_sm_black">조회</a></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>다우키움그룹</td>
				<td>유핏</td>
				<td>2017.01.22</td>
				<td>20개</td>
				<td><a href="" class="btn_sm_black">조회</a></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>키움그룹</td>
				<td>비즈뿌리오</td>
				<td>2017.01.22</td>
				<td>20개</td>
				<td><a href="" class="btn_sm_black">조회</a></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>차앤박피부과</td>
				<td>비즈뿌리오</td>
				<td>2017.01.22</td>
				<td>20개</td>
				<td><a href="" class="btn_sm_black">조회</a></td>
				<td><input type="checkbox"></td>
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
</div>
<!-- //contents -->

</@page.base>




