// galeria.js


document.addEventListener("DOMContentLoaded", function () {

const images = document.querySelectorAll(".carrusel img"); // Todas las imágenes

let currentIndex = 0; // Índice de la imagen actual


// Función para mostrar la imagen activa

function showImage(index) {

// Ocultar todas las imágenes

images.forEach(img => img.classList.remove("active"));

// Mostrar la imagen con la clase "active"

images[index].classList.add("active");

}


// Función para cambiar la imagen al siguiente índice

function nextImage() {

currentIndex = (currentIndex + 1) % images.length; // Incrementar índice, vuelve al inicio si llega al final

showImage(currentIndex);

}


// Mostrar la primera imagen al cargar

showImage(currentIndex);


// Añadir evento de clic en cada imagen

images.forEach(img => {

img.addEventListener("click", nextImage); // Cambiar la imagen al hacer clic

});

});