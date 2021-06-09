 CREATE TABLE recipes (
  recipe_id SERIAL,
  user_rating VARCHAR(255),
  genre VARCHAR(255),
  ingredients VARCHAR(255),
  name VARCHAR(255),
  public BOOLEAN
  );
 
 CREATE TABLE member (
  user_id SERIAL,
  first_name VARCHAR(20),
  last_name VARCHAR(20),
  favorite_recipes VARCHAR(255) REFERENCES recipes(recipe_id)
  );
 
 CREATE TABLE auth (
  auth_id SERIAL,
  user_id INT REFERENCES member(user_id),
  password TEXT,
  email VARCHAR(255)
  );

CREATE TABLE reviews (
  rating_id SERIAL,
  user_review VARCHAR(255),
  rating INT,
  user_id VARCHAR(255) REFERENCES member(user_id),
  recipe_id INT REFERENCES recipes(recipe_id)
  );