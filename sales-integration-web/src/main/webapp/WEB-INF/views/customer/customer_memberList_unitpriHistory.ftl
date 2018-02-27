<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 단가 변경 내역' />

<@page.base pageTitle>

<#include '/include/customer-left-menu.ftl'>
<!-- contents -->
<div class="container_r">    
   	<!-- title -->
   	<div class="title_b">
   		<em></em>
   		<h2>단가 변경 내역</h2>
		<blockquote class="txt_bul_bar">
			<a href="${rc.contextPath}/goHome.do">홈</a> > 
			<a href="">고객 관리</a> > 
			<a href="">단가 변경 내역</a>
		</blockquote>
	</div>
	<!-- //title -->
	
	<table class="tb_list_b">
		<colgroup>
			<col style="width:18%">
			<col style="width:18%">
			<col style="width:18%">
			<col style="width:28%">
			<col style="width:18%">
		</colgroup>
		<thead>
			<tr>
				<th>품목<br />
					<select class="w80">
						<option value="1">1</option>
					</select>
				</th>
				<th>발송 범위</th>
				<th>단가 (SKT-KT-LGU-ETC))</th>
				<th>적용 기간 <a href="" class="btn_vsm mr_3"><span class="ico_up">오름차순</span></a><a href="" class="btn_vsm"><span class="ico_down">내림차순</span></a></th>
				<th>등록일 <a href="" class="btn_vsm mr_3"><span class="ico_up">오름차순</span></a><a href="" class="btn_vsm"><span class="ico_down">내림차순</span></a></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>SMS</td>
				<td>1 ~ 1,000</td>
				<td>15\</td>
				<td>2016.01.01~2017.11.31</td>
				<td>2015.12.25</td>
			</tr>
			<tr>
				<td>SMS</td>
				<td>1 ~ 1,000</td>
				<td>15\</td>
				<td>2016.01.01~2017.11.31</td>
				<td>2015.12.25</td>
			</tr>
			<tr>
				<td>LMS</td>
				<td>1 ~ 1,000</td>
				<td>15\</td>
				<td>2016.01.01~2017.11.31</td>
				<td>2015.12.25</td>
			</tr>
			<tr>
				<td>SMS</td>
				<td>1 ~ 1,000</td>
				<td>15\</td>
				<td>2016.01.01~2017.11.31</td>
				<td>2015.12.25</td>
			</tr>
			<tr>
				<td>SMS</td>
				<td>1 ~ 1,000</td>
				<td>15\</td>
				<td>2016.01.01~2017.11.31</td>
				<td>2015.12.25</td>
			</tr>
			<tr>
				<td>LMS</td>
				<td>1 ~ 1,000</td>
				<td>15\</td>
				<td>2016.01.01~2017.11.31</td>
				<td>2015.12.25</td>
			</tr>
			<tr>
				<td>LMS</td>
				<td>1 ~ 1,000</td>
				<td>15\</td>
				<td>2016.01.01~2017.11.31</td>
				<td>2015.12.25</td>
			</tr>
			<tr>
				<td>SMS</td>
				<td>1 ~ 1,000</td>
				<td>15\</td>
				<td>2016.01.01~2017.11.31</td>
				<td>2015.12.25</td>
			</tr>
			<tr>
				<td>SMS</td>
				<td>1 ~ 1,000</td>
				<td>15\</td>
				<td>2016.01.01~2017.11.31</td>
				<td>2015.12.25</td>
			</tr>
			<tr>
				<td>LMS</td>
				<td>1 ~ 1,000</td>
				<td>15\</td>
				<td>2016.01.01~2017.11.31</td>
				<td>2015.12.25</td>
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
	
	<!-- 하단 버튼 -->
	<div class="btn_area mt_15">
		<a href="#" class="btn_lg_blue">확인</a>
	</div>
	<!-- //하단 버튼 -->
</div>
<!-- //contents -->

</@page.base>


