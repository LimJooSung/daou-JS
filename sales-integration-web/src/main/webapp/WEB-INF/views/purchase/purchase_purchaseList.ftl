<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 매입대사' />

<@page.base pageTitle>

<#include '/include/purchase-left-menu.ftl'>
<!-- contents -->
<div class="container_r">    
   	<!-- title -->
   	<div class="title_b">
   		<em></em>
   		<h2>매입대사</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">매출/매입관리</a> > 
			<a href="">매입관리</a>> 
			<a href="">매입대사</a>
		</blockquote>
	</div>
	<!-- //title -->
	
	<!-- 검색 -->
	<table class="tb_list_b">
		<colgroup>
			<col style="">
			<col style="">
			<col style="width:30%">
			<col style="">
		</colgroup>
		<tr>
			<th><b class="txt_c_red">*</b> 청구 월</th>
			<th>담당부서</th>
			<th>매입처</th>
			<th rowspan="2" class="align_l"><a href="#" class="btn_sch_black r3">검색</a></th>
		</tr>
		<tr>
			<td>
				<select class="w100">
					<option value="">2017</option>
				</select> 년
				<select class="w80">
					<option value="">2017</option>
				</select> 월					
			</td>
			<td>
				<select class="w100">
					<option value="">전체</option>
				</select>                
			</td>
			<td>
				<select class="w100">
					<option value="">전체</option>
				</select>                
			</td>        
		</tr>
	</table>
	<!-- 검색 -->

	<div class="cont_area p100">
		<div class="mr_15 f_l p40">
			<table class="tb_list2_a">
				<colgroup>
					<col style="width:30%">
					<col style="width:70%">
				</colgroup>
				<tbody>
					<tr>
						<th>MSG1</th>
						<td>123,234,233원</td>
					</tr>
					<tr>
						<th>MSG2</th>
						<td>123,234,233원</td>
					</tr>				
				</tbody>
			</table>
		</div>
		<div class="f_l p50">
			<table class="tb_list2_a">
				<colgroup>
					<col style="width:12.5%">
					<col style="width:12.5%">
					<col style="width:12.5%">
					<col style="width:12.5%">
					<col style="width:12.5%">
					<col style="width:12.5%">
					<col style="width:12.5%">
					<col style="width:12.5%">
				</colgroup>
				<tbody>
					<tr>
						<th>SMS</th>
						<td>10,000,000</td>
						<th>URL</th>
						<td>10,000</td>
						<th>LMS</th>
						<td>10,000,000</td>
						<th>MMS</th>
						<td>10,000,000</td>						
					</tr>
					<tr>
						<th>SMS</th>
						<td>10,000,000</td>
						<th>URL</th>
						<td>10,000</td>
						<th>LMS</th>
						<td>10,000,000</td>
						<th>MMS</th>
						<td>10,000,000</td>						
					</tr>					
				</tbody>
			</table>
		</div>
	</div>
		
	<!-- button -->
	<p class="f_r mb_15">
		<a href="" class="btn md btn_blue">저장</a>
		<a href="" class="btn md btn_green">excel</a>
	</p>
	<!-- //button -->
	
	<!-- 스크롤 넓이값 늘림 -->
	<div class="clr scroll_y">
		<table class="tb_list_b p200">
			<colgroup>
				<col style="width:5%">
				<col style="width:6%">
				<col style="width:6.5%">
				<col style="width:6.5%">
				<col style="width:6.5%">
				<col style="width:6.5%">
				<col style="width:6.5%">
				<col style="width:6.5%">
				<col style="width:6.5%">
				<col style="width:6.5%">
				<col style="width:6.5%">
				<col style="width:6.5%">
				<col style="width:6.5%">
				<col style="width:5%">
				<col style="width:5%">
				<col style="width:6%">							
			</colgroup>
			<thead>
				<tr>
					<th rowspan="2">매입처</th>
					<th rowspan="2">유형</th>
					<th colspan="2">1팀</th>
					<th colspan="2">2팀</th>
					<th colspan="2">그외(컴사,공통)</th>
					<th colspan="2">계</th>
					<th colspan="2">청구내역</th>
					<th colspan="2">차이</th>
					<th rowspan="2">평균 매입단가</th>
					<th rowspan="2">특이사항</th>
				</tr>				
				<tr>
					<th>건수</th>
					<th>금액</th>
					<th>건수</th>
					<th>금액</th>
					<th>건수</th>
					<th>금액</th>
					<th>건수</th>
					<th>금액</th>
					<th>건수</th>
					<th>금액</th>
					<th>건수</th>
					<th>금액</th>					
				</tr>
			</thead>
			<tbody>
				<!-- 여기서부터 반복 
					 (원래는 Controller를 거쳐 list를 받아와 해당 정보를 출력하는 것)
					 이지만 출력되는 정보가 많이 달라서 일단은 그냥 두기로 함
				-->
				<tr>
					<td rowspan="5">SKT</td>
					<td>S</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>111</td>
					<td>22222</td>
					<td>200,000,000</td>
					<td>1,400,000,000</td>
					<td><input type="text" class="p80"></td>
					<td><input type="text" class="p80"></td>
					<td>-500</td>
					<td>-3,500</td>
					<td>7</td>
					<td><input type="text" class="p80"></td>
				</tr>
				<tr>
					<td>U</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>111</td>
					<td>22222</td>
					<td>200,000,000</td>
					<td>1,400,000,000</td>
					<td><input type="text" class="p80"></td>
					<td><input type="text" class="p80"></td>
					<td>-500</td>
					<td>-3,500</td>
					<td>7</td>
					<td><input type="text" class="p80"></td>
				</tr>
				<tr>
					<td>L</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>111</td>
					<td>22222</td>
					<td>200,000,000</td>
					<td>1,400,000,000</td>
					<td><input type="text" class="p80"></td>
					<td><input type="text" class="p80"></td>
					<td>-500</td>
					<td>-3,500</td>
					<td>7</td>
					<td><input type="text" class="p80"></td>
				</tr>
				<tr>
					<td>M</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>111</td>
					<td>22222</td>
					<td>200,000,000</td>
					<td>1,400,000,000</td>
					<td><input type="text" class="p80"></td>
					<td><input type="text" class="p80"></td>
					<td>-500</td>
					<td>-3,500</td>
					<td>7</td>
					<td><input type="text" class="p80"></td>	
				</tr>
				<tr class="tr_blue">
					<td><b>계</b></td>
					<td></td>
					<td>700,000,000</td>
					<td></td>
					<td>700,000,000</td>
					<td></td>
					<td>22222</td>
					<td>200,200,222</td> 
					<td>1,400,000,000</td>
					<td>-711</td>
					<td></td>
					<td></td>
					<td>-1,000</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td rowspan="5">KT</td>
					<td>S</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>111</td>
					<td>22222</td>
					<td>200,000,000</td>
					<td>1,400,000,000</td>
					<td><input type="text" class="p80"></td>
					<td><input type="text" class="p80"></td>
					<td>-500</td>
					<td>-3,500</td>
					<td>7</td>
					<td><input type="text" class="p80"></td>
				</tr>
				<tr>
					<td>U</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>111</td>
					<td>22222</td>
					<td>200,000,000</td>
					<td>1,400,000,000</td>
					<td><input type="text" class="p80"></td>
					<td><input type="text" class="p80"></td>
					<td>-500</td>
					<td>-3,500</td>
					<td>7</td>
					<td><input type="text" class="p80"></td>
				</tr>
				<tr>
					<td>L</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>111</td>
					<td>22222</td>
					<td>200,000,000</td>
					<td>1,400,000,000</td>
					<td><input type="text" class="p80"></td>
					<td><input type="text" class="p80"></td>
					<td>-500</td>
					<td>-3,500</td>
					<td>7</td>
					<td><input type="text" class="p80"></td>
				</tr>
				<tr>
					<td>M</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>111</td>
					<td>22222</td>
					<td>200,000,000</td>
					<td>1,400,000,000</td>
					<td><input type="text" class="p80"></td>
					<td><input type="text" class="p80"></td>
					<td>-500</td>
					<td>-3,500</td>
					<td>7</td>
					<td><input type="text" class="p80"></td>	
				</tr>
				<tr class="tr_blue">
					<td><b>계</b></td>
					<td></td>
					<td>700,000,000</td>
					<td></td>
					<td>700,000,000</td>
					<td></td>
					<td>22222</td>
					<td>200,200,222</td>
					<td>1,400,000,000</td>
					<td>-711</td>
					<td></td>
					<td></td>
					<td>-1,000</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td rowspan="5">LGT</td>
					<td>S</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>111</td>
					<td>22222</td>
					<td>200,000,000</td>
					<td>1,400,000,000</td>
					<td><input type="text" class="p80"></td>
					<td><input type="text" class="p80"></td>
					<td>-500</td>
					<td>-3,500</td>
					<td>7</td>
					<td><input type="text" class="p80"></td>
				</tr>
				<tr>
					<td>U</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>111</td>
					<td>22222</td>
					<td>200,000,000</td>
					<td>1,400,000,000</td>
					<td><input type="text" class="p80"></td>
					<td><input type="text" class="p80"></td>
					<td>-500</td>
					<td>-3,500</td>
					<td>7</td>
					<td><input type="text" class="p80"></td>
				</tr>
				<tr>
					<td>L</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>111</td>
					<td>22222</td>
					<td>200,000,000</td>
					<td>1,400,000,000</td>
					<td><input type="text" class="p80"></td>
					<td><input type="text" class="p80"></td>
					<td>-500</td>
					<td>-3,500</td>
					<td>7</td>
					<td><input type="text" class="p80"></td>
				</tr>
				<tr>
					<td>M</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>100,000,000</td>
					<td>700,000,000</td>
					<td>111</td>
					<td>22222</td>
					<td>200,000,000</td>
					<td>1,400,000,000</td>
					<td><input type="text" class="p80"></td>
					<td><input type="text" class="p80"></td>
					<td>-500</td>
					<td>-3,500</td>
					<td>7</td>
					<td><input type="text" class="p80"></td>	
				</tr>
				<tr class="tr_blue">
					<td><b>계</b></td>
					<td></td>
					<td>700,000,000</td>
					<td></td>
					<td>700,000,000</td>
					<td></td>
					<td>22222</td>
					<td>200,200,222</td>
					<td>1,400,000,000</td>
					<td>-711</td>
					<td></td>
					<td></td>
					<td>-1,000</td>
					<td></td>
					<td></td>
				</tr>																
			</tbody>
		</table>
	</div>
	<!-- //스크롤 넓이값 늘림 -->		
</div>
<!-- //contents -->

</@page.base>




