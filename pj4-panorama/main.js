<script>
    const circle = document.quesrySelector("#circle");
    const article = document.quesrySelectorAll("article");

    for(let el of article){

        el.addEventListener("mouseenter",e=>{
            circle.style.animationPlayState = "paused";
        })};

    
    for(let el of article){
         el.addEventListener("mouseleave", e=>{
            circle.style.animationPlayState = "running";
        })};
       

</script>