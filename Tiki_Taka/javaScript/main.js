// =========== [ start AOS library Part ] =========== 

AOS.init();

AOS.init({
    delay: 5,
    duration: 1000,
});

// ------------[ End AOS library Part ]---------------

// =========== [ Start Responsive Drop Down Menu ] =========== 
const toggleBtn = document.querySelector('.toggle_btn');
var drop_down_menu = document.querySelector('.drop_down_menu');

toggleBtn.onclick = function () {
    this.classList.toggle('menu_active');
    drop_down_menu.classList.toggle('open');
}


// =========== [ Start Angel Up Part ] =========== 

var arrow = document.querySelector(".angel_up");

window.onscroll = function () {

    // console.log(this.scrollY);

    if (this.scrollY >= 350) {
        arrow.classList.add("show");
    }
    else {
        arrow.classList.remove("show");
    }

};

// =========== [ End Angel Up Part ] =========== 


