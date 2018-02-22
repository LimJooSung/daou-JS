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
   		<h2>발신프로필 관리</h2>
		<blockquote class="txt_bul_bar">
			<a href="">홈</a> > 
			<a href="">고객 관리</a> > 
			<a href="">카카오톡 비즈메시지</a> > 
			<a href="">발신프로필 관리</a>
		</blockquote>
	</div>
	<!-- //title -->
	
	<!-- tab -->
	<ul class="tab_d">
		<li><a class="active">발신프로필 등록</a></li>
		<li><a>발신프로필 연동</a></li>
	</ul>		
	<!-- //tab -->			
	
	<!-- tab_발신프로필 등록 -->
	<!-- message -->
	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>메세징 ID와 플러스친구ID를 매핑 등록/삭제합니다.</li>
			<li>매핑 삭제 시, 재매핑 가능합니다.</li>
			<li class="red">발신프로필의 템플릿 그룹을 지정합니다.(선택)</li>
		</ul>					
	</div>
	<!-- //message -->
	
	<!-- 메세징 ID, 서비스 검색 -->
	<div class="box_grey box_search">
		<div class="form_group">
			<p class="align_c">
				<select id="messageid" class="w100 mr_15">
					<option value="">메세징 ID</option>
				</select>
				<input type="text" class="w200" />
				<label class="bul ml_30 mr_15">서비스</label>
				<label for="bizppurioRadios"><input name="bizppurioRadios" id="bizppurioRadios" type="radio" checked="" value="option3"> 비즈뿌리오</label>
				<label class="mr_15" for="ufitRadios"><input name="ufitRadios" id="ufitRadios" type="radio" value="option4"> 유핏</label>
				<a href="#" class="btn_sm_sch_black r3">검색</a>
			</p>
		</div>			
	</div>
	<!-- //메세징 ID, 서비스 검색 -->
	
	<!-- button -->
	<div class="align_r mb_15">
		<a href="" class="btn_md_blue">등록</a>
		<a href="" class="btn_md_skyBlue">그룹 설정</a>
		<a href="" class="btn_md_gray">삭제</a>
	</div>
	<!-- //button -->

	<div class="scroll h400">
		<!-- 발신프로필 등록 list table -->
		<table class="tb_list_b">
		   <colgroup>
				<col style="width:13.2%">
				<col style="width:14.2%">
				<col style="width:15.2%">
				<col style="width:15.2%">
				<col style="width:18.2%">
				<col style="width:18.2%">
				<col style="width:5.2%">				
			</colgroup>
			<thead>
				<tr>
					<th>업체명/이름</th>
					<th>서비스</th>
					<th>메세징 ID</th>
					<th>플러스친구 ID</th>
					<th>템플릿 그룹<br />
						<select id="templetSelect" class="w100">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option> 
							<option value="4">4</option>
							<option value="5">5</option>
						</select>												
					</th>
					<th>등록일 <a href="" class="btn_vsm mr_3"><span class="ico_up">오름차순</span></a><a href="" class="btn_vsm"><span class="ico_down">내림차순</span></a></th>
					<th><input type="checkbox" /></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>다우기술</td>
					<td>비즈뿌리오</td>
					<td>daou</td>
					<td>@다우기술</td>
					<td>다우키움그룹</td>
					<td>2017.12.26</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>다우기술</td>
					<td>비즈뿌리오</td>
					<td>daou</td>
					<td>@다우기술</td>
					<td>다우키움그룹</td>
					<td>2017.12.26</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>다우기술</td>
					<td>비즈뿌리오</td>
					<td>daou</td>
					<td>@다우기술</td>
					<td>다우키움그룹</td>
					<td>2017.12.26</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>다우기술</td>
					<td>비즈뿌리오</td>
					<td>daou</td>
					<td>@다우기술</td>
					<td>다우키움그룹</td>
					<td>2017.12.26</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>다우기술</td>
					<td>비즈뿌리오</td>
					<td>daou</td>
					<td>@다우기술</td>
					<td>다우키움그룹</td>
					<td>2017.12.26</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>다우기술</td>
					<td>비즈뿌리오</td>
					<td>daou</td>
					<td>@다우기술</td>
					<td>다우키움그룹</td>
					<td>2017.12.26</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>다우기술</td>
					<td>비즈뿌리오</td>
					<td>daou</td>
					<td>@다우기술</td>
					<td>다우키움그룹</td>
					<td>2017.12.26</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>다우기술</td>
					<td>비즈뿌리오</td>
					<td>daou</td>
					<td>@다우기술</td>
					<td>다우키움그룹</td>
					<td>2017.12.26</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>다우기술</td>
					<td>비즈뿌리오</td>
					<td>daou</td>
					<td>@다우기술</td>
					<td>다우키움그룹</td>
					<td>2017.12.26</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>다우기술</td>
					<td>비즈뿌리오</td>
					<td>daou</td>
					<td>@다우기술</td>
					<td>다우키움그룹</td>
					<td>2017.12.26</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>다우기술</td>
					<td>비즈뿌리오</td>
					<td>daou</td>
					<td>@다우기술</td>
					<td>다우키움그룹</td>
					<td>2017.12.26</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>다우기술</td>
					<td>비즈뿌리오</td>
					<td>daou</td>
					<td>@다우기술</td>
					<td>다우키움그룹</td>
					<td>2017.12.26</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>다우기술</td>
					<td>비즈뿌리오</td>
					<td>daou</td>
					<td>@다우기술</td>
					<td>다우키움그룹</td>
					<td>2017.12.26</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>다우기술</td>
					<td>비즈뿌리오</td>
					<td>daou</td>
					<td>@다우기술</td>
					<td>다우키움그룹</td>
					<td>2017.12.26</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>다우기술</td>
					<td>비즈뿌리오</td>
					<td>daou</td>
					<td>@다우기술</td>
					<td>다우키움그룹</td>
					<td>2017.12.26</td>
					<td><input type="checkbox" /></td>
				</tr>					
			</tbody>
		</table>
		<!-- //발신프로필 등록 list table  -->			
	</div>
	
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
	<!-- //tab_발신프로필 등록 -->
	
	<!-- tab_발신프로필 연동 -->
	<!-- message -->
	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>비즈메세징 ID를 연동하여 발신프로필을 공유합니다.</li>
			<li>메인 계정– 공유될 계정 / 서브 계정- <span class="red">메인 계정의 것을 사용할 계정</span></li>
			<li class="red">연동 시, 서브 계정의 기존 발신프로필은 사용 불가합니다.</li>
		</ul>					
	</div>
	<!-- //message -->
	
	<!-- 메세징 ID, 서비스 검색 -->
	<div class="box_grey box_search">
		<div class="form_group">
			<p class="align_c">
				<label for="messageid2" class="bul mr_15">메세징 ID</label>
				<input type="text" class="w200" id="messageid2" />
				<a href="#" class="btn_sm_sch_black r3">검색</a>	
			</p>
		</div>			
	</div>
	<!-- //메세징 ID, 서비스 검색 -->
	
	<!-- button -->
	<div class="align_r mb_15">
		<a href="" class="btn_md_skyBlue mr_3">연동</a>
	</div>
	<!-- //button -->
	
	<div class="scroll h400">
		<table class="tb_list_b">
			<colgroup>
				<col style="width:25%">
				<col style="width:25%">
				<col style="width:25%">
				<col style="width:25%">
			</colgroup>
			<thead>
				<tr>
					<th colspan="2">메인 계정</th>
					<th colspan="2">서브 계정</th>
				</tr>
				<tr>
					<th>메세징 ID</th>
					<th>업체명</th>
					<th>메세징 ID</th>
					<th>업체명</th>
				</tr>
				<tr>
					<td>daou</td>
					<td>다우기술</td>
					<td>daou</td>
					<td>다우기술</td>
				</tr>
				<tr>
					<td>daou</td>
					<td>다우기술</td>
					<td>daou</td>
					<td>다우기술</td>
				</tr>
				<tr>
					<td>daou</td>
					<td>다우기술</td>
					<td>daou</td>
					<td>다우기술</td>
				</tr>
				<tr>
					<td>daou</td>
					<td>다우기술</td>
					<td>daou</td>
					<td>다우기술</td>
				</tr>
				<tr>
					<td>daou</td>
					<td>다우기술</td>
					<td>daou</td>
					<td>다우기술</td>
				</tr>
				<tr>
					<td>daou</td>
					<td>다우기술</td>
					<td>daou</td>
					<td>다우기술</td>
				</tr>
				<tr>
					<td>daou</td>
					<td>다우기술</td>
					<td>daou</td>
					<td>다우기술</td>
				</tr>
				<tr>
					<td>daou</td>
					<td>다우기술</td>
					<td>daou</td>
					<td>다우기술</td>
				</tr>
				<tr>
					<td>daou</td>
					<td>다우기술</td>
					<td>daou</td>
					<td>다우기술</td>
				</tr>
				<tr>
					<td>daou</td>
					<td>다우기술</td>
					<td>daou</td>
					<td>다우기술</td>
				</tr>
				<tr>
					<td>daou</td>
					<td>다우기술</td>
					<td>daou</td>
					<td>다우기술</td>
				</tr>
				<tr>
					<td>daou</td>
					<td>다우기술</td>
					<td>daou</td>
					<td>다우기술</td>
				</tr>
				<tr>
					<td>daou</td>
					<td>다우기술</td>
					<td>daou</td>
					<td>다우기술</td>
				</tr>
				<tr>
					<td>daou</td>
					<td>다우기술</td>
					<td>daou</td>
					<td>다우기술</td>
				</tr>
				<tr>
					<td>daou</td>
					<td>다우기술</td>
					<td>daou</td>
					<td>다우기술</td>
				</tr>
				<tr>
					<td>daou</td>
					<td>다우기술</td>
					<td>daou</td>
					<td>다우기술</td>
				</tr>
			</thead>
		</table>
	</div>
	
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

	<!-- //tab_발신프로필 연동 -->
</div>
<!-- //contents -->

</@page.base>




