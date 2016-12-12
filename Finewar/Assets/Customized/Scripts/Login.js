$(document).ready(function () {
    populateYearField();
    populateMonthField();
    $("#usernameR").rules("add", {
        regex: "^[a-zA-Z0-9]+[_\.\-]?[a-zA-Z0-9]+$",
        messages: {
            regex: "Please only use alphanumeric, period, underscore or hyphen."
        }
    });
    $("#fullNameR").rules("add", {
        regex: "^[a-zA-Z0-9\\-\\s]+$",
        messages: {
            regex: "Please only use alphanumeric, space or hyphen."
        }
    });
    $("#cityR").rules("add", {
        regex: "^[a-zA-Z0-9\\-\\s\\.\\_]+$",
        messages: {
            regex: "Please only use alphanumeric, period, space, underscore or hyphen."
        }
    });

});

$('#dob').on('focus', function () {
    $('#DOBModal').modal('show');
});
function setDOB(){
     var date = $('#dayfield option:selected').val() + ' ' + $('#monthfield option:selected').text() + ', ' + $('#yearfield option:selected').val();
    var formattedDate = $('#yearfield option:selected').val() + '-' + $('#monthfield option:selected').val() + '-' + $('#dayfield option:selected').val();
    $('#dob').val(date);
    $('#dob').data("DOB", formattedDate);
    $("#DOBModal").modal('hide');
}
$('#dob').on('keyup', function () {
    if ($('#dayfield option:selected').val() != 0 && $('#monthfield option:selected').val() != 0 && $('#yearfield option:selected').val() != 0) {
        setDOB();
    }
    else $('#dob').val('');
});
$('#dob').on('blur', function () {

    if ($('#dayfield option:selected').val() != 0 && $('#monthfield option:selected').val() != 0 && $('#yearfield option:selected').val() != 0) {
        setDOB();
    }
    else $('#dob').val('');
});

$('#dob').on('change', function () {

    if ($('#dayfield option:selected').val() != 0 && $('#monthfield option:selected').val() != 0 && $('#yearfield option:selected').val() != 0) {
        setDOB();
    }
    else $('#dob').val('');
});

$('#monthfield').on('change', function () {
    populateDayField($('#monthfield option:selected').val(), $('#yearfield option:selected').val());
});

$('#yearfield').on('change', function () {
    populateDayField($('#monthfield option:selected').val(), $('#yearfield option:selected').val());
});

$('#dayfield').on('change', function () {
    setDOB();
});

function populateYearField() {
    var today = new Date();
    var thisyear = today.getFullYear();
    for (var y = thisyear - 6; y > thisyear - 120; y--) {
        $('#yearfield').append('<option value="' + y + '">' + y + '</option>');
    }
}

function populateMonthField() {
    var monthtext = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec'];
    for (var m = 1; m <= 12; m++) {
        $('#monthfield').append('<option value="' + m + '">' + monthtext[m - 1] + '</option>');
    }
}

function populateDayField(month, year) {
    if (month != '0' && year != '0') {
        $('#dayfield').html('<option selected="selected" disabled="disabled" value="0">Day</option>');
        for (var m = 1; m <= daysInMonth(month, year) ; m++) {
            $('#dayfield').append('<option value="' + m + '">' + m + '</option>');
        }
    }
}

function daysInMonth(month, year) {
    return new Date(year, month, 0).getDate();
}

//Login Validation and AJAX call
$('#loginB').on('click', function () {
    var status = $(".login-form").valid();
    if (status === true) {
        login($('#usernameL').val().trim(), $('#passwordL').val(), $('#rememberMeL').is(':checked'), 'loginB');
    }
});
$('#usernameL').on('keydown', function () {
    if (event.keyCode == 13) {
        var status = $(".login-form").valid();
        if (status === true) {
            login($('#usernameL').val().trim(), $('#passwordL').val(), $('#rememberMeL').is(':checked'), 'loginB');
        }
    }
});
$('#passwordL').on('keydown', function () {
    if (event.keyCode == 13) {
        var status = $(".login-form").valid();
        if (status === true) {
            login($('#usernameL').val().trim(), $('#passwordL').val(), $('#rememberMeL').is(':checked'), 'loginB');
        }
    }
});
//Register Validation and AJAX Call
$('#register-submit-btn').on('click', function () {
    var status = $(".register-form").valid();
    if (status === true) {
        register();
    }
});

function register() {
    var SDM = new Object();
    SDM.Name = $('#fullNameR').val().trim();
    SDM.Username = $('#usernameR').val().trim();
    SDM.Password = $('#register_password').val();
    SDM.Email = $('#emailR').val().trim();
    SDM.Address = $('#addressR').val();
    SDM.City = $('#cityR').val().trim();
    SDM.Country = $('#countryR option:selected').val();
    SDM.DOB = $('#dob').data("DOB");
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "api/Login/register",
        data: JSON.stringify(SDM),
        dataType: "json",
        beforeSend: function () {
            $("#register-submit-btn").attr('disabled', 'disabled');
            $(".LoginLoadingBugFixedDiv").css("display", "block");
        },
        success: function (data) {
            if (data.Success == false) {
                $("#register-submit-btn").attr('disabled', false);
                $(".LoginLoadingBugFixedDiv").css("display", "none");
                toastr.error(data.UserMessage, "Something is wrong");
            }
            else
                login(SDM.Username, SDM.Password, "0");
        },
        error: function (result) {
            toastr.error("Wait and Watch and Refresh", "Error " + result.status);
            $(".LoginLoadingBugFixedDiv").css("display", "none");
            $("#register-submit-btn").attr('disabled', false);
        }
    });
}

$('#checkUsernameR').on('click', function () {
    checkUsername();
});
function checkUsername() {
    var SDM = new Object();
    SDM.Username = $('#usernameR').val().trim();
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "api/Login/checkUsername",
        data: JSON.stringify(SDM),
        dataType: "json",
        beforeSend: function () {
            $(".RegisterUsernameSpinner").attr('style', 'display: block !important');
            $(".RegisterUsernameCorrect").attr('style', 'display: none !important');
            $(".RegisterUsernameInfo").attr('style', 'display: none !important');
            $(".RegisterUsernameWrong").attr('style', 'display: none !important');
        },
        success: function (data) {
            if (data.Success == true) {
                $(".RegisterUsernameCorrect").attr('style', 'display: block !important');
                $(".RegisterUsernameInfo").attr('style', 'display: none !important');
                $(".RegisterUsernameWrong").attr('style', 'display: none !important');
                $(".RegisterUsernameSpinner").attr('style', 'display: none !important');
            }
            else {
                if (data.ErrorCode == 0) {
                    toastr.warning(data.UserMessage, "Something is wrong");
                    $(".RegisterUsernameInfo").attr('style', 'display: block !important');
                    $(".RegisterUsernameCorrect").attr('style', 'display: none !important');
                    $(".RegisterUsernameWrong").attr('style', 'display: none !important');
                    $(".RegisterUsernameSpinner").attr('style', 'display: none !important');
                }
                else {
                    $(".RegisterUsernameWrong").attr('style', 'display: block !important');
                    $(".RegisterUsernameInfo").attr('style', 'display: none !important');
                    $(".RegisterUsernameCorrect").attr('style', 'display: none !important');
                    $(".RegisterUsernameSpinner").attr('style', 'display: none !important');
                }
            }
        },
        error: function (result) {
            toastr.error("Wait and Watch and Refresh", "Error " + result.status);
        },
        complete: function () {

        }
    });
}


