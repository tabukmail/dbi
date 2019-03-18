CREATE TABLE customer_area_node
(
  id          bigserial NOT NULL PRIMARY KEY,
  customer_id integer   NOT NULL,
  parent_id   bigint,
  name        text,
  description text
);