// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on("ready", function() {
	$("#radio_volunteer").on("click", function(){
		$(".form1").attr('action', '/volunteers');
		$("#InputName").prop('name', 'volunteer[name]');
		$("#InputAddress").prop('name','volunteer[address]');
		$("#InputPhone").prop('name','volunteer[phone]');
		$("#InputEmail").prop('name','volunteer[email]');
		$("#InputPassword").prop('name','volunteer[password]');
		$("#InputPasswordConfirmation").prop('name','volunteer[password_confirmation]');
		// $("#InputPicture").prop('name','volunteer[avatar_file_name]')
    });
    $('#radio_ministry').on("click", function(){
    	$(".form1").attr("action", "/ministries");
    	$("#InputName").prop('name', 'ministry[name]');
		$("#InputAddress").prop('name','ministry[address]');
		$("#InputPhone").prop('name','ministry[phone]');
		$("#InputEmail").prop('name','ministry[email]');
		$("#InputPassword").prop('name','ministry[password]');
		$("#InputPasswordConfirmation").prop('name','ministry[password_confirmation]');
    });
   
});