-- Create users table
CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name TEXT,
  email TEXT,
  username TEXT
);

-- Insert sample data
INSERT INTO users (id, name, email, username) VALUES
(1,'Leanne Graham','Sincere@april.biz','Bret'),
(2,'Ervin Howell','ervin@example.com','Antonette'),
(3,'Clementine Bauch','clementine@example.com','Samantha');

