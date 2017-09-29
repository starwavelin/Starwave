/**
 * input validation for the Contact form.
 */

function checkInput(a) {
	var senderName = contactForm.name.value;
	if (senderName == "") {
		alert("Dear friend, please fill in your name please..");
		return false;
	}
	var re = "^[\u4E00-\u9FA5A-Za-z]+$";
	if (!(senderName == "") && !re.test(senderName)) {
		alert("Dear friend, your name should contain either"
				+ " Latin alphabets or Chinese characters, please..");
		return false;
	}

	var senderEmail = contactForm.email.value;
	if (senderEmail == "") {
		alert("Dear friend, please fill in your email please..");
		return false;
	}
	var re = "^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$";
	if (!(senderEmail == "") && !re.test(senderEmail)) {
		alert("Dear friend, please provide a valid email address, please..");
		return false;
	}

	var phone = contactForm.contact_number.value;
	var re = "/^(\d{3}-\d{3}-\d{4})$/";
	if (!(phone == "") && !re.test(phone)) {
		alert("Dear friend, if you choose to provide phone number, "
				+ "the format should be 'xxx-xxx-xxxx'! Or, you can leave this field blank.");
		return false;
	}

	var senderMsg = contactForm.message.value;
	if (senderMsg == "") {
		alert("Dear friend, please write the words you wanna let me know. Thank you :)");
		return false;
	}

	return true;
}
