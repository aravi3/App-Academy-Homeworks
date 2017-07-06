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

  const addLi = (e) => {
    e.preventDefault();

    const spotInput = document.querySelector(".favorite-input");
    const spot = spotInput.value;
    spotInput.value = "";

    const ul = document.getElementById("sf-places");
    const li = document.createElement("li");
    li.textContent = spot;
    ul.appendChild(li);
  };

  document.querySelector(".favorite-submit").addEventListener("click", addLi);



  // adding new photos

  const togglePhotoForm = (e) => {
    e.preventDefault();

    const form = document.querySelector(".photo-form-container");

    if (form.className === "photo-form-container") {
      form.className = "photo-form-container hidden";
    }
    else {
      form.className = "photo-form-container";
    }
  }

  document.querySelector(".photo-show-button").addEventListener("click", togglePhotoForm);

  const addImg = (e) => {
    e.preventDefault();

    const imageURL = document.querySelector(".photo-url-input").value;
    document.querySelector(".photo-url-input").value = "";

    const ul = document.querySelector(".dog-photos");
    const li = document.createElement("li");
    const img = document.createElement("img");
    img.src = imageURL;
    li.appendChild(img);
    ul.appendChild(li);
  }

  document.querySelector(".photo-url-submit").addEventListener("click", addImg);


});
