
-- Creating Clubs table
CREATE TABLE Clubs (
    club_id NUMBER PRIMARY KEY,
    club_name VARCHAR2(100),
    address VARCHAR2(255),
    manager_last_name VARCHAR2(50),
    manager_first_name VARCHAR2(50),
    manager_middle_name VARCHAR2(50),
    manager_phone VARCHAR2(20)
);

-- Inserting data into Clubs table
INSERT INTO Clubs (club_id, club_name, address, manager_last_name, manager_first_name, manager_middle_name, manager_phone) 
VALUES
(1, 'Бокс Club A', 'Москва, ул. Ленина, 10', 'Иванов', 'Иван', 'Иванович', '+7 900 123 45 67');

INSERT INTO Clubs (club_id, club_name, address, manager_last_name, manager_first_name, manager_middle_name, manager_phone) 
VALUES
(2, 'Бокс Club B', 'Санкт-Петербург, ул. Пушкина, 25', 'Петров', 'Петр', 'Петрович', '+7 911 987 65 43');

INSERT INTO Clubs (club_id, club_name, address, manager_last_name, manager_first_name, manager_middle_name, manager_phone) 
VALUES
(3, 'Бокс Club C', 'Екатеринбург, ул. Чапаева, 7', 'Сидоров', 'Сидор', 'Сидорович', '+7 922 234 56 78');

INSERT INTO Clubs (club_id, club_name, address, manager_last_name, manager_first_name, manager_middle_name, manager_phone) 
VALUES
(4, 'Бокс Club D', 'Новосибирск, ул. Советская, 14', 'Козлов', 'Алексей', 'Геннадьевич', '+7 923 345 67 89');

INSERT INTO Clubs (club_id, club_name, address, manager_last_name, manager_first_name, manager_middle_name, manager_phone) 
VALUES
(5, 'Бокс Club E', 'Краснодар, ул. Речная, 23', 'Васильев', 'Андрей', 'Николаевич', '+7 924 456 78 90');

INSERT INTO Clubs (club_id, club_name, address, manager_last_name, manager_first_name, manager_middle_name, manager_phone) 
VALUES
(6, 'Бокс Club F', 'Москва, ул. Тверская, 8', 'Куликов', 'Максим', 'Сергеевич', '+7 925 567 89 01');

INSERT INTO Clubs (club_id, club_name, address, manager_last_name, manager_first_name, manager_middle_name, manager_phone) 
VALUES
(7, 'Бокс Club G', 'Уфа, ул. Советская, 3', 'Морозов', 'Денис', 'Михайлович', '+7 926 678 90 12');

INSERT INTO Clubs (club_id, club_name, address, manager_last_name, manager_first_name, manager_middle_name, manager_phone) 
VALUES
(8, 'Бокс Club H', 'Челябинск, ул. Гагарина, 11', 'Белов', 'Анатолий', 'Федорович', '+7 927 789 01 23');

-- Creating Coaches table
CREATE TABLE Coaches (
    coach_id NUMBER PRIMARY KEY,
    club_id NUMBER,
    last_name VARCHAR2(50),
    first_name VARCHAR2(50),
    middle_name VARCHAR2(50),
    birth_date DATE,
    address VARCHAR2(255),
    phone VARCHAR2(20),
    FOREIGN KEY (club_id) REFERENCES Clubs(club_id)
);

-- Inserting data into Coaches table
INSERT INTO Coaches (coach_id, club_id, last_name, first_name, middle_name, birth_date, address, phone) 
VALUES
(1, 1, 'Смирнов', 'Алексей', 'Викторович', TO_DATE('1985-04-10', 'YYYY-MM-DD'), 'Москва, ул. Карла Маркса, 5', '+7 911 123 45 67');

INSERT INTO Coaches (coach_id, club_id, last_name, first_name, middle_name, birth_date, address, phone) 
VALUES
(2, 2, 'Кузнецов', 'Дмитрий', 'Игоревич', TO_DATE('1979-08-25', 'YYYY-MM-DD'), 'Санкт-Петербург, ул. Горького, 12', '+7 911 234 56 78');

INSERT INTO Coaches (coach_id, club_id, last_name, first_name, middle_name, birth_date, address, phone) 
VALUES
(3, 3, 'Орлов', 'Николай', 'Александрович', TO_DATE('1983-02-14', 'YYYY-MM-DD'), 'Екатеринбург, ул. Ленина, 18', '+7 922 345 67 89');

INSERT INTO Coaches (coach_id, club_id, last_name, first_name, middle_name, birth_date, address, phone) 
VALUES
(4, 4, 'Михайлов', 'Владимир', 'Анатольевич', TO_DATE('1975-06-30', 'YYYY-MM-DD'), 'Новосибирск, ул. Пролетарская, 5', '+7 923 456 78 90');

INSERT INTO Coaches (coach_id, club_id, last_name, first_name, middle_name, birth_date, address, phone) 
VALUES
(5, 5, 'Фролова', 'Ирина', 'Владимировна', TO_DATE('1990-01-15', 'YYYY-MM-DD'), 'Краснодар, ул. Победы, 30', '+7 924 567 89 01');

INSERT INTO Coaches (coach_id, club_id, last_name, first_name, middle_name, birth_date, address, phone) 
VALUES
(6, 6, 'Лебедев', 'Сергей', 'Николаевич', TO_DATE('1982-07-21', 'YYYY-MM-DD'), 'Москва, ул. Достоевского, 12', '+7 925 678 90 12');

INSERT INTO Coaches (coach_id, club_id, last_name, first_name, middle_name, birth_date, address, phone) 
VALUES
(7, 7, 'Шевченко', 'Тимур', 'Геннадиевич', TO_DATE('1980-12-03', 'YYYY-MM-DD'), 'Уфа, ул. Кирова, 19', '+7 926 789 01 23');

INSERT INTO Coaches (coach_id, club_id, last_name, first_name, middle_name, birth_date, address, phone) 
VALUES
(8, 8, 'Сухов', 'Георгий', 'Валентинович', TO_DATE('1986-11-29', 'YYYY-MM-DD'), 'Челябинск, ул. Гагарина, 11', '+7 927 890 12 34');


-- Creating Athletes table
CREATE TABLE Athletes (
    athlete_id NUMBER PRIMARY KEY,
    last_name VARCHAR2(50),
    first_name VARCHAR2(50),
    middle_name VARCHAR2(50),
    birth_date DATE,
    phone VARCHAR2(20),
    address VARCHAR2(255),
    weight NUMBER,
    weight_category VARCHAR2(50),
    ranking NUMBER,
    achievements VARCHAR2(255),
    titles VARCHAR2(255),
    country VARCHAR2(50)
);

-- Inserting data into Athletes table
INSERT INTO Athletes (athlete_id, last_name, first_name, middle_name, birth_date, phone, address, weight, weight_category, ranking, achievements, titles, country) 
VALUES
(1, 'Петров', 'Иван', 'Алексеевич', TO_DATE('1990-05-11', 'YYYY-MM-DD'), '+7 900 567 89 01', 'Москва, ул. Мира, 8', 78.5, 'Средний вес', 5, 'Чемпион России 2019', 'Мастер спорта', 'Россия');

INSERT INTO Athletes (athlete_id, last_name, first_name, middle_name, birth_date, phone, address, weight, weight_category, ranking, achievements, titles, country) 
VALUES
(2, 'Смирнов', 'Дмитрий', 'Александрович', TO_DATE('1992-08-15', 'YYYY-MM-DD'), '+7 901 678 90 12', 'Санкт-Петербург, ул. Лермонтова, 14', 85.0, 'Полутяжелый вес', 8, 'Бронзовый призер чемпионата Европы', 'Кандидат в мастера спорта', 'Россия');

INSERT INTO Athletes (athlete_id, last_name, first_name, middle_name, birth_date, phone, address, weight, weight_category, ranking, achievements, titles, country) 
VALUES
(3, 'Иванов', 'Максим', 'Игоревич', TO_DATE('1988-03-25', 'YYYY-MM-DD'), '+7 902 789 01 23', 'Екатеринбург, ул. Космонавтов, 10', 72.0, 'Легкий вес', 12, 'Призер Кубка России', 'Мастер спорта', 'Казахстан');

INSERT INTO Athletes (athlete_id, last_name, first_name, middle_name, birth_date, phone, address, weight, weight_category, ranking, achievements, titles, country) 
VALUES
(4, 'Козлов', 'Андрей', 'Валентинович', TO_DATE('1995-12-30', 'YYYY-MM-DD'), '+7 903 890 12 34', 'Новосибирск, ул. Октябрьская, 5', 90.5, 'Тяжелый вес', 4, 'Чемпион Сибири', 'Кандидат в мастера спорта', 'Россия');

INSERT INTO Athletes (athlete_id, last_name, first_name, middle_name, birth_date, phone, address, weight, weight_category, ranking, achievements, titles, country) 
VALUES
(5, 'Морозов', 'Алексей', 'Федорович', TO_DATE('1993-06-18', 'YYYY-MM-DD'), '+7 904 901 23 45', 'Краснодар, ул. Красная, 20', 77.0, 'Средний вес', 7, 'Серебряный призер Кубка России', 'Мастер спорта', 'Беларусь');

INSERT INTO Athletes (athlete_id, last_name, first_name, middle_name, birth_date, phone, address, weight, weight_category, ranking, achievements, titles, country) 
VALUES
(6, 'Сидоров', 'Никита', 'Владимирович', TO_DATE('1994-09-05', 'YYYY-MM-DD'), '+7 905 012 34 56', 'Москва, ул. Арбат, 6', 82.0, 'Полутяжелый вес', 9, 'Участник чемпионата мира', 'Кандидат в мастера спорта', 'Россия');

INSERT INTO Athletes (athlete_id, last_name, first_name, middle_name, birth_date, phone, address, weight, weight_category, ranking, achievements, titles, country) 
VALUES
(7, 'Фролова', 'Марина', 'Геннадьевна', TO_DATE('1991-10-13', 'YYYY-MM-DD'), '+7 906 123 45 67', 'Челябинск, ул. Гагарина, 11', 65.5, 'Легкий вес', 2, 'Чемпионка России 2022', 'Мастер спорта', 'Россия');


-- Creating Competitions table
CREATE TABLE Competitions (
    competition_id NUMBER PRIMARY KEY,
    competition_name VARCHAR2(100),
    competition_address VARCHAR2(255),
    year NUMBER,
    start_date DATE,
    end_date DATE
);

-- Inserting data into Competitions table
INSERT INTO Competitions (competition_id, competition_name, competition_address, year, start_date, end_date) 
VALUES
(1, 'Чемпионат России 2024', 'Москва, стадион Лужники', 2024, TO_DATE('2024-05-01', 'YYYY-MM-DD'), TO_DATE('2024-05-07', 'YYYY-MM-DD'));

INSERT INTO Competitions (competition_id, competition_name, competition_address, year, start_date, end_date) 
VALUES
(2, 'Кубок России 2024', 'Санкт-Петербург, Дворец спорта', 2024, TO_DATE('2024-06-10', 'YYYY-MM-DD'), TO_DATE('2024-06-15', 'YYYY-MM-DD'));



SET SERVEROUTPUT ON
DECLARE
  CURSOR athlete_cursor IS
    SELECT * FROM Athletes
    WHERE weight_category = 'Средний вес';

  athlete_record Athletes%ROWTYPE;

  e_no_athletes EXCEPTION;
  v_found BOOLEAN := FALSE;

BEGIN
  OPEN athlete_cursor;

  LOOP
    FETCH athlete_cursor INTO athlete_record;
    EXIT WHEN athlete_cursor%NOTFOUND;

    v_found := TRUE;
    DBMS_OUTPUT.PUT_LINE('ID: ' || athlete_record.athlete_id ||
                         ', Имя: ' || athlete_record.first_name ||
                         ', Фамилия: ' || athlete_record.last_name ||
                         ', Категория веса: ' || athlete_record.weight_category ||
                         ', Рейтинг: ' || athlete_record.ranking);
  END LOOP;

  CLOSE athlete_cursor;

  IF NOT v_found THEN
    RAISE e_no_athletes;
  END IF;

EXCEPTION
  WHEN e_no_athletes THEN
    DBMS_OUTPUT.PUT_LINE('Исключение: Нет спортсменов в категории "Средний вес".');
END;
/

CREATE OR REPLACE TRIGGER update_weight_category
BEFORE UPDATE OF weight ON Athletes
FOR EACH ROW
BEGIN
  IF :NEW.weight < 60 THEN
    :NEW.weight_category := 'Легкий вес';
  ELSIF :NEW.weight BETWEEN 60 AND 75 THEN
    :NEW.weight_category := 'Средний вес';
  ELSE
    :NEW.weight_category := 'Тяжелый вес';
  END IF;
END;
/
SELECT weight, weight_category FROM Athletes WHERE athlete_id = 1;

--Проверка триггера
UPDATE Athletes SET weight = 55 WHERE athlete_id = 1;
SELECT weight, weight_category FROM Athletes WHERE athlete_id = 1;
-- -------------------------------------------------------------
CREATE TABLE City_Statistics (
  record_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  city_name VARCHAR2(255),
  athlete_count NUMBER,
  function_calls NUMBER
);

CREATE OR REPLACE PACKAGE Athlete_City_Manager IS
  FUNCTION Count_Athletes_In_City(p_city_name VARCHAR2) RETURN NUMBER;
  PROCEDURE Log_Statistics;
END Athlete_City_Manager;
/

CREATE OR REPLACE PACKAGE BODY Athlete_City_Manager IS

  -- Переменная для подсчета количества вызовов функции
  v_function_calls NUMBER := 0;

  -- Функция для подсчета спортсменов из указанного города
  FUNCTION Count_Athletes_In_City(p_city_name VARCHAR2) RETURN NUMBER IS
    v_athlete_count NUMBER;
  BEGIN
    SELECT COUNT(*)
    INTO v_athlete_count
    FROM Athletes
    WHERE address LIKE '%' || p_city_name || '%';

    v_function_calls := v_function_calls + 1; -- Увеличиваем счетчик вызовов функции

    RETURN v_athlete_count;
  END Count_Athletes_In_City;

  -- Процедура для записи статистики
  PROCEDURE Log_Statistics IS
    v_city_name VARCHAR2(255) := 'Москва'; -- Текущий город (пример)
    v_athlete_count NUMBER;
  BEGIN
    -- Получаем количество спортсменов из города
    v_athlete_count := Count_Athletes_In_City(v_city_name);

    -- Записываем данные в таблицу статистики
    INSERT INTO City_Statistics (city_name, athlete_count, function_calls)
    VALUES (v_city_name, v_athlete_count, v_function_calls);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Статистика добавлена: Город = ' || v_city_name || 
                         ', Кол-во спортсменов = ' || v_athlete_count || 
                         ', Вызовы функции = ' || v_function_calls);
  END Log_Statistics;

END Athlete_City_Manager;
/

SELECT * FROM City_Statistics;

DECLARE
  v_count NUMBER;
BEGIN
  v_count := Athlete_City_Manager.Count_Athletes_In_City('Москва');
  DBMS_OUTPUT.PUT_LINE('Количество спортсменов из Москвы: ' || v_count);
END;

BEGIN
  Athlete_City_Manager.Log_Statistics;
END;
SELECT * FROM City_Statistics;