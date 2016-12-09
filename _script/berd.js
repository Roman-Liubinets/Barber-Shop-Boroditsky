var appointment-form=document.getElementsByClassName("appointment-form");
appointment-form.onfocus=function() {
	if(appointment.value=="date") {
		appointment.value="";
	}
};
appointment-form.onblur=function() {
	if(appointment.value=="") {
		appointment.value="date";
	}
};
