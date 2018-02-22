<#macro base>
    <script type="text/javascript" src="/webjars/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    
    <!-- 각 menu bar에 적용되는 script -->
    <script>
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
	</script>
</#macro>
