import React, { useState, useEffect } from 'react';
import './StuffList.css';

function StuffList() {
    const [products, setProducts] = useState([]);
    const [sortOption, setSortOption] = useState('default');

    useEffect(() => {
        const fetchProducts = async () => {
            try {
                const response = await fetch('http://localhost:5000/api/products');
                if (!response.ok) {
                    throw new Error('Ошибка при загрузке данных');
                }
                const data = await response.json();
                setProducts(data);
            } catch (error) {
                console.error('Ошибка при загрузке данных:', error);
            }
        };

        fetchProducts();
    }, []);

    const handleSortChange = (event) => {
        const selectedOption = event.target.value;
        setSortOption(selectedOption);
        let sortedProducts = [...products];

        if (selectedOption === 'asc') {
            sortedProducts.sort((a, b) => a.price - b.price);
        } else if (selectedOption === 'desc') {
            sortedProducts.sort((a, b) => b.price - a.price);
        }

        setProducts(sortedProducts);
    };

    return (
        <div>
            <header className="header">

<div className="header-container">
    <a className="home-btn" href="#">
        <svg className="home-icon" viewBox="0 0 32 32" xmlns="https://icon666.com/ru/icon/glavnaya_stranitsa_7dvodp5a4g7w">
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

            <div className="container">
                <div className="filter-box">
                    <div className="filter-option">
                        <label htmlFor="sortSelect">Сортировка:</label>
                        <select id="sortSelect" value={sortOption} onChange={handleSortChange}>
                            <option value="default">По умолчанию</option>
                            <option value="asc">По увеличению цены</option>
                            <option value="desc">По уменьшению цены</option>
                        </select>
                    </div>
                </div>

                <div className="products" id="productList">
                    {products.length > 0 ? (
                        products.map(product => (
                            <div className="product-card" key={product.id}>
                                <img src={product.image} alt={product.title} className="product-image" />
                                <div className="product-details">
                                    <div className="product-title">{product.title}</div>
                                    <div>{product.description}</div>
                                    <div className="product-price">Цена: {product.price}₽</div>
                                    <div className="product-rating">Рейтинг: {product.rating}</div>
                                    <button className="product-button">Перейти</button>
                                </div>
                            </div>
                        ))
                    ) : (
                        <p>Загрузка товаров...</p>
                    )}
                </div>
            </div>

            <footer>
                <p>
                    <a href="#">Контакты</a> | 
                    <a href="#">Политика конфиденциальности</a> | 
                    <a href="#">Условия использования</a>
                </p>
            </footer>
        </div>
    );
}

export default StuffList;