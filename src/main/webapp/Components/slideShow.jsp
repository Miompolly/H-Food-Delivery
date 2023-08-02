<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="carouselExampleDark" class="carousel carousel-dark slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner " style="height: 80vh;width: 100%;padding: 0% 10%" style="font-weight:bold;">
    <div class="carousel-item active" data-bs-interval="10000">
      <img src="food_images/cheesescones" class="d-block w-100" alt="...">
      <div class="carousel-caption osition-absolute  top-50" >
        <h1 style="color:white;">cheese scones</h1>
        <p>Some representative placeholder content for the first slide.</p>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="food_images/cheeseomelette.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption osition-absolute top-50">
        <h1 style="color:white;">cheese omelette</h1>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="food_images/chickenchowmein.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption position-absolute top-50">
        <h1 style="color:white;">chicken chowmein</h1>
        <p>Some representative placeholder content for the third slide.</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>