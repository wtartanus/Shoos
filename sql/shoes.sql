DROP TABLE orders;

CREATE TABLE orders(
 id SERIAL4 primary key,
  name VARCHAR(255),
  address VARCHAR(255),
  quantity INT4,
  size INT4
);