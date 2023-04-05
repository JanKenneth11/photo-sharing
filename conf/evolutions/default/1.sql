#--- !Ups

CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    nickname VARCHAR(100),
    avatar TEXT,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

CREATE TABLE IF NOT EXISTS user_uploads (
    id SERIAL PRIMARY KEY,
    user_id SERIAL NOT NULL,
    file_name TEXT NOT NULL,
    mime VARCHAR(10) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS user_followers(
    id SERIAL PRIMARY KEY,
    user_id SERIAL NOT NULL,
    user_following SERIAL NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id)
    FOREIGN KEY (user_following) REFERENCES users(id)
);

#--- !Downs

DROP TABLE users;
DROP TABLE user_uploads;
DROP TABLE user_followers;