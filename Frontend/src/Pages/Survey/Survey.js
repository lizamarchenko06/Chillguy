import React, { useState } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import './Survey.css';

const surveys = {
  parents: [
    {
      question: "Укажите возрастную категорию",
      options: ["от 35 до 50", "от 50 до 65", "от 65 до 85"],
    },
    {
      question: "Укажите пол",
      options: ["Мужской", "Женский"],
    },
    {
      question: "Укажите интересы получателя",
      options: {
        Мужской: ["Гаджеты", "Строительство", "Активный отдых"],
        Женский: ["Кулинария", "Красота", "Активный отдых"],
      },
    },
  ],
  wife: [
    {
      question: "Укажите возрастную категорию",
      options: ["от 25 до 35", "от 35 до 50", "от 50 до 65"],
    },
    {
      question: "Укажите интересы получателя",
      options: ["Мода", "Кулинария", "Путешествия"],
    },
  ],
  husband: [
    {
      question: "Укажите возрастную категорию",
      options: ["от 30 до 40", "от 40 до 50", "от 50 до 60"],
    },
    {
      question: "Укажите интересы получателя",
      options: ["Спорт", "Техника", "Уход"],
    },
  ],
  kids: [
    {
      question: "Какой возраст ребенка?",
      options: ["до 5 лет", "от 5 до 10 лет", "от 10 до 15 лет"],
    },
    {
      question: "Какой интерес у ребенка?",
      options: ["Часы", "Ноутбук", "Обучение"],
    },
  ],
};

const Survey = () => {
  const { category } = useParams();
  const navigate = useNavigate();
  const [answers, setAnswers] = useState(Array(surveys[category].length).fill(null));
  const [step, setStep] = useState(0);

  const handleOptionSelect = (option) => {
    setAnswers(prev => {
      const newAnswers = [...prev];
      newAnswers[step] = option; // Сохраняем ответ на текущем шаге
      return newAnswers;
    });

    if (step < surveys[category].length - 1) {
      setStep(step + 1);
    } else {
      navigate('/results', { state: { answers } }); // Передаем все ответы в results
    }
  };

  const currentQuestion = surveys[category][step];

  return (
    <div>
      <h1>{currentQuestion.question}</h1>
      {Array.isArray(currentQuestion.options) ? (
        currentQuestion.options.map(option => (
          <button key={option} onClick={() => handleOptionSelect(option)}>
            {option}
          </button>
        ))
      ) : (
        Object.entries(currentQuestion.options).map(([key, options]) => (
          answers[1] === key && options.map(option => (
            <button key={option} onClick={() => handleOptionSelect(option)}>
              {option}
            </button>
          ))
        ))
      )}
    </div>
  );
};

export default Survey;