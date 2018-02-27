/********* 메뉴바 스크립트 **********/
//menu left
$(document).ready(function() {
	$(".menu>a").click(function() {
		var submenu = $(this).next("ul"); 
		if (submenu.is(":visible")) {
			submenu.slideUp();
        } else {
        	submenu.slideDown();
        }
    });
});
    
//menu top
$(function() {      
	$(".menu li").hover(function() {
		$('ul:first', this).show();
	}, function() {
		$('ul:first', this).hide();
	});
});
/*************************************/

/********* 팝업 레이어 스크립트 **********/
/********* (여신관리 상세, 발신프로필 등록, 발신번호 승인, 발신번호 담당자 반려, 탈퇴회원 정보) **********/
/********* 추후 기능별로 자바스크립트를 다 나눠줘야 할 수도 있지만, 당장은 하나의 자바스크립트로 처리 *********/
function wrapWindowByMask(){
    // 화면의 높이와 너비를 변수로 만듦
    var maskHeight = $(document).height();
    var maskWidth = $(window).width();

    // 마스크의 높이와 너비를 화면의 높이와 너비 변수로 설정
    $('.mask').css({'width':maskWidth,'height':maskHeight});

    // fade 애니메이션 :80%의 불투명 처리
    $('.mask').fadeTo("slow",0.8);

    // 레이어 팝업을 가운데로 띄우기 위해 화면의 높이와 너비의 가운데 값과 스크롤 값을 더하여 변수로 만듦
    var left = ( $(window).scrollLeft() + ( $(window).width() - $('.window').width()) / 2 );
    var top = ( $(window).scrollTop() + ( $(window).height() - $('.window').height()) / 2 );

    // css 스타일을 변경
    $('.window').css({'left':left,'top':top, 'position':'absolute'});

    // 레이어 팝업을 띄움
    $('.window').show();
}

$(document).ready(function(){
    // showMask를 클릭시 작동하며 검은 마스크 배경과 레이어 팝업을 띄움
    $('#detailBtn').click(function(e){
        // preventDefault는 href의 링크 기본 행동을 막는 기능
        e.preventDefault();
        wrapWindowByMask();
    });

    // 닫기(close)를 눌렀을 때 작동
    $('.window .close').click(function (e) {
        e.preventDefault();
        $('.mask, .window').hide();
    });

    // 뒤 검은 마스크를 클릭시에도 모두 제거하도록 처리
    $('.mask').click(function () {
        $(this).hide();
        $('.window').hide();
    });
});
/*******************************************/


/********* 팝업 레이어 스크립트 (발신프로필 삭제) **********/
/********* 하나의 페이지에서 여러개의 팝업 레이어를 띄우기 위해 편의상 추가 **********/
/********* 공통영역이 아닌, 페이지 별로 상이한 경우 각 페이지에서 따로 관리하는게 더 나을듯함 **********/
function wrapWindowByMask2(){
    // 화면의 높이와 너비를 변수로 만듦
    var maskHeight = $(document).height();
    var maskWidth = $(window).width();

    // 마스크의 높이와 너비를 화면의 높이와 너비 변수로 설정
    $('.sentProfile_delete_mask').css({'width':maskWidth,'height':maskHeight});

    // fade 애니메이션 :80%의 불투명 처리
    $('.sentProfile_delete_mask').fadeTo("slow",0.8);

    // 레이어 팝업을 가운데로 띄우기 위해 화면의 높이와 너비의 가운데 값과 스크롤 값을 더하여 변수로 만듦
    var left = ( $(window).scrollLeft() + ( $(window).width() - $('.sentProfile_delete_window').width()) / 2 );
    var top = ( $(window).scrollTop() + ( $(window).height() - $('.sentProfile_delete_window').height()) / 2 );

    // css 스타일을 변경
    $('.sentProfile_delete_window').css({'left':left,'top':top, 'position':'absolute'});

    // 레이어 팝업을 띄움
    $('.sentProfile_delete_window').show();
}

$(document).ready(function(){
    // showMask를 클릭시 작동하며 검은 마스크 배경과 레이어 팝업을 띄움
    $('#sentProfileDeleteBtn').click(function(e){
        // preventDefault는 href의 링크 기본 행동을 막는 기능
        e.preventDefault();
        wrapWindowByMask2();
    });

    // 닫기(close)를 눌렀을 때 작동
    $('.sentProfile_delete_window .close').click(function (e) {
        e.preventDefault();
        $('.sentProfile_delete_mask, .sentProfile_delete_window').hide();
    });

    // 뒤 검은 마스크를 클릭시에도 모두 제거하도록 처리
    $('.sentProfile_delete_mask').click(function () {
        $(this).hide();
        $('.sentProfile_delete_window').hide();
    });
});
/*******************************************/

/********* 팝업 레이어 스크립트 (연동) **********/
/********* 하나의 페이지에서 여러개의 팝업 레이어를 띄우기 위해 편의상 추가 **********/
/********* 공통영역이 아닌, 페이지 별로 상이한 경우 각 페이지에서 따로 관리하는게 더 나을듯함 **********/
function wrapWindowByMask3(){
    // 화면의 높이와 너비를 변수로 만듦
    var maskHeight = $(document).height();
    var maskWidth = $(window).width();

    // 마스크의 높이와 너비를 화면의 높이와 너비 변수로 설정
    $('.interlock_mask').css({'width':maskWidth,'height':maskHeight});

    // fade 애니메이션 :80%의 불투명 처리
    $('.interlock_mask').fadeTo("slow",0.8);

    // 레이어 팝업을 가운데로 띄우기 위해 화면의 높이와 너비의 가운데 값과 스크롤 값을 더하여 변수로 만듦
    var left = ( $(window).scrollLeft() + ( $(window).width() - $('.interlock_window').width()) / 2 );
    var top = ( $(window).scrollTop() + ( $(window).height() - $('.interlock_window').height()) / 2 );

    // css 스타일을 변경
    $('.interlock_window').css({'left':left,'top':top, 'position':'absolute'});

    // 레이어 팝업을 띄움
    $('.interlock_window').show();
}

$(document).ready(function(){
    // showMask를 클릭시 작동하며 검은 마스크 배경과 레이어 팝업을 띄움
    $('#interlockBtn').click(function(e){
        // preventDefault는 href의 링크 기본 행동을 막는 기능
        e.preventDefault();
        wrapWindowByMask3();
    });

    // 닫기(close)를 눌렀을 때 작동
    $('.interlock_window .close').click(function (e) {
        e.preventDefault();
        $('.interlock_mask, .interlock_window').hide();
    });

    // 뒤 검은 마스크를 클릭시에도 모두 제거하도록 처리
    $('.interlock_mask').click(function () {
        $(this).hide();
        $('.interlock_window').hide();
    });
});
/*******************************************/

