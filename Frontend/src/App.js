import React from 'react';
import { BrowserRouter as Router, Route, Routes, useLocation } from 'react-router-dom';
import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css'; 
import Header from './Components/Header/Header';
import Main from './Pages/Main/Main.js';
import GiftForWife from './Pages/GiftForWife/GiftForWife.js';
import GiftForHusband from './Pages/GiftForHusband/GiftForHusband.js';
import GiftForKids from './Pages/GiftForKids/GiftForKids.js';
import GiftForParents from './Pages/GiftForParents/GiftForParents.js';
import Survey from './Pages/Survey/Survey.js';
import Results from './Pages/Results/Results.js';
import VideoBackground from './Components/VideoBackground.js';
import ImageDisplay from './Components/Header/ImageDisplay.js';
import Slider from './Components/Slider.js';
import StuffList from './Pages/StuffList/StuffList.js';

function App() {
  const location = useLocation();

  return (
    <div className='App'>
      <VideoBackground />
      
      {/* Условный рендеринг Header и Slider только на главной странице и другой странице */}
      {(location.pathname === '/' || location.pathname === '/other-page') && (
        <>
          <Header />
          <Slider />
        </>
      )}

      <Routes>
        <Route path="/" element={<Main />} />
        <Route path="/gift-for-wife" element={<GiftForWife />} />
        <Route path="/gift-for-husband" element={<GiftForHusband />} />
        <Route path="/gift-for-kids" element={<GiftForKids />} />
        <Route path="/gift-for-parents" element={<GiftForParents />} />
        <Route path="/survey/:category" element={<Survey />} />
        <Route path="/results" element={<Results />} />
        <Route path="/stuff-list" element={<StuffList />}/>
      </Routes>
      
      <ImageDisplay />
    </div>
  );
}
const MainApp = () => (
  <Router>
    <App />
  </Router>
);

export default MainApp;
