const zmiana = {
     pos : document.getElementById("pos"),
     krolik : document.getElementById("krolik"),
    
    skok:function(){
        this.krolik.style.display = "block";
    },

    init:function(){
    this.pos.addEventListener(
        'click',
        this.skok.bind(this),   
    );
}
    
};

zmiana.init();
