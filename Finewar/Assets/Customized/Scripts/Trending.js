$(document).ready(function (){
    $("#TrendingPage").addClass("active");
    Metronic.blockUI({ boxed: false });
});
var waypoint = new Waypoint({
    element: document.getElementById('waypoint'),
    handler: function () {
        alert('Basic waypoint triggered')
    }
});