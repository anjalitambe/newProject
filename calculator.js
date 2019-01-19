function myFunction1() {
	var today = new Date();
	var yyyy = parseInt(today.getFullYear());
	var year = parseInt(document.getElementById("vehicleform").elements[3].value);
	var yr = yyyy - year;
	var price = parseInt(document.getElementById("vehicleform").elements[4].value);
	var rb = parseInt(document.getElementById("vehicleform").elements[5].value);

	if (yr <= 1)
		amount = price * 0.05;
	else if (yr == 2)
		amount = price * 0.1;
	else if (yr <= 4)
		amount = price * 0.2;
	else
		amount = price * 0.3;

	var afteridv = price - amount;

	var insurance;

	if (document.getElementById('comp').checked) {
		insurance = afteridv * 0.02;
		
		
		insurance *= 12;
		document.getElementById("myDIV").value = insurance;
	} else if (document.getElementById('third').checked) {
		insurance = afteridv * 0.015;
		insurance *= 12;
		document.getElementById("myDIV").value = insurance;
	}
}

