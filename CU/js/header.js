const li = document.querySelectorAll('.ul2 > li');
console.log(li);

const ul1 = li[0].childNodes[2];
const ul2 = li[1].childNodes[2];
const ul3 = li[3].childNodes[2];
const ul4 = li[4].childNodes[2];
const ul5 = li[5].childNodes[2];
const ul6 = li[6].childNodes[2];


li[0].addEventListener('mouseover', ()=>{
    ul1.style.display = "block";
})

li[0].addEventListener('mouseleave', ()=>{
    ul1.style.display = "none";
})

li[1].addEventListener('mouseover', ()=>{
    ul2.style.display = "block";
})

li[1].addEventListener('mouseleave', ()=>{
    ul2.style.display = "none";
})

li[3].addEventListener('mouseover', ()=>{
    ul3.style.display = "block";
})

li[3].addEventListener('mouseleave', ()=>{
    ul3.style.display = "none";
})

li[4].addEventListener('mouseover', ()=>{
    ul4.style.display = "block";
})

li[4].addEventListener('mouseleave', ()=>{
    ul4.style.display = "none";
})

li[5].addEventListener('mouseover', ()=>{
    ul5.style.display = "block";
})

li[5].addEventListener('mouseleave', ()=>{
    ul5.style.display = "none";
})

li[6].addEventListener('mouseover', ()=>{
    ul6.style.display = "block";
})

li[6].addEventListener('mouseleave', ()=>{
    ul6.style.display = "none";
})