<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 회원리스트' />

<@page.base pageTitle>

<#include '/include/customer-left-menu.ftl'>
<!-- contents -->
<div class="container_r">
	<!-- title -->
	<div class="title_b">
		<em></em>
		<h2>회원 리스트</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">고객 관리</a> > 
			<a href="">회원 리스트</a>
		</blockquote>
	</div>
	<!-- //title -->

	<!-- message -->
	<div class="box_b3 posit_r mb_15">
		<ul class="txt_info">
			<li>사용 승인된 리스트입니다.</li>
			<li>정보 수정 클릭 시 [회원정보]로 이동합니다.</li>
		</ul>
	</div>
	<!-- //message -->

	<!-- 검색 -->
	<div class="box_grey box_search">
		<p class="align_c">
			<select class="w100">
				<option value="1">ID</option>
				<option value="2">1</option>
				<option value="3">2</option>
				<option value="4">3</option>
				<option value="5">4</option>
			</select> 
			<input id="input1" type="text" placeholder="ID" class="mr_15">
			<label for="input1" class="bul">계정</label> 
			<label><input name="optionsRadios1" id="optionsRadios1" type="radio" checked="" value="option1"> 마스터</label> 
			<label class="mr_15"><input name="optionsRadios2" id="optionsRadios2" type="radio" value="option2"> 슬레이브</label> 
			<label for="input1" class="bul">서비스</label>
			<label><input name="optionsRadios3" id="optionsRadios3" type="radio" checked="" value="option3"> 비즈뿌리오</label> 
			<label class="mr_15"><input name="optionsRadios4" id="optionsRadios4" type="radio" value="option4"> 유핏</label> 
			<a href="#" class="btn_sm_sch_black r3">검색</a>
		</p>
	</div>
	<!-- //검색 -->

	<div class="scroll h500">
	<!-- 검색 결과 table -->
	<table class="tb_list_b">
		<colgroup>
			<col style="width: 8.3%">
			<col style="width: 7.3%">
			<col style="width: 7.3%">
			<col style="width: 7.3%">
			<col style="width: 9.3%">
			<col style="width: 9.3%">
			<col style="width: 9.3%">
			<col style="width: 9.3%">
			<col style="width: 9.3%">
			<col style="width: 9.3%">
			<col style="width: 6.3%">
			<col style="width: 7.3%">
		</colgroup>
		<thead>
			<tr>
				<th>승인일 
					<a href="" class="btn_vsm mr_3"><span class="ico_up">오름차순</span></a>
					<a href="" class="btn_vsm"><span class="ico_down">내림차순</span></a></th>
				<th>ID</th>
				<th>서비스</th>
				<th>업체명</th>
				<th>회원타입<br /> 
					<select id="select1" class="w60">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
					</select>
				</th>
				<th>결제<br /> 
					<select id="select2" class="w60">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
					</select>
				</th>
				<th>발송 상태<br /> 
					<select id="select3" class="w60">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
					</select>
				</th>
				<th>담당부서<br /> 
					<select id="select4" class="w60">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
					</select>
				</th>
				<th>담당자<br /> 
					<select id="select5" class="w60">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
					</select>
				</th>
				<th>관리자 계정<br /> 
					<select id="select6" class="w60">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
					</select>
				</th>
				<th>발송량</th>
				<th>회원정보</th>
			</tr>
		</thead>
		<tbody>
			<!-- CustomerController로부터 저장된 값을 ArrayList로 받아와 해당 정보를 출력
				 현재는 DB를 거치지 않고, Controller에서 임시로 값을 저장하여 ftl에서 출력하도록 함
				 model["(controller 내 model에 지정한 이름)"] 을 이용해 출력
			-->
			<#list model["customerMemberList"] as customerMember>
			  	<tr>
					<td>${customerMember.approvedDate}</td>
					<td>${customerMember.memId}</td>
					<td>${customerMember.serviceCategory}</td>
					<td>${customerMember.companyName}</td>
					<td>${customerMember.memType}</td>
					<td>${customerMember.payType}</td>
					<td>${customerMember.shippingStat}</td>
					<td>${customerMember.deptInCharge}</td>
					<td>${customerMember.personInCharge}</td>
					<td>${customerMember.adminAccount}</td>
					<!-- freemarker 조건문에서 값을 비교할 때, == 를 사용하지 않고 = 를 사용
						 그리고 if문 안에서 ${customerMember.memId}가 아닌 customerMember.memId 식으로 사용
					-->
					<#if customerMember.shippingQuantity = '유'>
						<td><a href="" class="a_be blue">${customerMember.shippingQuantity}</a></td>
					<#elseif customerMember.shippingQuantity = '무'>
						<td><a href="">${customerMember.shippingQuantity}</a></td>
					</#if>
					<td><a href="${rc.contextPath}/customerMemberInfo.do" class="btn sm btn_skyBlue">수정</a></td>
				</tr>
		    </#list>
		</tbody>
	</table>
	<!-- 검색 결과 table -->
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

	<!-- layer popup -->
	<div class="layerpopup_wrap w300">
		<div class="title_box">
			<a class="closed"><span class="blind">닫기</span></a>
		</div>
		<table class="tb_list2_a">
			<colgroup>
				<col style="width: 50%">
				<col style="width: 50%">
			</colgroup>
			<tbody>
				<tr>
					<th>SMS</th>
					<td>30,452</td>
				</tr>
				<tr>
					<th>LMS</th>
					<td>30,452</td>
				</tr>
				<tr>
					<th>MMS</th>
					<td>30,452</td>
				</tr>
				<tr>
					<th>VMS</th>
					<td>30,452</td>
				</tr>
				<tr>
					<th>FAX</th>
					<td>30,452</td>
				</tr>
				<tr>
					<th>알림톡</th>
					<td>1,231,222</td>
				</tr>
				<tr>
					<th>친구(T)</th>
					<td>25,230</td>
				</tr>
				<tr>
					<th>친구(I)</th>
					<td>-</td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- //layer popup -->
</div>
<!-- //contents -->

</@page.base>




