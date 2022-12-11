const scroll = document.getElementById('scroll');
const scroll_wrap = document.getElementsByClassName('scroll_wrap');
const slider_wrap = document.getElementsByClassName('slider_wrap');

let num = 0;
let slider = () => {
    if (num>=300) num=-100;
    num += 100;
    slider_wrap[0].style.marginLeft = `-${num}%`;
}
setInterval(slider, 2000);
console.log(slider);