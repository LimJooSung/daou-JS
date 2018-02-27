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
	
	<!-- 조회 -->
	<div class="box_grey box_search_l3">
		<div class="form_group">
			<p>
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
				<span class="f15">3일간</span>					
			</p>
			<p>
				<label class="bul">기준일 선택</label>
				<select class="w80">
					<option value="">2017</option>
				</select> 년
				<select class="w60">
					<option value="">00</option>
				</select> 월
				<select class="w60">
					<option value="">00</option>
				</select> 일					
			</p>
			<p>
				<label for="select1" class="bul">서비스</label>
				<select id="select1" class="w110 mr_15">
					<option value="">서비스명</option>
				</select>
				<label for="select2" class="bul">팀</label>
				<select id="select2" class="w110 mr_15">
					<option value="">팀명</option>
				</select>
				<label for="select3" class="bul">담당자</label>
				<select id="select3" class="w110 mr_15">
					<option value="">담당자명</option>
				</select>
			</p>
		</div>
		<div class="btn_box"><a href="${rc.contextPath}/purchaseRevenueManagementConfirm.do" class="btn_sch_black r3">조회</a></div>
	</div>
	<!-- //조회 --> 
	
	<!-- 서비스/팀/담당자/계산서발행여부 등 선택 -->
	<div class="box_grey box_search">
		<div class="form_group">
			<p class="align_c">
				<label for="serviceSelect" class="bul mr_15">고객사명
					<input type="text" class="w150" name="serviceSelect" id="serviceSelect" placeholder="검색 내용 입력"> 
				</label>
				<label for="teamSelect" class="bul mr_15">사업자번호
					<input type="text" class="w150" name="teamSelect" id="teamSelect" placeholder="검색 내용 입력"> 				
				</label>
				<label for="managerSelect" class="bul mr_3">ID
					<input type="text" class="w150" name="managerSelect" id="managerSelect" placeholder="검색 내용 입력"> 				
				</label>
				<a href="" class="btn_sm_sch_black r3">검색</a>
			</p>
		</div>
	</div>
	<!-- //서비스/팀/담당자/계산서발행여부 등 선택 -->
				
	<table class="tb_list_b">
		<colgroup>
			<col style="">
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
				<th>ID</th>
				<th>담당자</th>
				<th>부서</th>
				<th>업체명</th>
				<th>서비스</th>
				<th>충전금액</th>
				<th>사용금액</th>
				<th>환불</th>
				<th>잔액</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>합계</td>
				<td></td>
				<td></td>
				<td></td>
				<td>1,775,000</td>
				<td>1,474,503</td>
				<td></td>
				<td></td>
				<td>190,000</td>
			</tr>
			<tr>
				<td>JPCO</td>
				<td>윤수지</td>
				<td>MSG1</td>
				<td>어쩌고어쩌고회사</td>
				<td>비즈뿌리오</td>
				<td>1,200,000</td>
				<td>928,000</td>
				<td></td>
				<td>85,124</td>
			</tr>
			<tr>
				<td>MIAEBOO</td>
				<td>한희나</td>
				<td>MSG2</td>
				<td>좋은회사</td>
				<td>유핏</td>
				<td>50,000</td>
				<td></td>
				<td></td>
				<td>50,000</td>
			</tr>
			<tr>
				<td>MIKEY</td>
				<td>한희나</td>
				<td>MSG2</td>
				<td>머니투데이</td>
				<td>비즈뿌리오</td>
				<td></td>
				<td></td>
				<td></td>
				<td>47,090</td>
			</tr>
			<tr>
				<td>MINI</td>
				<td>한희나</td>
				<td>MSG2</td>
				<td>이머니</td>
				<td>비즈뿌리오</td>
				<td></td>
				<td>24,862</td>
				<td></td>
				<td>2,045</td>
			</tr>
			<tr>
				<td>INCLUB</td>
				<td>한희나</td>
				<td>MSG2</td>
				<td>다우인큐브</td>
				<td>유핏</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>MANGO</td>
				<td>한희나</td>
				<td>MSG2</td>
				<td>소프트젠</td>
				<td>유핏</td>
				<td>500,000</td>
				<td>521,330</td>
				<td></td>
				<td>4,912</td>
			</tr>																												
		</tbody>
	</table>					
</div>
<!-- //contents -->

</@page.base>




