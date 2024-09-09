DROP DATABASE IF EXISTS isucon;

CREATE DATABASE isucon;

use isucon;

DROP TABLE IF EXISTS photos;

CREATE TABLE photos (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  url VARCHAR(255)
);

select * from photos where name = 'Photo 1';

INSERT INTO
  photos (id, name, url)
VALUES
  (
    1,
    'Photo 1',
    '1.jpg'
  ),
  (
    2,
    'Photo 2',
    '2.jpg'
  ),
  (
    3,
    'Photo 3',
    '3.jpg'
  ),
  (
    4,
    'Photo 4',
    '4.jpg'
  ),
  (
    5,
    'Photo 5',
    '5.jpg'
  ),
  (
    6,
    'Photo 6',
    '6.jpg'
  );