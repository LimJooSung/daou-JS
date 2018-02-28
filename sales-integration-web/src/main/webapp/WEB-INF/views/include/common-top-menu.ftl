<!-- left menubar 추출 스크립트 -->
<#--<script>
	$(document).ready(function() {
		// top 메뉴바 요소를 클릭했을 때
		$(".nav_second").click(function() {
			var selectedVal = $(this).text();
			//document.getElementById('sidebar').style.display = "block"; <!--보이기
			//e.preventDefault();
			if (selectedVal == "영업관리") {
				// 선택된 요소에 해당하는 sidebar를 html에 출력
				var info = "";
				//info += " <div class='sidebar'> ";
				info += " <ul class='nav'> ";
				info += " 	<li class='menu'><a href='#'>실적관리<i></i></a> ";
				info += " 		<ul class='nav_second'> ";
				info += " 			<li><a href='${rc.contextPath}/salesPerformanceAdminTeam.do'>실적 조회</a></li> ";
				info += " 			<li><a href='${rc.contextPath}/salesReferenceRoom.do'>실적 자료실</a></li> ";
				info += " 		</ul></li> ";
				info += " 	<li class='menu'><a href='${rc.contextPath}/salesPawn.do'>담보관리</a></li> ";
				info += " </ul> ";
				//info += " </div>";
				$(".sidebar").html(info); //.html(): Clean HTML inside and append
				//return false;
			}
		});
		// top 메뉴바-서브메뉴 요소를 클릭했을 때
		$(".sub_detail").click(function() {
			var selectedVal = $(this).text();
			//alert(selectedVal);
		});
		
		$("#logoutBtn").click(function() {
			if (!confirm("로그아웃 하시겠습니까?")) {
				return false;
			}
		});
	});
</script>-->

<script>
	$(document).ready(function() {
		$("#logoutBtn").click(function() {
			if (!confirm("로그아웃 하시겠습니까?")) {
				return false;
			}
		});
	});
</script>

<!-- menuTop -->
<div class="navbar_aa">
	<div class="nav">
		<h1>
			<a href="${rc.contextPath}/goHome.do"> 
				<img src="images/logo_bizppurio.png" alt="비즈뿌리오로고">
				<span class="f15">영업관리시스템</span>
			</a>
		</h1>
		<ul class="menu m6">
			<li><a href="${rc.contextPath}/salesPerformanceAdminMonth.do" class="nav_second">영업관리</a>
				<ul class="sub">
					<li></li>
					<li><a href="${rc.contextPath}/salesPerformanceAdminMonth.do" class="sub_detail">실적관리</a></li>
					<li><a href="${rc.contextPath}/salesPawn.do" class="sub_detail">담보관리</a></li>
				</ul></li>
			<li><a href="${rc.contextPath}/customerMemberList.do" class="nav_second">고객관리</a>
				<ul class="sub">
					<li></li>
					<li><a href="${rc.contextPath}/customerMemberList.do" class="sub_detail">회원리스트</a></li>
					<li><a href="${rc.contextPath}/customerBeforeList.do" class="sub_detail">승인 전 회원 리스트</a></li>
					<li><a href="${rc.contextPath}/customerOutmemberList.do" class="sub_detail">해지고객 리스트</a></li>
					<li><a href="${rc.contextPath}/customerCreditManagement.do" class="sub_detail">여신 관리</a></li>
					<li><a href="${rc.contextPath}/customerUserCallerbookSearch.do" class="sub_detail">발신번호 관리</a></li>
					<li><a href="${rc.contextPath}/customerKakaoBizSentProfile.do" class="sub_detail">카카오톡 비즈메시지</a></li>
					<li><a href="${rc.contextPath}/customerManualDeposit.do" class="sub_detail">수동 입출금</a></li>
					<li><a href="${rc.contextPath}/customerBuyeradmin.do" class="sub_detail">매입처 관리</a></li>
				</ul></li>
			<li><a href="#" class="nav_second">정산관리</a>
				<ul class="sub">
					<li></li>
					<li><a href="#">정산정보설정</a></li>
					<li><a href="#">선불</a></li>
					<li><a href="#">후불</a></li>
					<li><a href="#">영업대행사</a></li>
					<li><a href="#">환불</a></li>
					<li><a href="#">자동이체</a></li>
				</ul></li>
			<li><a href="${rc.contextPath}/purchaseReference.do" class="nav_second">매출/매입관리</a>
				<ul class="sub">
					<li></li>
					<li><a href="${rc.contextPath}/purchaseReference.do" class="sub_detail">매출조회</a></li>
					<li><a href="${rc.contextPath}/purchaseRevenueManagement.do" class="sub_detail">선수수익관리</a></li>
					<li><a href="${rc.contextPath}/purchaseAgencysalesManagement.do" class="sub_detail">영업대행사 매출</a></li>
					<li><a href="${rc.contextPath}/purchasePurchaseSearch.do" class="sub_detail">매입관리</a></li>
				</ul></li>
			<li><a href="${rc.contextPath}/statisticsAccountStatistics.do" class="nav_second">통계</a>
				<ul class="sub">
					<li></li>
					<li><a href="${rc.contextPath}/statisticsAccountStatistics.do" class="sub_detail">계정별 발송통계</a></li>
					<li><a href="${rc.contextPath}/statisticsLineStatistics.do" class="sub_detail">라인별 발송현황</a></li>
					<li><a href="${rc.contextPath}/statisticsSendWatch.do" class="sub_detail">발송추이</a></li>
					<li><a href="${rc.contextPath}/statisticsSendlistSearch.do" class="sub_detail">발송내역 조회</a></li>
				</ul></li>
			<li><a href="#" class="nav_second">기타</a>
				<ul class="sub">
					<li></li>
					<li><a href="#">ASP 관리</a></li>
					<li><a href="#">B2C 등록</a></li>
					<li><a href="#">스팸모니터링</a></li>
					<li><a href="#">게시물 관리</a></li>
					<li><a href="#">예약발송 취소</a></li>
					<li><a href="#">회원정보 수정</a></li>
					<li><a href="#">정산담당자 정보입력</a></li>
				</ul></li>
		</ul>
		<#if Session?exists>
			<div class="btn_box">
				<!--<a href="#" class="pw mr_3">비밀번호</a>-->
				<a href="${rc.contextPath}/logout.do" class="logout" id="logoutBtn">로그아웃</a>
			</div>
		<#else>
			<div class="btn_box">
				<!--<a href="#" class="pw mr_3">비밀번호</a>-->
				<a href="${rc.contextPath}/login.do" class="logout">로그인</a>
			</div>
		</#if>
		
	</div>
</div>
<!-- //menuTop -->

<!-- sales sidebar -->
<#--<div class="sidebar" id="sidebar" style="display:none"></div>-->
<!-- //sidebar -->