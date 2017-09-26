

$(document).ready(function () {
    $("#btnSubmit").click(function(){
        var txtusername = $("#txtusername").val();
        var txtpassword = $("#txtpassword").val();

        // Checking for blank fields.
        if (txtusername == '' || txtpassword == '') {
            $('input[type="text"],input[type="txtpassword"]').css("border", "2px solid red");
            $('input[type="text"],input[type="txtpassword"]').css("box-shadow", "0 0 3px red");

            alert("Please fill all fields...!!!!!!");
        }
    });
});