$(document).ready(function(){
  
    $("#mainskate").animate({left:"70%"},1000);
    $("#mainmsg").slideDown(1000);
    $("#mainmsg2").delay(500).slideDown(1000);
  
    $("#MenuIcon").click(function(){
        $("#MainMenu").css("left","0px");
        function showMenu(){
            $("#MainMenu").css("-webkit-clip-path","polygon(0 0,100% 0,100% 100%,0% 100%)");
            $("#MenuIcon").animate({right:'-100'},300);
        }
        setTimeout(showMenu,100);
   });
    
    $("#close").click(function(){
            $("#MainMenu").css("-webkit-clip-path","polygon(0 0,0% 0,100% 100%,0% 100%)");
            function hideMenu(){
                    $("#MainMenu").css("left","-300px");
                $("#MenuIcon").animate({right:'50'},300);
            }
        setTimeout(hideMenu,300);
        
        function originalLayout(){
            $("#MainMenu").css("-webkit-clip-path","polygon(0 0,100% 0,0% 100%,0% 100%)");
        }
        setTimeout(originalLayout,600);
    });
});