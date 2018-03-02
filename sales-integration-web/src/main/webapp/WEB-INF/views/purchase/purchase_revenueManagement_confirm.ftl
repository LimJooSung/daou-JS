<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 선수수익 관리' />

<@page.base pageTitle>

<#include '/include/purchase-left-menu.ftl'>
<!-- contents -->
<div class="container_r">    
   	<!-- title -->
   	<div class="title_b">
   		<em></em>
   		<h2>선수수익관리</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">매출/매입관리</a> > 
			<a href="">선수수익관리</a>
		</blockquote>
	</div>
	<!-- //title -->
	
	<!-- 조회기간/기준일/업체명 -->
	<div class="box">
		<p><span class="txt_bul_dot f15">조회 기간 : 2017. 10. 15  ~ 2017. 10. 25</span></p>
		<p><span class="txt_bul_dot f15">기준일 : 2018.01.18</span></p>
		<p><span class="txt_bul_dot f15">업체명(사업자번호) : 다우기술(220-81-02810)</span></p>
	</div>
	<div class="align_r mb_15">
		<a href="${rc.contextPath}/purchaseRevenueManagement.do" class="btn md btn_gray">이전으로</a>
	</div>
	<!-- //조회기간/기준일/업체명 -->
	
	<table class="tb_list_b mt_15">
		<colgroup>
			<col style="width:7.6%">
			<col style="width:7.6%">
			<col style="width:7.6%">
			<col style="width:7.6%">
			<col style="width:7.6%">
			<col style="width:7.6%">
			<col style="width:7.6%">
			<col style="width:7.6%">
			<col style="width:7.6%">
			<col style="width:7.6%">
			<col style="width:7.6%">
			<col style="width:7.6%">
			<col style="width:7.6%">
		</colgroup>
		<thead>
			<tr>
				<th rowspan="2">날짜</th>
				<th rowspan="2">충전금액(유상)</th>
				<th rowspan="2">충전금액(무상)</th>
				<th colspan="7">발송 건 수/사용금액(유상)</th>
				<th rowspan="2">사용금액(무상)</th>
				<th rowspan="2">환불금액</th>
				<th rowspan="2">잔액</th>
			</tr>
			<tr>
				<th>SMS</th>
				<th>LMS</th>
				<th>MMS</th>
				<th>FAX(IN)</th>
				<th>FAX(OUT)</th>
				<th>알림톡</th>
				<th>친구톡</th>
			</tr>
		</thead>
		<tbody>
			<tr class="tr_red">
				<td colspan="13"><b>합계</b></td>
			</tr>
			<tr>
				<td rowspan="2">2018-01-18</td>
				<td rowspan="2">90,909원</td>
				<td rowspan="2">-</td>
				<td>10</td>
				<td>-</td>
				<td>1</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td>30</td>
				<td rowspan="2">-</td>
				<td rowspan="2">-</td>
				<td rowspan="2">998,989원</td>
			</tr>
			<tr>
				<td>180</td>
				<td>-</td>
				<td>90</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td>360</td>
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




