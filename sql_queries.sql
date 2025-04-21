
-- Найти пользователя по email
SELECT * FROM users WHERE email = 'test@example.com';

-- Проверить статус заказа по ID
SELECT status FROM orders WHERE order_id = 123;

-- Получить все бронирования с JOIN
SELECT u.name, b.booking_date FROM users u
JOIN bookings b ON u.id = b.user_id
WHERE b.status = 'confirmed';
