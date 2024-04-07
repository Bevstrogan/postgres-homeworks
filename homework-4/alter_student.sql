-- 1. Создать таблицу student с полями student_id serial, first_name varchar, last_name varchar, birthday date, phone varchar
CREATE TABLE student
(		student_id serial,
 		first_name varchar,
 		last_name varchar,
 		birthday date,
 		phone varchar
)

-- 2. Добавить в таблицу student колонку middle_name varchar
ALTER TABLE student ADD COLUMN middle_name varchar

-- 3. Удалить колонку middle_name
ALTER TABLE student DROP COLUMN middle_name

-- 4. Переименовать колонку birthday в birth_date
ALTER TABLE student RENAME birthday TO birth_date

-- 5. Изменить тип данных колонки phone на varchar(32)
ALTER TABLE student ALTER COLUMN phone SET DATA TYPE varchar(32)

-- 6. Вставить три любых записи с автогенерацией идентификатора
INSERT INTO student (student_id, first_name, last_name, birth_date, phone) VALUES
(default, 'Igor', 'Biryukov', '2000-09-01', '89117774448'),
(default, 'Artem', 'Ivanov', '2001-07-16', '89620286356'),
(default, 'Ryan', 'Gosling', '1980-11-12', '89522340169')

-- 7. Удалить все данные из таблицы со сбросом идентификатор в исходное состояние
TRUNCATE TABLE student
