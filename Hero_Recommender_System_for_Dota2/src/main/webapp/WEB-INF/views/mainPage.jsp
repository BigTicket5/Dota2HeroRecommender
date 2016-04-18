<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="resources/css/style.css"> 
	<script type="text/javascript" src="resources/scripts/jquery-2.2.3.min.js"></script>
	<script type="text/javascript" src="resources/scripts/jquery-ui.min.js"></script>
	<script type="text/javascript" src="resources/scripts/jquery-validation-min.js"></script>
	<script type="text/javascript">
	$(document).ready(function($){ 
		var $form_modal = $('.cd-user-modal'), 
		$form_modal_tab = $('.cd-inputid'),  
		$main_nav = $('#yesbutton'); 
		$modal_container = $('.cd-user-modal-container');
  
	  $main_nav.on('click', function(event){ 
	  
		if( $(event.target).is($main_nav) ) { 
		  // on mobile open the submenu 
		  $form_modal.addClass('is-visible'); 
		  setpCenter($(".cd-user-modal-container"));
	  }}); 
	   
	  //close windows using key "ESC"
	  $(document).keyup(function(event){ 
		if(event.which=='27'){ 
		  $form_modal.removeClass('is-visible'); 
		} 
	  }); 
	  $('#accountid').on('input',function () { 
		this.value = this.value.replace(/[^0-9\.]/g,'');
	  });
	  $('#accform').validate({ // initialize the plugin
        errorElement: 'span',
        errorClass: 'my-error-class',
        rules: {
            accountid: "required",
        },
        messages: {
            accountid: "required!",
        }
		});
		$("#clearform").click(function() {
			var validator = $("#accform").validate();
			console.log("2");
			validator.resetForm();
			$('#accform')[0].reset();
		});
	}); 
	function setpCenter(pName) {
	var top = ($(window).height() - $(pName).height())/3;   

			var left = ($(window).width() - $(pName).width())/2;   

			var scrollTop = $(document).scrollTop();   

			var scrollLeft = $(document).scrollLeft();   

			$(pName).css( {'position':'absolute','top' : top + scrollTop, left : left + scrollLeft } );
	}
	$(window).resize(function() { 
		screenWidth = $(window).width(); 
		screenHeight = $(window).height(); 
		scrolltop = $(document).scrollTop(); 
		objLeft = (screenWidth - $modal_container.width())/2 ; 
		objTop = (screenHeight - $modal_container.height())/3 + scrolltop; 
		$modal_container.css({left: objLeft + 'px', top: objTop + 'px','display': 'block'}); 
	}); 
	</script>
</head>
<body>

<header><h1>Hero Recommender</h1></header>
<div id="mainpage">
	<div id="signboard">
	</div>
	<div align="center"><h1 class="Three-Dee">Are you new player of Dota2?</h1></div>
	<div class="round-parent">
	<div class="round-button"><div class="round-button-circle"><a id="yesbutton" href="#0" class="round-button" title="Recommender heros based on your pre-match records!" >Yes</a></div></div>
	<div style="text-bottom:center-right;font-family:Verdana;font-size:1.2em;font-weight:bold;"><p style="padding-left:15px ">or</p></div>
	<div class="round-button"><div class="round-button-circle"><a href="http://example.com" class="round-button" title="Choose your favorite hero type!">No</a></div>
	</div>
	</div>
	<div class="cd-user-modal"> 
  <div class="cd-user-modal-container"> 
    <div class="cd-inputid">
		<div class="cd-input-title">ACCOUNTID</div>	
		<form class="cd-form" id="accform"> 
			<p>Please enter your account ID:<input id="accountid" name="accountid" type="text" style="padding:5px;margin-left:15px;" /></p>
			<p><input id="submit" type="submit" value="Confirm" class="btn-class"/>
			<input type="reset" id="clearform" value="Reset" class="btn-class" /></p>
      </form> 
    </div> 
  </div> 
</div> 
</div>
<footer>Copyright 2016 Zhang&Mao
</footer>

</body>
</html>