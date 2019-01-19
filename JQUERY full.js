$(document).ready(function(){
    $("#amain").click(function(){
        $("#amain").animate({height:'800px',width:'800px'});
        $("#aicon").fadeOut();
        $("#amenu ul").delay(300).animate({opacity:"1"});
        $("#amenu ul").css("visibility","visible");
        $("#amenu_circle_layer").animate({height:'850px',width:'850px'});
        
        $("#asocial_media").animate({height:'400px',width:'400px'});
        $("#acontainer").delay(300).animate({opacity:"1"});
        $("#acontainer").css("visibility","visible");
        $("#asocial_circle_layer").animate({height:'430px',width:'430px'});
        
        $("#abg").delay(200).animate({opacity:"1"});
        $("#abg").css("visibility","visible");
    }); 
    
    $("#abg").click(function(){
        $("#amain").animate({height:'50px',width:'50px'});
        $("#aicon").fadeIn();
        $("#amenu ul").animate({opacity:"0"});
        $("#amenu ul").css("visibility","hidden");
        $("#amenu_circle_layer").animate({height:'0px',width:'0px'});
        
        $("#asocial_media").animate({height:'0px',width:'0px'});
        $("#acontainer").animate({opacity:"0"});
        $("#acontainer").css("visibility","hidden");
        $("#asocial_circle_layer").animate({height:'0px',width:'0px'});
        
        $("#abg").animate({opacity:"0"});
        $("#abg").css("visibility","hidden");       
    });
});








