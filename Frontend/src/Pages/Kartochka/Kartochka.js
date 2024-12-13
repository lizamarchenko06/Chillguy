import React from 'react';
import './Kartochka.css';

function Kartochka() {
    return (
        <div>
            <header className="header">
                <div className="header-container">
                    <a className="home-btn" href="#">
                        <svg className="home-icon" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
                            <g id="Ic"></g>
                        </svg>
                    </a>
                    <nav className="nav">
                        <div className="nav-left">
                            <a href="/" className="nav-link">Главная</a>
                        </div>
                        <div className="nav-center">
                            <div className="search-box">
                                <input 
                                    type="text" 
                                    placeholder="Type to search" 
                                    className="search-txt" 
                                />
                                <button className="search-btn" aria-label="Search">
                                    <svg className="search-icon" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
                                        <g id="Icon_copy" data-name="Icon copy">
                                            <path d="m20 13a7.0081 7.0081 0 0 0 -7-7 1 1 0 0 0 0 2 5.0059 5.0059 0 0 1 5 5 1 1 0 0 0 2 0z"/>
                                            <path d="m29.707 28.293-8.257-8.2577a10.9967 10.9967 0 0 0 -16.2273-14.8122 10.9965 10.9965 0 0 0 14.8131 16.2263l8.2572 8.2576a1 1 0 0 0 1.414-1.414zm-25.707-15.293a8.9987 8.9987 0 1 1 9 9 8.942 8.942 0 0 1 -9-9z"/>
                                        </g>
                                    </svg>
                                </button>
                            </div>
                        </div>
                        <div className="nav-right">
                            <div className="contact-info">+8 914 300 99 23</div>
                        </div>
                    </nav>
                </div>
            </header>
            <div className="page-container">
                <div className="product-card-large">
                    <div className="product-image-container">
                        <img src="chillguys-app/src/Pages/Kartochka/gerdfge.webp" alt="Пылесос Dyson V15" className="product-image" />
                    </div>
                    <div className="product-details">
                        <h2 className="product-title">Пылесос вертикальный Dyson V15 Detect Absolute серебристый</h2>
                        <div className="rating-container">
                            <div className="rating">
                                <span className="star">&#9733;</span>
                                <span className="star">&#9733;</span>
                                <span className="star">&#9733;</span>
                                <span className="star">&#9733;</span>
                                <span className="star">&#9734;</span>
                            </div>
                            <button className="favorite-button" aria-label="Добавить в избранное">
                                <img src="chillguys-app/src/Pages/Kartochka/158722.png" alt="Добавить в избранное" className="favorite-icon" />
                            </button>
                        </div>
                        <p className="product-description">Питание - от аккумулятора, 660 Вт, уборка: сухая, пылесборник - 0.76 л, работа от АКБ max - 60 мин</p>
                        <div className="product-price-container">
                            <div className="product-price">65 999₽</div>
                        </div>
                        <div className="button-container">
                            <button className="product-button">Купить</button>
                        </div>
                    </div>
                </div>
            </div>
            <footer>
                <div className="footer-links">
                    <p>
                        <a href="#">Контакты</a> | 
                        <a href="#">Политика конфиденциальности</a> | 
                        <a href="#">Условия использования</a>
                    </p>
                </div>
            </footer>
        </div>
    );
}

export default Kartochka;