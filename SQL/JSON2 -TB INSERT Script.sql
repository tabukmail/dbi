INSERT INTO customer_area_node(customer_id, parent_id, name, description) VALUES
  (1,  NULL, 'name1',  '1'),
  (2,  1,    'name2',  '1.2'),
  (3,  1,    'name3',  '1.3'),
  (4,  2,    'name4',  '1.2.4'),
  (5,  2,    'name5',  '1.2.5'),
  (6,  3,    'name6',  '1.3.6'),
  (7,  3,    'name7',  '1.3.7'),
  (9,  6,    'name9',  '1.3.6.9'),
  (10, 3,    'name10', '1.3.10');