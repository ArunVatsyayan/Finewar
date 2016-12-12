
$(document).ready(function () {
    $('#nameE').val(userS.Name);
    $('#emailE').val(userS.Email);
    $('#addressE').val(userS.Address);
    $('#cityE').val(userS.City);
    $('#countryE').val(userS.Country);
    $('#usernameE').val(userS.Username);
});

$('.LabelEdit').click(function () {

    $(this).parent().children('a').each(
        function () {
            if ($(this).hasClass('LabelUpdate')) {
                $(this).css("display", "block");
            }
            if ($(this).hasClass('LabelCancel')) {
                $(this).css("display", "block");
            }
        });
    $(this).css("display", "none");
    $(this).parent().parent().children().eq(1).children().eq(0).children().eq(0).prop("disabled", false);
});

$('.LabelCancel').click(function () {

    $(this).parent().children('a').each(
        function () {
            if ($(this).hasClass('LabelEdit')) {
                $(this).css("display", "block");
            }
            if ($(this).hasClass('LabelUpdate')) {
                $(this).css("display", "none");
            }
        });
    $(this).css("display", "none");
    $(this).parent().parent().children().eq(1).children().eq(0).children().eq(0).prop("disabled", "disabled");
});

$('.LabelUpdate').click(function () {
    var editOBJ;
    var loadingOBJ = $(this).parent().children().eq(0);
    $(this).parent().children('a').each(
        function () {
            if ($(this).hasClass('LabelEdit')) {
                editOBJ = $(this);
                $(this).css("display", "none");
            }
            if ($(this).hasClass('LabelCancel')) {
                $(this).css("display", "none");
            }
        });
    loadingOBJ.css("display", "block");
    $(this).css("display", "none");
    var inputObj = $(this).parent().parent().children().eq(1).children().eq(0).children().eq(0);
    update(inputObj.val(), $(this).data('field'), editOBJ, loadingOBJ);
    inputObj.prop("disabled", "disabled");
});

$('#uploadI').click(function () {
    $("#uploadImage").click();
});

function update(value, field,e,l) {
    var SDM = new Object();
    SDM.Field = field;
    SDM.Value = value;
    SDM.ID = userS.ID;
    SDM.Token = userS.Token;
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "api/User/update",
        data: JSON.stringify(SDM),
        dataType: "json",
        success: function (data) {
            if (data.Success == false) toastr.error(data.UserMessage, "Something is Wrong");
            else toastr.success(data.UserMessage, "You have done it brilliantly");
        },
        error: function (result) {
            if (result.status == 0 || result.status == 400)
                window.location.href.replace("/Home.aspx");
            else toastr.error("Wait and Watch and Refresh", "Error " + result.status);
        },
        complete: function() {
            l.css("display", "none");
            e.css("display", "block");
        }
    });
}