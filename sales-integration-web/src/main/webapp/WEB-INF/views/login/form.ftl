<#import "/layout/login_page.ftl" as page>

<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#assign pageTitle='영업관리시스템 - 로그인' />

<@page.base pageTitle>

<!-- 로그인 유효성 검증 스크립트 -->
<script>
	// login form html코드와 javascript 코드의 결합도를 낮추기 위해 
	// 로그인 버튼에 준 id값을 이용하여 유효성 검사를 실행
	$(document).ready(function() {
		$("#login").click(function() {
			return checkForm();
		});
	});

	/* 공백 체크 함수 */
	function checkSpace(str) { 
		if (str.search(/\s/) != -1) {	// search() : 검색된 문자열의 위치값 반환
			return true; 				// 공백이 아닌 경우
		} else { 
			return false; 
		}
	}
	
	/* 특수 문자 체크 함수 */
	function checkSpecial(str) { 
		var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi; 
		if (special_pattern.test(str) == true) {	// test() : 찾는 문자열이 있으면 true 반환
			return true; 
		} else { 
			return false; 
		}
	}
	
	/* 숫자인지 여부 체크 함수 */
	function checkNumber(str) {
		var notNumber_pattern = /[^0-9]/;	// 숫자가 아닌 정규식 문자 저장
		if (notNumber_pattern.test(str) == true) {	// str에 숫자가 아닌 문자가 포함된 경우
			return false;
		} else {
			return true;
		}
	}
	
	/* 비밀번호 체크 함수 (8자 이상, 문자, 숫자, 특수문자 포함여부 체크) */
	function checkPassword(str) { 
		var num_pattern = /[0-9]/;		// 숫자 
		var char_pattern = /[a-zA-Z]/;	// 문자 
		var special_pattern = /[~!@#$%^&*()_+|<>?:{}]/;	// 특수문자 
		if (!num_pattern.test(str) || !char_pattern.test(str) || !special_pattern.test(str) || str.length < 8) {
			return false; 
		} else { 
			return true; 
		}
	}
	
	/* 전체적인 유효성 검증을 위한 함수 (위의 각 검증함수를 이용) */
	function checkForm() {
		// document의 loginForm의 각 입력값을 저장하는 변수 선언
		var empNo = document.loginForm.empno.value;		// 사번
		var passwd = document.loginForm.passwd.value;	// 비밀번호
		var otpNo = document.loginForm.otpno.value;		// OTP 번호
		
		// 사번 유효성 체크 (사번은 5자라고 가정(문자, 특수문자도 입력 가능( ex. 11-7101, admin 등 )))
		if (empNo == '') {
			alert("사번을 입력하세요.");
			document.loginForm.empno.focus();		// 사번 입력란에 focus를 줌
			return false;
		} else if (checkSpace(empNo)) {				// 사번에 공백이 있는지 여부 체크
			alert("공백을 입력할 수 없습니다.");
			document.loginForm.empno.value = "";	// 화면에 잘못 입력된 값을 지움
			document.loginForm.empno.focus();		// 사번 입력란에 focus를 줌
			return false;
		} else if (empNo.length != 5) {	
			alert("사번은 5자로 입력하세요.");
			document.loginForm.empno.value = "";	// 화면에 잘못 입력된 값을 지움
			document.loginForm.empno.focus();		// 사번 입력란에 focus를 줌
			return false;
		}
		
		// 비밀번호 유효성 체크 (8자리 이상 문자, 숫자, 특수문자를 모두 포함하도록)
		if (passwd == '') {
			alert("비밀번호를 입력하세요.");
			document.loginForm.passwd.focus();		// 비밀번호 입력란에 focus를 줌
			return false;
		} else if (!checkPassword(passwd)) {	
			alert("비밀번호는 8자리 이상 문자, 숫자, 특수문자를 포함하여 입력하세요.");
			document.loginForm.passwd.value = "";	// 화면에 잘못 입력된 값을 지움
			document.loginForm.passwd.focus();		// 비밀번호 입력란에 focus를 줌
			return false;
		}
		
		// OTP 번호 유효성 체크 (6자리 숫자로만 구성)
		if (otpNo == '') {
			alert("OTP 번호를 입력하세요.");
			document.loginForm.otpno.focus();		// OTP 입력란에 focus를 줌
			return false;
		} else if (otpNo.length != 6) {
			alert("OTP 번호는 6자로 입력하세요.");
			document.loginForm.otpno.value = "";	// 화면에 잘못 입력된 값을 지움
			document.loginForm.otpno.focus();		// OTP 입력란에 focus를 줌
			return false;
		} else if (!checkNumber(otpNo)) {	// OTP 입력란에 문자, 특수문자를 입력한 경우
			alert("OTP 번호는 공백, 문자, 특수문자를 포함할 수 없습니다.");
			document.loginForm.otpno.value = "";	// 화면에 잘못 입력된 값을 지움
			document.loginForm.otpno.focus();		// OTP 입력란에 focus를 줌
			return false;
		}
	}
	
	
</script>

<div class="login_wrap login_b">
    <h1><img src="images/login_logo.png" alt="" /><span>비즈메세징 영업관리시스템</span></h1>
    <div class="login_box">
        <div class="form">
            <form name="loginForm" id="loginForm" class="login_form" action="${rc.contextPath}/loginProc.do" method="post" >
            	<!-- 이걸 hidden 값으로 넘기면 무조건 세션이 생성되는듯 함 -->
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                <p><label for="id" class="id_b">사번</label>
                    <input type="text" id="empno" name="empno" class="pw_b" placeholder="사번"/></p>
                <p><label for="pw">비밀번호</label>
                    <input type="password" id="passwd" name="passwd" placeholder="비밀번호"/></p>
                <span class="mb_15"><label><input type="checkbox" value=""> 사번 저장</label></span>
                <p><label for="otp">OTP</label>
                    <input type="text" id="otpno" name="otpno" class="pw_b" placeholder="OTP"/></p>
                <div class="btn_box"><button class="login" id="login">로그인</button></div>
            </form>
        </div>
    </div>
</div>
</@page.base>