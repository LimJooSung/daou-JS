<!-- customer sidebar -->
<div class="sidebar">
	<ul class="nav">
		<li class="menu"><a href="${rc.contextPath}/customerMemberList.do">회원리스트</a></li>
		<li class="menu"><a href="${rc.contextPath}/customerBeforeList.do">승인 전 회원리스트</a></li>
		<li class="menu"><a href="${rc.contextPath}/customerOutmemberList.do">해지고객 리스트</a></li>
		<li class="menu"><a href="${rc.contextPath}/customerCreditManagement.do">여신 관리</a></li>
		<li class="menu"><a href="#">발신번호 관리<i></i></a>
			<ul class="nav_second">
				<li><a href="${rc.contextPath}/customerUserCallerbookSearch.do">발신번호 조회</a></li>
				<li><a href="${rc.contextPath}/customerUserCallerbook.do">발신번호 승인</a></li>
				<li><a href="${rc.contextPath}/customerUserCallerbookLimit.do">발신번호 한도</a></li>
				<li><a href="${rc.contextPath}/customerUserCallerbookManager.do">발신번호 담당자</a></li>
				<li><a href="${rc.contextPath}/customerUserCallerbookException.do">예외사업자 관리</a></li>
				<li><a href="${rc.contextPath}/customerUserCallerbookFaxblock.do">FAX 차단 통계</a></li>
			</ul></li>
		<li class="menu"><a href="#">카카오톡 비즈메시지<i></i></a>
			<ul class="nav_second">
				<li><a href="${rc.contextPath}/customerKakaoBizSentProfile.do">발신프로필 관리</a></li>
				<li><a href="${rc.contextPath}/customerKakaoBizTempletApply.do">템플릿/이미지 관리</a></li>
			</ul></li>
		<li class="menu"><a href="${rc.contextPath}/customerManualDeposit.do">수동 입출금</a></li>
		<li class="menu"><a href="${rc.contextPath}/customerBuyeradmin.do">매입처 관리</a></li>
	</ul>
</div>
<!-- //sidebar -->