<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 매출 조회' />

<@page.base pageTitle>

<#include '/include/purchase-left-menu.ftl'>
<!-- contents -->
<div class="container_r">    
   	<!-- title -->
   	<div class="title_b">
   		<em></em>
   		<h2>매출조회</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">매출/매입관리</a> > 
			<a href="">매출조회</a>
		</blockquote>
	</div>
	<!-- //title -->
	
	<!-- 타이틀 및 버튼 -->
	<div class="box mb_20">
		<h4 class="align_l">[후불 고객사 매출 상세 내역]</h4>
		<p class="f_r"><a href="" class="btn md btn_gray">목록</a></p>
	</div>
	<!-- //타이틀 및 버튼 -->
	
	<!-- 조회기간/사업자번호/고객사명 -->
	<div class="box">
		<span class="align_l"><span class="gray">조회 기간 : 2018년 01월 17일 ~ 2019년 01월 17일</span></span>
		<span class="align_c">
			<span class="mr_15"><b>사업자번호</b> : 111-222-3333</span>
			<span class="mr_15"><b>고객사명</b> : (주)제주어쩌고</span>
		</span>
		<span class="align_r f16"><b>매출 : 244,555원</b></span>
	</div>
	<!-- //조회기간/사업자번호/고객사명 -->
	
	<!-- button -->
	<p class="align_r mt_10"><a href="" class="btn md btn_green">excel</a></p>
	<!-- //button -->

	<!-- 기본 일 때 -->
	<table class="tb_list_b mt_10">
		<colgroup>
			<col style="">
			<col style="">
			<col style="">
			<col style="">
			<col style="">
			<col style="">
			<col style="">
			<col style="">				
		</colgroup>
		<thead>
			<tr>
				<th>No.</th>
				<th>서비스</th>
				<th>ID</th>
				<th>항목구분</th>
				<th>매출</th>
				<th>GP</th>
				<th>계산서 발행일</th>
				<th>E-mail</th>
			</tr>
		</thead>
		<tbody>
			<tr class="tr_red">
				<td colspan="8"><b>매출/GP합계</b></td>
			</tr>
			<tr>
				<td>1</td>
				<td>비즈뿌리오</td>
				<td>Ⓜ daou</td>
				<td>기타매출</td>
				<td></td>
				<td></td>
				<td rowspan="3"></td>
				<td rowspan="3"></td>
			</tr>
			<tr>
				<td>2</td>
				<td>비즈뿌리오</td>
				<td>Ⓜ daou</td>
				<td>계정 전체</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>3</td>
				<td>비즈뿌리오</td>
				<td>daou</td>
				<td>계정 전체</td>
				<td></td>
				<td></td>
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
	<!-- //기본 일 때 -->
	
	<!-- 그룹핑 일 때 -->
	<!-- 타이틀 및 버튼 -->
	<div class="box mb_20">
		<h4 class="align_l">[후불 고객사 매출 상세 내역]</h4>
		<p class="f_r"><a href="" class="btn md btn_gray">목록</a></p>
	</div>
	<!-- //타이틀 및 버튼 -->
	
	<!-- 조회기간/사업자번호/고객사명 -->
	<div class="box">
		<span class="align_l"><span class="gray">조회 기간 : 2018년 01월 17일 ~ 2019년 01월 17일</span></span>
		<span class="align_c">
			<span class="mr_15"><b>사업자번호</b> : 111-222-3333</span>
			<span class="mr_15"><b>고객사명</b> : (주)제주어쩌고</span>
		</span>
		<span class="align_r f16"><b>매출 : 244,555원</b></span>
	</div>
	<!-- //조회기간/사업자번호/고객사명 -->
	
	<div class="box">
		<ul class="tab_a r3 f_l mb_15">
			<li><a class="active">그룹1</a></li>
			<li class=""><a>그룹2</a></li>
			<li class=""><a>금액 체크 필요</a></li>
			<li class=""><a>그룹4</a></li>
		</ul>				
		<span class="f_r mb_15">
			<a href="" class="btn md btn_green">excel</a>
		</span>
	</div>
	
	<table class="tb_list_b">
		<colgroup>
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:10%">
		</colgroup>
		<thead>
			<tr>
				<th>그룹명</th>
				<th>No.</th>
				<th>서비스</th>
				<th>ID</th>
				<th>항목구분</th>
				<th>상세내역</th>
				<th>매출</th>
				<th>GP</th>
				<th>계산서 발행일</th>
				<th>E-mail</th>
			</tr>
		</thead>
		<tbody>
			<tr class="tr_red">
				<td colspan="10"><b>매출/GP합계</b></td>
			</tr>
			<tr>
				<td rowspan="9">그룹1</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td>기타매출</td>
				<td>포함여부 표시</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td rowspan="4">1</td>
				<td rowspan="4">비즈뿌리오</td>
				<td rowspan="4">Ⓜ abc_123</td>
				<td rowspan="4">Cinfo-code 선택</td>
				<td>aaaa</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>bbbb</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>					
			</tr>
			<tr>
				<td>cccc</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>					
			</tr>
			<tr>
				<td>dddd</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>					
			</tr>
			<tr>
				<td>2</td>
				<td>비즈뿌리오</td>
				<td>abc_1234</td>
				<td>계정 전체 선택</td>
				<td>-</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>3</td>
				<td>비즈뿌리오</td>
				<td>abc_1234</td>
				<td>계정 전체 선택</td>
				<td>-</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>4</td>
				<td>비즈뿌리오</td>
				<td>abc_1234</td>
				<td>계정 전체 선택</td>
				<td>-</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>5</td>
				<td>비즈뿌리오</td>
				<td>abc_1234</td>
				<td>계정 전체 선택</td>
				<td>-</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
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
	<!-- //그룹핑 일 때 -->
	
	<!-- 수기 정산 일 때 -->
	<!-- 타이틀 및 버튼 -->
	<div class="box mb_20">
		<h4 class="align_l">[후불 고객사 매출 상세 내역]</h4>
		<p class="f_r"><a href="" class="btn md btn_gray">목록</a></p>
	</div>
	<!-- //타이틀 및 버튼 -->
	
	<!-- 조회기간/사업자번호/고객사명 -->
	<div class="box">
		<span class="align_l"><span class="gray">조회 기간 : 2018년 01월 17일 ~ 2019년 01월 17일</span></span>
		<span class="align_c">
			<span class="mr_15"><b>사업자번호</b> : 111-222-3333</span>
			<span class="mr_15"><b>고객사명</b> : (주)제주어쩌고</span>
		</span>
		<span class="align_r f16"><b>매출 : 244,555원</b></span>
	</div>
	<!-- //조회기간/사업자번호/고객사명 -->
	
	<div class="box">		
		<span class="align_l f15"><b>입력 기준 : 발송 건 수</b></span>
		<span class="f_r">
			<a href="" class="btn md btn_green">excel</a>
		</span>
	</div>
	
	<table class="tb_list_b mt_15">
		<colgroup>
			<col style="">
			<col style="">
			<col style="">
			<col style="">
			<col style="">
			<col style="">
			<col style="">
		</colgroup>
		<thead>
			<tr>
				<th>서비스</th>
				<th>ID</th>
				<th>사업자번호</th>
				<th>매출</th>
				<th>GP</th>
				<th>계산서 발행일</th>
				<th>E-mail</th>
			</tr>
		</thead>
		<tbody>
			<tr class="tr_red">
				<td colspan="7"><b>매출/GP합계</b></td>
			</tr>
			<tr>
				<td>비즈뿌리오</td>
				<td></td>
				<td>등록된 사업자번호</td>
				<td>서비스 이용금액</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>비즈뿌리오</td>
				<td></td>
				<td>등록된 사업자번호</td>
				<td>서비스 이용금액</td>
				<td></td>
				<td></td>
				<td></td>
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
	
	<!-- //수기 정산 일 때 -->
</div>
<!-- //contents -->

</@page.base>




