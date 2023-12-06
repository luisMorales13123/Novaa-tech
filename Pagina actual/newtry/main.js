const menuBtn = document.querySelector(".menu");
const navegacion = document.querySelector(".navegacion");

menuBtn.addEventListener("click", () => {
  menuBtn.classList.toggle("active");
  navegacion.classList.toggle("active");
});

const btns = document.querySelectorAll(".posicionImg");
const slides = document.querySelectorAll(".img");
const contents = document.querySelectorAll(".contenido");

var sliderNav = function(manual) {
  btns.forEach((btn) => {
    btn.classList.remove("active");
  });

  slides.forEach((slide) => {
    slide.classList.remove("active");
  });

  contents.forEach((contenido) => {
    contenido.classList.remove("active");
  });

  btns[manual].classList.add("active");
  slides[manual].classList.add("active");
  contents[manual].classList.add("active");
}

btns.forEach((btn, i) => {
  btn.addEventListener("click", () => {
    sliderNav(i);
  });
});







