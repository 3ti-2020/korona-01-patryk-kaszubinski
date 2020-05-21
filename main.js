console.log("funkcja zmiana sprawia że po naciśnięciu postaci na ekranie tytułowym na wysokości diva top pojawia się królik z stale włączoną animacją skoku");
console.log("funkcja clickMe sprawia ze po naciśnięciu guzika zmienia się tło koloru diva top na czerwony chyba że jest już czerwony, to na zielony");
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
},
    
};

const clickMe = {
    btn : document.querySelector(".btn"),
    top : document.querySelector(".top"),
    
    tlo:function(){
        if(this.top.style.background === "crimson"){
            this.top.style.background = "green"
        }else{
        this.top.style.background = "crimson";
        }
    },

  
    init:function(){
        this.btn.addEventListener(
            'click',
            this.tlo.bind(this),
            );
    },

};
  

zmiana.init();

clickMe.init();
