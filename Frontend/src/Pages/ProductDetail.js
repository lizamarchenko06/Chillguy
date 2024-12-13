import React, { useState, useEffect } from 'react';
import { useParams } from 'react-router-dom';


function ProductDetail() {
    const { productName } = useParams();
    const [product, setProduct] = useState(null);

    useEffect(() => {
        const fetchProduct = async () => {
            try {
                const response = await fetch(`http://localhost:5000/api/products/${productName}`);
                if (!response.ok) {
                    throw new Error('Ошибка при загрузке данных');
                }
                const data = await response.json();
                setProduct(data);
            } catch (error) {
                console.error('Ошибка при загрузке данных:', error);
            }
        };

        fetchProduct();
    }, [productName]);

    return (
        <div>
            {product ? (
                <div className="product-detail">
                    <img src={product.image} alt={product.title} />
                    <h2>{product.title}</h2>
                    <p>{product.description}</p>
                    <p>Цена: {product.price}₽</p>
                    <p>Рейтинг: {product.rating}</p>
                </div>
            ) : (
                <p>Загрузка продукта...</p>
            )}
        </div>
    );
}

export default ProductDetail;