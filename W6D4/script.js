document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!
  
  const addSFPlace = (e) => {
    e.preventDefault();
    
    let input = document.querySelector(".favorite-input");
    let text = input.value;
    input.value = "";
    

    let li = document.createElement("li");
    li.textContent = text;
    
    let sfplaces = document.getElementById('sf-places');
    sfplaces.appendChild(li);
  };
  
  let submit = document.querySelector(".favorite-submit");
  submit.addEventListener("click", addSFPlace);



  // adding new photos

  // --- your code here!
  
  const removeHidden = (e) => {
    let form = document.querySelector('.photo-form-container');
    form.classList.remove('hidden');
  }

  let photobutton = document.querySelector(".photo-show-button");
  photobutton.addEventListener("click", removeHidden);
  
  
  const addPhoto = (e) => {
    e.preventDefault();
    let dogul = document.querySelector('.dog-photos');
    let textarea = document.querySelector('.photo-url-input')
    
    let li = document.createElement("li");
    let img = document.createElement("img");
    img.src = textarea.value;
    
    li.appendChild(img);
    dogul.appendChild(li);
  }

  let addphotoinput = document.querySelector(".photo-url-submit");
  addphotoinput.addEventListener("click", addPhoto);
});
