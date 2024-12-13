import React from 'react';
import nazvanieImage from './nazvanie.png';
import './ImageDisplay.css';

function ImageDisplay() {
  return (
    <div className="image-display">
      <img 
        src={nazvanieImage} 
        alt="Nazvanie" 
      />
    </div>
  );
}

export default ImageDisplay;