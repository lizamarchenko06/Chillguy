import React from 'react';
import { useLocation } from 'react-router-dom';
import './Results.css';

const Results = () => {
  const location = useLocation();
  const { answers } = location.state || { answers: [] };

  // Определяем интересы для каждой категории
  const interests = {
    wife: ["Мода", "Кулинария", "Путешествия"],
    husband: ["Спорт", "Техника", "Автомобили"],
    kids: ["Игрушки", "Спорт", "Наука"],
    parents: {
      Мужской: ["Рыбалка", "Строительство", "Активный отдых"],
      Женский: ["Кулинария", "Шитье", "Активный отдых"],
    },
  };

  const category = location.pathname.split('/')[2];
  const age = answers[0]; // Возраст
  const gender = answers[1]; // Пол (только для родителей)
  const interest = answers[2]; // Интерес

  return (
    <div className="results-container">
      <div className="results-content">
        <h1>Ваши результаты</h1>
        <ul>
          <li>Возраст: {age}</li>
          {category === "parents" && <li>Пол: {gender}</li>} {/* Пол только для родителей */}
          {category === "wife" && <li>Интерес: {interest}</li>} {/* Интерес для жены */}
          {category === "husband" && <li>Интерес: {interest}</li>} {/* Интерес для мужа */}
          {category === "kids" && <li>Интерес: {interest}</li>} {/* Интерес для детей */}
          {category === "parents" && (
            <li>
              Интересы: {interests.parents[gender]?.join(", ") || "Нет интересов"}
            </li>
          )}
        </ul>
      </div>
    </div>
  );
};

export default Results;