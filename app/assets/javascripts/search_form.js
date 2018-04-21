$(document).ready(function() {
    $("#select2input").select2();

    $("#select2input").on("select2:select", function (e) {
        $(".new-order-form").show();
    });
});
