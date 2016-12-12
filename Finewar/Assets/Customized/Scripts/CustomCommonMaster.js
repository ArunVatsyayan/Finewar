$(document).ready(function () {
    $('#topMenuNoLogin').css("display", "block");
    if (loginS == "true") {
        $('#topMenuLogin').css("display", "block");
        $('#topMenuNoLogin').css("display", "none");
        $(".username").html(userS.Username);
    }
});