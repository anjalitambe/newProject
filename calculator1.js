function myFunction2() {

	var today = new Date();
	var cyear = parseInt(today.getFullYear());
	var cmonth = parseInt(today.getMonth());
	var cday = parseInt(today.getDay());

	var sd = document.getElementById("myDate").value;

	var array = new Array();
	array = sd.split(' ');

	var ff = new Array();
	ff = array[0].split('-');
	var lyear = ff[0];
	var lmonth = ff[1];
	var lday = ff[2];

	var c = 0;
	if ((cyear - lyear) > 0) {
		//logic
	} else if ((cyear - lyear) == 0) {
		if ((cmonth - lmonth) > 0) {
			//logic
		} else if ((cmonth - lmonth) == 0) {
			if ((cday - lday) > 0) {
				//logic
			} else {
				//alert
				c = 1;
			}
		} else if ((cmonth - lmonth) < 0) {
			//alert
			c = 1;
		}

	} else if ((cyear - lyear) < 0) {
		//alert
		c = 1;
	}

	if (c > 0) {
		document.getElementById("hide").style.display="none";
		document.getElementById("myDIV").innerHTML = "Policy not expired";

	} else {
		// logic
		//document.getElementById("myDIV").innerHTML = "You can renew your policy";
		document.getElementById("hide").style.display="block";
	}

}
