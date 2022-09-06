$(function(){
    window.onload = (e) => {
        window.addEventListener("message", (event) => {
            var item = event.data;
            if(item !== undefined && item.type === "ui") {
                if (item.display) {
                    $('#container').show();
                    $('#mattcar3')[0].play();
                } else{
                    $('#container').hide();
                    $('#mattcar3')[0].pause();
                }
            }
        })
    }
})