import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import './Header.css';
import chillbroImage from './chillbro.png';

function Header() {
    const navigate = useNavigate();
    const [searchQuery, setSearchQuery] = useState('');

    const handleCategoryClick = (category) => {
        navigate(`/survey/${category}`);
    };

    const handleSearchChange = (event) => {
        setSearchQuery(event.target.value);
    };

    const handleSearchSubmit = (event) => {
        event.preventDefault(); // предотвращает перезагрузку страницы
        if (searchQuery.toLowerCase() === 'телефон') {
            navigate('/phone');
        } else if (searchQuery.toLowerCase() === 'смартфон') {
            navigate('/smartphone');
        } else {
            alert('Ничего не найдено');
        }
    };

    return (
        <header className="header">
            <div className="header-container">
                <nav className="nav">
                    <a href="/" className="nav-link" style={{ fontSize: '20px' }}>
                        <svg
                            className="home-icon"
                            viewBox="0 0 24 24"
                            xmlns="http://www.w3.org/2000/svg"
                            width="16"
                            height="16"
                            fill="white"
                            style={{ marginRight: '5px' }} // Отступ между иконкой и текстом
                        >
                            <path d="m23.619 10.849-11.1-10.64c-.29-.278-.748-.278-1.038 0l-11.111 10.651c-.235.235-.37.559-.37.89 0 .689.561 1.25 1.25 1.25h1.75v9.5c0 .828.672 1.5 1.5 1.5h4.25c.414 0 .75-.336.75-.75v-6.5c0-.137.112-.25.25-.25h4.5c.137 0 .25.113.25.25v6.5c0 .414.336.75.75.75h4.25c.828 0 1.5-.672 1.5-1.5v-9.5h1.75c.689 0 1.25-.561 1.25-1.25 0-.331-.135-.655-.381-.901z" />
                        </svg>
                        Главная
                    </a>
                    <form className="search-box" onSubmit={handleSearchSubmit}>
                        <input 
                            type="text" 
                            placeholder="Type to search" 
                            className="search-txt" 
                            value={searchQuery} 
                            onChange={handleSearchChange} 
                        />
                        <button type="submit" className="search-btn">
                            <svg className="search-icon" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
                                <g id="Icon_copy" data-name="Icon copy">
                                    <path d="m20 13a7.0081 7.0081 0 0 0 -7-7 1 1 0 0 0 0 2 5.0059 5.0059 0 0 1 5 5 1 1 0 0 0 2 0z" />
                                    <path d="m29.707 28.293-8.257-8.2577a10.9967 10.9967 0 0 0 -16.2273-14.8122 10.9965 10.9965 0 0 0 14.8131 16.2263l8.2572 8.2576a1 1 0 0 0 1.414-1.414zm-25.707-15.293a8.9987 8.9987 0 1 1 9 9 8.942 8.942 0 0 1 -9-9z" />
                                </g>
                            </svg>
                        </button>
                    </form>
                    <img src={chillbroImage} alt="Chill Bro" className="header-image" />
                </nav>
                <div className="gift-categories">
                    <div className="categories-container">
                        <button className="category-button" onClick={() => handleCategoryClick('wife')}><h3>Подарок для жены</h3></button>
                        <button className="category-button" onClick={() => handleCategoryClick('husband')}><h3>Подарок для мужа</h3></button>
                        <button className="category-button" onClick={() => handleCategoryClick('kids')}><h3>Подарок для детей</h3></button>
                        <button className="category-button" onClick={() => handleCategoryClick('parents')}><h3>Подарок для родителей</h3></button>
                    </div>
                </div>
            </div>
        </header>
    );
}

export default Header;