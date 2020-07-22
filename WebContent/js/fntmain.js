var slideContainer = document.querySelector('.container');
var slides = document.querySelectorAll('.item');
var totalSlides = slides.length; // item의 갯수


var sliderWidth = slideContainer.clientWidth; // container의 width
var slideIndex = 0;
var slider = document.querySelector('.slider');

slider.style.width = sliderWidth * totalSlides + 'px';

showSlides()

function showSlides() {
    for(var i=0;i<slides.length;i++){
        slider.style.left = -(sliderWidth * slideIndex) + 'px';    
    }
    slideIndex++;
    if (slideIndex === totalSlides) {
        slideIndex = 0;
    }
    setTimeout(showSlides, 5000); 
}
