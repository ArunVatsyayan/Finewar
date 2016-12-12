
function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}
$.validator.addMethod(
        "regex",
        function (value, element, regexp) {
            var re = new RegExp(regexp);
            return this.optional(element) || re.test(value);
        }
);

//LOGIN
function login(username, password, rememberMe, id) {
    var SDM = new Object();
    SDM.Username = username;
    SDM.Password = password;
    SDM.RememberMe = rememberMe;
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "api/Login/login",
        data: JSON.stringify(SDM),
        dataType: "json",
        beforeSend: function () {
            $(".LoginLoadingBugFixedDiv").css("display", "block");
            if (id != '')
                $("#" + id).prop("disabled", "disabled");
        },
        success: function (data) {
            if (data.Success == false) {
                toastr.error(data.UserMessage, "Something is wrong");
                $(".LoginLoadingBugFixedDiv").css("display", "none");
                if (id != '')
                    $("#" + id).prop("disabled", false);
            }
            else {
                if (rememberMe == true) {
                    setCookie("username", username, 30);
                    setCookie("ctpy", password, 30);
                }
                createSession(JSON.stringify(data.Result));
            }

        },
        error: function (result) {
            $(".LoginLoadingBugFixedDiv").css("display", "none");
            toastr.error("Wait and Watch and Refresh", "Error " + result.status);
            if (id != '')
                $("#" + id).prop("disabled", false);
        }
    });
}
function createSession(userObj) {
    $.ajax({
        type: "POST",
        url: "/Handlers/SessionHandler.ashx",
        data: { 'user': userObj },
        success: function (data) {
            window.location.replace(data);
        },
        error: function (result) {
            toastr.error("Wait and Watch and Refresh", "Error " + result.status);
            $(".LoginLoadingBugFixedDiv").css("display", "none");
        }
    });
}

//COOKIES

function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = "expires=" + d.toUTCString();
    document.cookie = cname + "=" + cvalue + "; " + expires;
}

function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') c = c.substring(1);
        if (c.indexOf(name) == 0) return c.substring(name.length, c.length);
    }
    return "";
}
