
-- Найти пользователя по email
SELECT * FROM users WHERE email = 'test@example.com';

-- Проверить статус заказа по ID
SELECT status FROM orders WHERE order_id = 123;

-- Получить все бронирования с JOIN
SELECT u.name, b.booking_date FROM users u
JOIN bookings b ON u.id = b.user_id
WHERE b.status = 'confirmed';

-- SQL запрос, который вернет название жанра и кол-во книг в этом жанре, зарегистрированных в библиотеке после 12 апреля 2003 года
SELECT g.name AS genre_name,
    COUNT(DISTINCT bg.book_id) AS book_count
FROM book_reg br
JOIN book_genres bg ON br.id = bg.book_id
JOIN genres g ON bg.genre_id = g.id
WHERE br.date > '2003-04-12'
GROUP BY g.name;

