($(function () {

    $("div.dropdown").click(function () {
        if(String($(this).attr("class")).lastIndexOf("open") == -1){
            $("div.dropdown").removeClass("open");
            $(this).attr("class",$(this).attr("class") + " open");
        }else{
            $(this).removeClass("open");
        }
    });

    for(var i = 0 ; i < $(".ul-list li").length ; i ++){
        if(i % 2){
            $(".ul-list li").eq(i).css("background","#f2f2f2");
        }
    }
}));
