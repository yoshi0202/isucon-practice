CREATE TABLE photos (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  url VARCHAR(255)
);

INSERT INTO
  photos (id, name, url)
VALUES
  (
    1,
    'Photo 1',
    'http://localhost:3000/1.jpg'
  ),
  (
    2,
    'Photo 2',
    'http://localhost:3000/2.jpg'
  ),
  (
    3,
    'Photo 3',
    'http://localhost:3000/3.jpg'
  ),
  (
    4,
    'Photo 4',
    'http://localhost:3000/4.jpg'
  ),
  (
    5,
    'Photo 5',
    'http://localhost:3000/5.jpg'
  ),
  (
    6,
    'Photo 6',
    'http://localhost:3000/6.jpg'
  );