<#import "/layout/page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 템플릿/이미지 관리' />

<@page.base pageTitle>

<#include '/include/customer-left-menu.ftl'>
<!-- contents -->
<div class="container_r">
   	<!-- title -->
   	<div class="title_b">
   		<em></em>
   		<h2>템플릿/이미지 관리</h2>
		<blockquote class="txt_bul_bar">
			<a href="">홈</a> > 
			<a href="">고객 관리</a> > 
			<a href="">카카오톡 비즈메시지</a> > 
			<a href="">템플릿/이미지 관리</a>
		</blockquote>
	</div>
	<!-- //title -->
	
	<!-- tab -->
	<ul class="tab_d">
		<li><a class="active">알림톡 템플릿</a></li>
		<li><a>친구톡 이미지</a></li>
	</ul>		
	<!-- //tab -->			
	
	<!-- tab_알림톡 템플릿 관리 -->
	<!-- message -->
	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>플러스친구 ID/템플릿 그룹의 템플릿 현황을 조회, 등록합니다.</li>
			<li>등록 템플릿은 검수요청 가능합니다.</li>
		</ul>					
	</div>
	<!-- //message -->		
	
	<!-- 메세징 ID, 서비스 검색 -->
	<div class="box_grey box_search">
		<div class="form_group">
			<p class="align_c"> 
				<select class="w100 mr_15">
					<option value="">메세징 ID</option>
				</select>
				<input type="text" class="w200" id="messageid" />
				<label class="bul ml_15 mr_15">서비스</label>
				<label for="bizppurioRadios"><input name="bizppurioRadios" id="bizppurioRadios" type="radio" checked="" value="option1"> 비즈뿌리오</label>
				<label class="mr_15" for="ufitRadios"><input name="ufitRadios" id="ufitRadios" type="radio" value="option2"> 유핏</label>
				<a href="#" class="btn_sm_sch_black r3">검색</a>	
			</p>	
		</div>		
	</div>
	<!-- //메세징 ID, 서비스 검색 -->

	<!-- button -->
	<div class="align_r mb_15">
		<a href="${rc.contextPath}/customerKakaoBizTempletApplyRegist.do" class="btn md btn_blue">등록</a>
		<a href="" class="btn md btn_gray">삭제</a>
	</div>
	<!-- //button -->
		
	<div class="scroll h400">
		<!-- 알림톡 템플릿 관리 리스트 table -->
		<table class="tb_list_b">
			<colgroup>
				<col style="width:10%">
				<col style="width:13%">
				<col style="width:7%">
				<col style="width:7%">
				<col style="width:20%">
				<col style="width:8%">
				<col style="width:8%">
				<col style="width:9%">
				<col style="width:15%">
				<col style="width:3%">
			</colgroup>
			<thead>
				<tr>
					<th>메세징 ID</th>
					<th>플러스 ID/그룹</th>
					<th>업체명/이름</th>
					<th>서비스</th>
					<th>템플릿 코드</th>
					<th>템플릿 명</th>
					<th>버튼 정보</th>
					<th>검수 상태<br />
						<select id="select" class="w80">
							<option value="1">1</option>
						</select>																		
					</th>
					<th>등록일 <a href="" class="btn_vsm mr_3"><span class="ico_up"></span></a><a href="" class="btn_vsm"><span class="ico_down"></span></a></th>
					<th><input type="checkbox" /></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>gogs76</td>
					<td>@수지닷컴</td>
					<td>㈜수지닷컴</td>
					<td>유핏</td>
					<td>ufit_2017091511154300043679033</td>
					<td><a href="" class="btn_sm_blue">회원가입</a></td>
					<td>-</td>
					<td>반려</td>
					<td>2017.09.15</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>gogs76</td>
					<td>@수지닷컴</td>
					<td>㈜수지닷컴</td>
					<td>유핏</td>
					<td>ufit_2017091511154300043679033</td>
					<td><a href="" class="btn_sm_blue">회원가입</a></td>
					<td>-</td>
					<td>반려</td>
					<td>2017.09.15</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>gogs76</td>
					<td>@수지닷컴</td>
					<td>㈜수지닷컴</td>
					<td>유핏</td>
					<td>ufit_2017091511154300043679033</td>
					<td><a href="" class="btn_sm_skyBlue">포인트안내</a></td>
					<td>-</td>
					<td>반려</td>
					<td>2017.09.15</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>gogs76</td>
					<td>@수지닷컴</td>
					<td>㈜수지닷컴</td>
					<td>유핏</td>
					<td>ufit_2017091511154300043679033</td>
					<td><a href="" class="btn_sm_blue">회원가입</a></td>
					<td>-</td>
					<td>반려</td>
					<td>2017.09.15</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>gogs76</td>
					<td>@수지닷컴</td>
					<td>㈜수지닷컴</td>
					<td>유핏</td>
					<td>ufit_2017091511154300043679033</td>
					<td><a href="" class="btn_sm_skyBlue">배송조회</a></td>
					<td>-</td>
					<td>반려</td>
					<td>2017.09.15</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>gogs76</td>
					<td>@수지닷컴</td>
					<td>㈜수지닷컴</td>
					<td>유핏</td>
					<td>ufit_2017091511154300043679033</td>
					<td><a href="" class="btn_sm_blue">회원가입</a></td>
					<td>-</td>
					<td>반려</td>
					<td>2017.09.15</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>gogs76</td>
					<td>@수지닷컴</td>
					<td>㈜수지닷컴</td>
					<td>유핏</td>
					<td>ufit_2017091511154300043679033</td>
					<td><a href="" class="btn_sm_blue">회원가입</a></td>
					<td>-</td>
					<td>반려</td>
					<td>2017.09.15</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>gogs76</td>
					<td>@수지닷컴</td>
					<td>㈜수지닷컴</td>
					<td>유핏</td>
					<td>ufit_2017091511154300043679033</td>
					<td><a href="" class="btn_sm_skyBlue">배송조회</a></td>
					<td>-</td>
					<td>반려</td>
					<td>2017.09.15</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>gogs76</td>
					<td>@수지닷컴</td>
					<td>㈜수지닷컴</td>
					<td>유핏</td>
					<td>ufit_2017091511154300043679033</td>
					<td><a href="" class="btn_sm_skyBlue">포인트안내</a></td>
					<td>-</td>
					<td>반려</td>
					<td>2017.09.15</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>gogs76</td>
					<td>@수지닷컴</td>
					<td>㈜수지닷컴</td>
					<td>유핏</td>
					<td>ufit_2017091511154300043679033</td>
					<td><a href="" class="btn_sm_blue">회원가입</a></td>
					<td>-</td>
					<td>반려</td>
					<td>2017.09.15</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>gogs76</td>
					<td>@수지닷컴</td>
					<td>㈜수지닷컴</td>
					<td>유핏</td>
					<td>ufit_2017091511154300043679033</td>
					<td><a href="" class="btn_sm_blue">회원가입</a></td>
					<td>-</td>
					<td>반려</td>
					<td>2017.09.15</td>
					<td><input type="checkbox" /></td>
				</tr>					
			</tbody>
		</table>
		<!-- //알림톡 템플릿 관리 리스트 table -->
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
	<!-- //tab_알림톡 템플릿 관리 -->
	
	<!-- tab_친구톡 이미지 관리 -->
	<!-- message -->
	<div class="box_b3 mb_15">
		<ul class="txt_info">
			<li>사용자 ID의 이미지 현황을 조회, 등록합니다.</li>
			<li>등록 이후 수정이 불가능합니다.(삭제 후 재등록 가능)</li>
		</ul>					
	</div>
	<!-- //message -->
	
	<!-- 메세징 ID, 서비스 검색 -->
	<div class="box_grey box_search">
		<div class="form_group">
			<p class="align_c">
				<label class="bul mr_3" for="messaging">메세징 ID</label>
				<input type="text" class="w200" id="messaging" name="messaging">
				<label class="bul ml_30 mr_15">서비스</label>
				<label for="bizppurioRadios2"><input name="bizppurioRadios2" id="bizppurioRadios2" type="radio" checked="" value="option3"> 비즈뿌리오</label>
				<label class="mr_15" for="ufitRadios2"><input name="ufitRadios2" id="ufitRadios2" type="radio" value="option4"> 유핏</label>
				<a href="#" class="btn_sm_sch_black r3">검색</a>
			</p>
		</div>			
	</div>		
	<!-- //메세징 ID, 서비스 검색 -->

	<!-- button -->
	<div class="align_r mb_15">
		<a href="" class="btn md btn_blue mr_3">등록</a>
		<a href="" class="btn md btn_gray">삭제</a>
	</div>
	<!-- //button -->

	<div class="scroll h400">
		<!-- 친구톡 이미지 관리 table -->
		<table class="tb_list_b">
			<colgroup>
				<col style="width:12.5%">
				<col style="width:12.5%">
				<col style="width:12.5%">
				<col style="width:12.5%">
				<col style="width:16.5%">
				<col style="width:16.5%">
				<col style="width:12.5%">
				<col style="width:3.5%">
			</colgroup>
			<thead>
				<tr>
					<th>메세징 ID</th>
					<th>업체명/이름</th>
					<th>서비스</th>
					<th>제목</th>
					<th>링크</th>
					<th>이미지URL</th>
					<th>등록일 <a href="" class="btn_vsm mr_3"><span class="ico_up">오름차순</span></a><a href="" class="btn_vsm"><span class="ico_down">내림차순</span></a></th>
					<th><input type="checkbox"></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>gogs766</td>
					<td>(주)수지닷컴</td>
					<td>유핏</td>
					<td>교재 프로모션1</td>
					<td><a href="" class="a_be">http://sicon.com</a></td>
					<td><a href="" class="a_be">http://images1</a></td>
					<td>2017.12.26</td>
					<td><input type="checkbox"></td>
				</tr>
				<tr>
					<td>gogs766</td>
					<td>(주)수지닷컴</td>
					<td>유핏</td>
					<td>교재 프로모션1</td>
					<td><a href="" class="a_be">http://sicon.com</a></td>
					<td><a href="" class="a_be">http://images1</a></td>
					<td>2017.12.26</td>
					<td><input type="checkbox"></td>
				</tr>
				<tr>
					<td>gogs766</td>
					<td>(주)수지닷컴</td>
					<td>유핏</td>
					<td>교재 프로모션1</td>
					<td><a href="" class="a_be">http://sicon.com</a></td>
					<td><a href="" class="a_be">http://images1</a></td>
					<td>2017.12.26</td>
					<td><input type="checkbox"></td>
				</tr>
				<tr>
					<td>gogs766</td>
					<td>(주)수지닷컴</td>
					<td>유핏</td>
					<td>교재 프로모션1</td>
					<td><a href="" class="a_be">http://sicon.com</a></td>
					<td><a href="" class="a_be">http://images1</a></td>
					<td>2017.12.26</td>
					<td><input type="checkbox"></td>
				</tr>
				<tr>
					<td>gogs766</td>
					<td>(주)수지닷컴</td>
					<td>유핏</td>
					<td>교재 프로모션1</td>
					<td><a href="" class="a_be">http://sicon.com</a></td>
					<td><a href="" class="a_be">http://images1</a></td>
					<td>2017.12.26</td>
					<td><input type="checkbox"></td>
				</tr>
				<tr>
					<td>gogs766</td>
					<td>(주)수지닷컴</td>
					<td>유핏</td>
					<td>교재 프로모션1</td>
					<td><a href="" class="a_be">http://sicon.com</a></td>
					<td><a href="" class="a_be">http://images1</a></td>
					<td>2017.12.26</td>
					<td><input type="checkbox"></td>
				</tr>
				<tr>
					<td>gogs766</td>
					<td>(주)수지닷컴</td>
					<td>유핏</td>
					<td>교재 프로모션1</td>
					<td><a href="" class="a_be">http://sicon.com</a></td>
					<td><a href="" class="a_be">http://images1</a></td>
					<td>2017.12.26</td>
					<td><input type="checkbox"></td>
				</tr>
				<tr>
					<td>gogs766</td>
					<td>(주)수지닷컴</td>
					<td>유핏</td>
					<td>교재 프로모션1</td>
					<td><a href="" class="a_be">http://sicon.com</a></td>
					<td><a href="" class="a_be">http://images1</a></td>
					<td>2017.12.26</td>
					<td><input type="checkbox"></td>
				</tr>
				<tr>
					<td>gogs766</td>
					<td>(주)수지닷컴</td>
					<td>유핏</td>
					<td>교재 프로모션1</td>
					<td><a href="" class="a_be">http://sicon.com</a></td>
					<td><a href="" class="a_be">http://images1</a></td>
					<td>2017.12.26</td>
					<td><input type="checkbox"></td>
				</tr>
				<tr>
					<td>gogs766</td>
					<td>(주)수지닷컴</td>
					<td>유핏</td>
					<td>교재 프로모션1</td>
					<td><a href="" class="a_be">http://sicon.com</a></td>
					<td><a href="" class="a_be">http://images1</a></td>
					<td>2017.12.26</td>
					<td><input type="checkbox"></td>
				</tr>
				<tr>
					<td>gogs766</td>
					<td>(주)수지닷컴</td>
					<td>유핏</td>
					<td>교재 프로모션1</td>
					<td><a href="" class="a_be">http://sicon.com</a></td>
					<td><a href="" class="a_be">http://images1</a></td>
					<td>2017.12.26</td>
					<td><input type="checkbox"></td>
				</tr>
				<tr>
					<td>gogs766</td>
					<td>(주)수지닷컴</td>
					<td>유핏</td>
					<td>교재 프로모션1</td>
					<td><a href="" class="a_be">http://sicon.com</a></td>
					<td><a href="" class="a_be">http://images1</a></td>
					<td>2017.12.26</td>
					<td><input type="checkbox"></td>
				</tr>
				<tr>
					<td>gogs766</td>
					<td>(주)수지닷컴</td>
					<td>유핏</td>
					<td>교재 프로모션1</td>
					<td><a href="" class="a_be">http://sicon.com</a></td>
					<td><a href="" class="a_be">http://images1</a></td>
					<td>2017.12.26</td>
					<td><input type="checkbox"></td>
				</tr>
				<tr>
					<td>gogs766</td>
					<td>(주)수지닷컴</td>
					<td>유핏</td>
					<td>교재 프로모션1</td>
					<td><a href="" class="a_be">http://sicon.com</a></td>
					<td><a href="" class="a_be">http://images1</a></td>
					<td>2017.12.26</td>
					<td><input type="checkbox"></td>
				</tr>
				<tr>
					<td>gogs766</td>
					<td>(주)수지닷컴</td>
					<td>유핏</td>
					<td>교재 프로모션1</td>
					<td><a href="" class="a_be">http://sicon.com</a></td>
					<td><a href="" class="a_be">http://images1</a></td>
					<td>2017.12.26</td>
					<td><input type="checkbox"></td>
				</tr>					
			</tbody>
		</table>
		<!-- //친구톡 이미지 관리 table -->
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
	<!-- //tab_친구톡 이미지 관리 -->
</div>
<!-- //contents -->

</@page.base>




