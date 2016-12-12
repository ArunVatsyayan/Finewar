$(document).ajaxStart(function () {
    Metronic.blockUI({ boxed: false });
}).ajaxStop(function () {
    Metronic.unblockUI();
});