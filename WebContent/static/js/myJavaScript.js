($(function () {
    $("li.topbar-info-item div").click(function () {
        console.log($(this).attr("class") == "dropdown");
        if($(this).attr("class") == "dropdown"){
            $(this).attr("class",$(this).attr("class") + " open");
        }else{
            $(this).attr("class","dropdown");
        }
    });

    $("div.sidebar-nav").click(function () {
            // console.log($(this).attr("class") == "sidebar-nav");
        if($(this).attr("class") == "sidebar-nav"){
            $(this).attr("class",$(this).attr("class") + " sidebar-nav-fold");
            $(this).find("ul.sidebar-trans").css("display","block");
        }else{
            $(this).attr("class","sidebar-nav");
            $(this).find("ul.sidebar-trans").css("display","none");
        }
    });



}));
