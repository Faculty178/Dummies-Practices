//sitemap 버튼이 클릭되면 
//sitemap section의 클래스 네임을 제거해 보이게 한다 

const toggleBtn = document.querySelector('.header_etc a');
const closeBtn = document.getElementById('closeBtn');
const sitemap = document.getElementById('sitemap');
const HIDDEN = "hidden_sitemap";

function showSitemap(){
    sitemap.classList.remove(HIDDEN);
}

function closeSitemap(){
    sitemap.classList.add(HIDDEN);
}

toggleBtn.addEventListener("click", showSitemap);
closeBtn.addEventListener("click", closeSitemap);