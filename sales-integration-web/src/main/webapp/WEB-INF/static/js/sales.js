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
function wrapWindowByMask(){
    // 화면의 높이와 너비를 변수로 만듦
    var maskHeight = $(document).height();
    var maskWidth = $(window).width();

    // 마스크의 높이와 너비를 화면의 높이와 너비 변수로 설정
    $('.mask').css({'width':maskWidth,'height':maskHeight});

    // fade 애니메이션 :60%의 불투명 처리
    $('.mask').fadeTo("slow",0.7);

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