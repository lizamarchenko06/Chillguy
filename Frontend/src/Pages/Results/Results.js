import React from 'react';
import { useLocation } from 'react-router-dom';
import './Results.css';

const Results = () => {
  const location = useLocation();
  const { answers } = location.state || { answers: [] };

  
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
  const age = answers[0]; 
  const gender = answers[1]; 
  const interest = answers[2]; 

  return (
    <div className="results-container">
      <div className="results-content">
        <h1>Ваши результаты</h1>
        <ul>
          <li>Возраст: {age}</li>
          {category === "parents" && <li>Пол: {gender}</li>}
          {category === "wife" && <li>Интерес: {interest}</li>} 
          {category === "husband" && <li>Интерес: {interest}</li>}
          {category === "kids" && <li>Интерес: {interest}</li>} 
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