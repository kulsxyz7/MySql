CREATE TABLE comments(
    content VARCHAR(100),
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE comments2(
    content VARCHAR(100),
    changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);