$('#submitList').click(function () {
    $('#submitList').prop("disabled", "disabled");
    $('#BtnTxt').html("Loading ");
    $('#spinnerSubmit').css("display", "inline-block");
});
$('#addOption').click(function () {
    $('#newOptionDiv').css("display", "block");
    $('#addOption').css("display", "none");
});