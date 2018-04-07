($(function () {

    $("div.dropdown").click(function () {
        if (String($(this).attr("class")).lastIndexOf("open") == -1) {
            $("div.dropdown").removeClass("open");
            $(this).attr("class", $(this).attr("class") + " open");
        } else {
            $(this).removeClass("open");
        }
    });

    for (var i = 0; i < $(".ul-list li").length; i++) {
        if (i % 2) {
            $(".ul-list li").eq(i).css("background", "#f2f2f2");
        }
    }
}));


function popup_msg(msg) {
    $(".popup").html("" + msg + "");
    $(".popupDom").animate({
        "top": "0px"
    }, 400);
    setTimeout(function () {
        $(".popupDom").animate({
            "top": "-40px"
        }, 400);
    }, 2000);
}

function paint(target) {
    for (var i = 0; i < target.length; i++) {
        $(target[i]).gvChart({
            chartType: 'PieChart',
            gvSettings: {
                vAxis: {title: 'No of players'},
                hAxis: {title: 'Month'},
                width: 400,
                height: 230
            }
        });
    }
}

function backToIndex(url) {
    setTimeout(function () {
        
    },5000);
}
