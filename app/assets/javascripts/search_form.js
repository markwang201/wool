$(document).ready(function() {
    $("#select2input").select2({placeholder: "请选择平台"});

    $("#select2input").on("select2:select", function (e) {
        $(".new-order-form").show();
    });

    var getUrlParameter = function getUrlParameter(sParam) {
        var sPageURL = decodeURIComponent(window.location.search.substring(1)),
            sURLVariables = sPageURL.split('&'),
            sParameterName,
            i;

        for (i = 0; i < sURLVariables.length; i++) {
            sParameterName = sURLVariables[i].split('=');

            if (sParameterName[0] === sParam) {
                return sParameterName[1] === undefined ? true : sParameterName[1];
            }
        }
    };

    if (getUrlParameter('bill_id')) { $(".new-order-form").show(); }

});
