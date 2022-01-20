DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS user_follows;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS likes;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT,
  username TEXT,
  location TEXT
);

CREATE TABLE user_follows (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  main_user_id INTEGER,
  follower_id INTEGER
);

CREATE TABLE posts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  post_string TEXT,
  user_id INTEGER
);

CREATE TABLE comments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  comment_text TEXT,
  user_id INTEGER,
  post_id INTEGER
);

CREATE TABLE likes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER,
  post_id INTEGER
);