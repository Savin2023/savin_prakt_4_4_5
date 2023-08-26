use vk;

-- Повтор заданий из прошлого ДЗ
SELECT users.username, chats.title,chats.description FROM users 
JOIN users_to_chats ON users.id=users_to_chats.user_id 
JOIN chats ON users_to_chats.chat_id=chats.id
WHERE users.id=2 ORDER BY chats.title DESC;

SELECT users.username, chats.title,users_to_chats.enter_datetime FROM users
JOIN users_to_chats ON users.id=users_to_chats.user_id 
JOIN chats ON users_to_chats.chat_id=chats.id
WHERE users.id=5 ORDER BY users_to_chats.enter_datetime;

SELECT users.username, chats.title,users_to_chats.enter_datetime FROM users
JOIN chats ON users.id=chats.owner_id
JOIN users_to_chats ON users_to_chats.chat_id=chats.id
WHERE chats.id=1;

-- ==================================================================================
-- задание 1
SELECT users.username, chats.title FROM users
LEFT JOIN chats ON users.id=chats.owner_id;

-- задание 2
SELECT users.username,users_to_chats.user_id FROM users
LEFT JOIN users_to_chats ON users.id=users_to_chats.user_id;

-- задание 3 
SELECT users.username, chats.title,chats.description FROM users 
JOIN users_to_chats ON users.id=users_to_chats.user_id 
JOIN chats ON users_to_chats.chat_id=chats.id
WHERE users.id=5 ORDER BY chats.title DESC;

-- задание 4 
SELECT users.username, chats.title,users_to_chats.enter_datetime FROM users
JOIN users_to_chats ON users.id=users_to_chats.user_id 
JOIN chats ON users_to_chats.chat_id=chats.id
WHERE users.id=2 ORDER BY users_to_chats.enter_datetime;

