($(function () {
    for(var i = 0 ; i < $(".ul-list li").length ; i ++){
        if(i % 2){
            $(".ul-list li").eq(i).css("background","#f2f2f2");
        }
    }
}));
