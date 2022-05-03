function validate() {
    var relocate = document.getElementById('Relocate').checked;
    var email = document.getElementById('EMail').value;
    var phone = document.getElementById('Phone').value;
    var p_length = phone.length;
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if (document.myForm.position.value == "") {
        alert("Please select atleast one position !");
        document.myForm.Position.focus();
        event.preventDefault();
        return false;
    }
    if (document.myForm.Name.value == "") {
        alert("Please provide your name!");
        document.myForm.Name.focus();
        event.preventDefault();
        return false;
    }
    if (document.myForm.Lname.value == "") {
        alert("Please provide your name!");
        document.myForm.Name.focus();
        event.preventDefault();
        return false;
    }
    if (document.myForm.EMail.value == "") {
        alert("Please provide your Email!");
        document.myForm.EMail.focus();
        event.preventDefault();
        return false;
    }
    if (!(email.match(mailformat))) {
        alert("Email is not in correct format");
        event.preventDefault();
        return false;
    }
    if (document.myForm.join_date.value == "") {
        alert("Please provide yourJoin date!");
        document.myForm.join_date.focus();
        event.preventDefault();
        return false;
    }
    if (isNaN(phone) == true) {
        alert("Phone should not be in string format");
        event.preventDefault();
        return false;
    }
    if (p_length != 10) {
        alert("Phone length should be equal to 10");
        event.preventDefault();
        return false;
    }
    return true;
}
//
