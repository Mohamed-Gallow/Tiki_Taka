jQuery(function($){
    var $navbar =$('.header');
    $(window).scroll(function(event){
        var $current = $(this).scrollTop();
        if($current > 0){
            $navbar.addClass('navbar_color');
        }
        else{
            $navbar.removeClass('navbar_color');
        }
    });
});




