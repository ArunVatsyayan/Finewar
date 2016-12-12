function closeModal() {
    $('.full-screen-nav').css("display", "none");
}
function openModal() {
    $('.full-screen-nav').css("display", "block");
}
$('#submitList').click(function () {
    $('#submitList').prop("disabled", "disabled");
    $('#BtnTxt').html("Loading ");
    $('#spinnerSubmit').css("display", "inline-block");
});