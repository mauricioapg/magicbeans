/* Custom Site Logo JS*/

jQuery( document ).ready(function ($) {

	/* Testing the Logo Image onLoad */
	var csl_logo_url_val = $("#csl_CustomSiteLogo_logo_image").val();
	csl_logo_testImage(csl_logo_url_val); 

	function csl_logo_testImage(URL) {
		if(URL != "Select Logo" && URL){
			var tester=new Image();
		    tester.onerror=csl_logo_imageNotFound;
		    tester.src=URL;
		}
	}

	function csl_logo_imageNotFound() {
		$(".csl-preview-blocks").css("display","none");
		$(".csl-error-logo-url").css("display","block");
		alert("That image was not found.");
	}

	

	$('#csl_CustomSiteLogo_image_button').click(function(e){ 
		e.preventDefault();
		var csl_CustomSiteLogo_uploader = wp.media({
			title: 'Select or upload a logo',
			button: { text: 'Select Logo' },
			multiple: false
		}).on('select', function(){
			var attachment = csl_CustomSiteLogo_uploader.state().get('selection').first().toJSON();
			$('#csl_CustomSiteLogo_logo_image').val(attachment.url);
			$('#csl_CustomSiteLogo_admin_preview').attr("src", attachment.url);
			$('#csl_CustomSiteLogo_admin_hover_preview').attr("src",  attachment.url); /* Also update the preview image */
			$(".csl-preview-blocks").css("display","block");
			$(".csl-error-logo-url").css("display","none");
		}).open();
	});


	$('#csl_CustomSiteLogo_hover_effect').on('change', function(){
		var selectedHover = $('#csl_CustomSiteLogo_hover_effect').val();
		$('#csl_CustomSiteLogo_admin_hover_preview').removeClass();
		$('#csl_CustomSiteLogo_admin_hover_preview').addClass(selectedHover);
	});

	
	/* Check Image Field */
		$('.csl_CustomSiteLogo_form').on('submit', function () {
			var csl_CustomSiteLogo_logo_image = $('input#csl_CustomSiteLogo_logo_image').attr('value');    // Getting Width Value

			if ((csl_CustomSiteLogo_logo_image === '' || csl_CustomSiteLogo_logo_image === null)) {
				alert("Please select the img.");
				return false;
			}
			
			
		});
	
});