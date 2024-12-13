import React, { useState } from 'react';
import './Slider.css';
import slider1 from './slider1.jpg';
import slider2 from './slider2.jpg';
import slider3 from './slider3.jpg';
import slider4 from './slider4.jpg';

function Slider() {
  const slides = [
    { url: 'https://www.dns-shop.ru/actions/', image: slider1 },
    { url: 'https://www.dns-shop.ru/configurator/', image: slider2 },
    { url: 'https://www.dns-shop.ru/gift-card/', image: slider3 },
    { url: 'https://www.dns-shop.ru/catalog/884fcc247988678f/karty-oplaty-i-cifrovoj-kontent/', image: slider4 },
  ];
  
  const [currentIndex, setCurrentIndex] = useState(0);

  const nextSlide = () => {
    setCurrentIndex((prevIndex) => (prevIndex + 1) % slides.length);
  };

  const prevSlide = () => {
    setCurrentIndex((prevIndex) => (prevIndex - 1 + slides.length) % slides.length);
  };

  return (
    <div className="slider-container">
      <div className="slider-background" />
      <button onClick={prevSlide} className="slider-button">←</button>
      <a href={slides[currentIndex].url} target="_blank" rel="noopener noreferrer">
        <img 
          src={slides[currentIndex].image} 
          alt={`Slide ${currentIndex + 1}`} 
        />
      </a>
      <button onClick={nextSlide} className="slider-button">→</button>
    </div>
  );
}

export default Slider;