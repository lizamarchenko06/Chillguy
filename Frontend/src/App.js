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
import ImageDisplay from './Components/Header/ImageDisplay.js';
import Slider from './Components/Slider.js';
import StuffList from './Pages/StuffList/StuffList.js';
import ProductDetail from './Pages/ProductDetail.js';
import Phone from './Pages/Phone.js'
import SmartWatch from './Pages/SmartWatch.js'
import KidsWatch from './Pages/KidsWatch.js'
import Headphones from './Pages/Headphones.js'
import ElectricShaves from './Pages/ElectricShaves.js'
import Fridge from './Pages/Fridge.js'
import GasStoves from './Pages/GasStoves.js'
import HairDryer from './Pages/HairDryer.js'
import Laptop from './Pages/Laptop.js'
import ScrewDriver from './Pages/ScrewDrivers.js'

function App() {
  const location = useLocation();

  return (
    <div className='App'>

      
     
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
        <Route path="/products" element={<StuffList />} />
        <Route path="/products/:productName" element={<ProductDetail />} />
        <Route path="/product/:category" element={<Phone />} />
        <Route path="/product/:category" element={<SmartWatch />} />
        <Route path="/product/:category" element={<KidsWatch />} />
        <Route path="/product/:category" element={<Headphones />} />
        <Route path="/product/:category" element={<ElectricShaves />} />
        <Route path="/product/:category" element={<Fridge />} />
        <Route path="/product/:category" element={<GasStoves />} />
        <Route path="/product/:category" element={<HairDryer />} />
        <Route path="/product/:category" element={<Laptop />} />
        <Route path="/product/:category" element={<ScrewDriver />} />
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
