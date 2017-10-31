$(function(){
	switch(menu){
	
	case "Home":
		$("#home").addClass("nav-item active");
		break;

	case "List Of Products":
		$("#products").addClass("nav-item active");
		break;

	case "About Us":
		$("#about").addClass("nav-item active");
		break;

	case "Contact Us":
		$("#contact").addClass("nav-item active");
		break;
	default :
		break;

	}
});