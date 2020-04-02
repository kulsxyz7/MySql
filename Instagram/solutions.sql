--  FINDING 5 OLDEST USERS

SELECT * 
FROM users
ORDER BY created_at
LIMIT 5;

-- MOST POPULAR REGISTRATION DATE

SELECT 
    DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;

-- IDENTIFY Inactive Users(users with no photos)

SELECT 
    username,
    image_url
FROM users
LEFT JOIN photos
    ON users.id = photos.user_id
WHERE photos.id IS NULL;

-- 4. Identify most popular photos (and user who created it)

SELECT 
    username,
    photos.id,
    photos.image_url,
    COUNT(*) as total
FROM photos
INNER JOIN likes
    ON likes.photo_id = photos.id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;

-- Calculate avg number of photos per user

SELECT (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS avg;

-- Most popular Hashtag

SELECT 
    tags.tag_name,
    COUNT(*) AS total
FROM photo_tags
JOIN tags
    ON photo_tags.tag_id = tags.id
GROUP BY tags.id
ORDER BY total DESC
LIMIT 5;


-- Finding Bots - users who have liked every single photo

SELECT 
    username,
    COUNT(*) AS num_likes
FROM users
INNER JOIN likes
    ON users.id = likes.user_id
GROUP BY likes.user_id
HAVING num_likes = (SELECT COUNT(*) FROM photos);