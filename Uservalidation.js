function uservalid() {

    var name, mobile, email, address;
    name = document.getElementById("txtName").value;
    mobile = document.getElementById("txtMobile").value;
    email = document.getElementById("txtEmail").value;
    address = document.getElementById("txtAddress").value;
    emailregex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;

    if (name == '' && mobile == '' && email== '' && address == '') {
        alert("Please Enter All Fields");
        return false;
    }

    if (email != '')
    {
        if (!email.match(emailregex))
        {
            alert("Invalid Email Id");
            return false;
        }
    }

    return true;


}