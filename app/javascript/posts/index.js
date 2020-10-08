window.addEventListener('load', function(){

   const pullDownButton = document.getElementById("man-lists")
   const pullDownParents = document.getElementById("man-pull-down")

  pullDownButton.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color:skyblue;")
  })

  pullDownButton.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:rgb(0, 183, 255);")
  })

  pullDownButton.addEventListener('click', function() {
    if (pullDownParents.getAttribute("style") == "display:block;") {
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      pullDownParents.setAttribute("style", "display:block;")
    }
  })
})








window.addEventListener('load', function(){

  const pullDownButton = document.getElementById("woman-lists")
  const pullDownParents = document.getElementById("woman-pull-down")

 pullDownButton.addEventListener('mouseover', function(){
   this.setAttribute("style", "background-color:rgb(235, 173, 235);")
 })

 pullDownButton.addEventListener('mouseout', function(){
   this.removeAttribute("style", "background-color:violet;")
 })

 pullDownButton.addEventListener('click', function() {
   if (pullDownParents.getAttribute("style") == "display:block;") {
     pullDownParents.removeAttribute("style", "display:block;")
   } else {
     pullDownParents.setAttribute("style", "display:block;")
   }
 })
})

