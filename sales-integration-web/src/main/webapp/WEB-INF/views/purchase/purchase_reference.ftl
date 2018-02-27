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
	
	<!-- message -->
	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>조회기간은 매출 발생 기준입니다.</li>
			<li>매출 및 GP금액은 부가세 별도금액입니다.</li>
		</ul>					
	</div>
	<!-- //message -->
	
	<!-- 조회 -->
	<div class="box_grey box_search_l2">
		<div class="form_group">
			<p style="display:block">
				<label class="bul mr_15">조회기간 선택</label>
				<label for="monthRadios"><input name="monthRadios" id="monthRadios" type="radio" value="option3"> 월별</label>
				<label class="mr_15" for="termRadios"><input name="termRadios" id="termRadios" type="radio" checked="" value="option4"> 기간별</label>					
				<!-- 기간별 선택 시 -->
				<select class="w80">
					<option value="">2017</option>
				</select> 년
				<select class="w60">
					<option value="">00</option>
				</select> 월
				<select class="w60">
					<option value="">00</option>
				</select> 일 ~					
				<select class="w80">
					<option value="">2017</option>
				</select> 년
				<select class="w60">
					<option value="">00</option>
				</select> 월
				<select class="w60">
					<option value="">00</option>
				</select> 일				
				<span class="ml_10 f15">3일간</span>					
			</p>
			<p class="mt_10 mb_noline">
				<label for="input1" class="bul">고객사명</label>
				<input id="input1" type="text" placeholder="검색 내용 입력" class="mr_15">
				<label for="input2" class="bul">사업자번호</label>
				<input id="input2" type="text" placeholder="검색 내용 입력" class="mr_15">
				<label for="input3" class="bul">ID</label>
				<input id="input3" type="text" placeholder="검색 내용 입력">
			</p>
		</div>
		<div class="btn_box"><a href="${rc.contextPath}/purchaseItemsearchResult.do" class="btn_sch_black r3">조회</a></div>
	</div>
	<!-- //조회 -->
	
	<!-- 서비스/팀/담당자/계산서발행여부 등 선택 -->
	<div class="mt_15 mb_15">
		<p class="f_l">
			<label for="serviceSelect" class="mr_15">서비스
				<select class="w100" name="serviceSelect" id="serviceSelect">
					<option value="1">비즈뿌리오</option>
				</select>
			</label>
			<label for="teamSelect" class="mr_15">팀
				<select class="w100" name="teamSelect" id="teamSelect">
					<option value="1">MSG1</option>
				</select>
			</label>
			<label for="managerSelect" class="mr_15">담당자
				<select class="w100" name="managerSelect" id="managerSelect">
					<option value="1">김현진</option>
				</select>
			</label>								
			<label for="managerSelect2">계산서발행여부
				<select class="w200" name="managerSelect2" id="managerSelect2">
					<option value="1">미발행(B2C매출)</option>
				</select>
			</label>												
		</p>
		<div class="align_r">
			<a href="" class="btn md btn_green mr_3">다운로드</a>
			<a href="" class="btn md btn_skyBlue">상세보기</a>
		</div>
	</div>
	<!-- //서비스/팀/담당자/계산서발행여부 등 선택 -->
	
	<table class="tb_list_b">
		<colgroup>
			<col style="width:5%">
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:11%">
			<col style="width:11%">
			<col style="width:11%">
			<col style="width:11%">
			<col style="width:11%">
		</colgroup>
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>구분</th>
				<th>서비스</th>
				<th>고객사명</th>
				<th>사업자번호</th>
				<th>팀</th>
				<th>담당자</th>
				<th>매출</th>
				<th>GP(%)</th>
				<th>계산서</th>
			</tr>
		</thead>
		<tbody>
			<!-- 여기서부터 반복 
				 (원래는 Controller를 거쳐 list를 받아와 해당 정보를 출력하는 것)
			-->
			<#list 1..5 as i>
				<tr>
					<td><input type="checkbox"></td>
					<td><a href="${rc.contextPath}/purchaseReferencePrepaymDetail.do" class="a_be">선불</a></td>
					<td><a href="" class="a_be">비즈뿌리오</a></td>
					<td><a href="" class="a_be">AA</a></td>
					<td><a href="" class="a_be">123-23-3456</a></td>
					<td>메시징사업팀</td>
					<td>홍승도</td>
					<td>722,000원</td>
					<td>23,000원(10%)</td>
					<td>미발행(B2C매출)</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td><a href="${rc.contextPath}/purchaseReferencePostpayDetail.do" class="a_be">후불</a></td>
					<td><a href="" class="a_be">비즈뿌리오</a></td>
					<td><a href="" class="a_be">AA</a></td>
					<td><a href="" class="a_be">123-23-3456</a></td>
					<td>메시징사업팀</td>
					<td>홍승도</td>
					<td>722,000원</td>
					<td>23,000원(10%)</td>
					<td>발행완료</td>
				</tr>
			</#list>
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




