---UPDATE my_tree SET left_key = left_key+2, right_key = right_key+2 WHERE left_key > 11;
---UPDATE my_tree SET right_key = right_key + 2 WHERE right_key >= 11 AND left_key < 11;
INSERT INTO my_tree (id, names, left_key, right_key, levels, parent_id) values (18, 'leaf18', 11, (11+1), (2+1), 2);
 --$ADD NODE WHERE $$$$right_key=5 AND $$$ levels= ?
--UPDATE my_tree SET left_key = left_key + 2, right_key = right_key+2 WHERE left_key > $$$$$right_ key
--UPDATE my_tree SET right_key = right_key + 2 WHERE right_key >= $$$$$right_ key AND left_key < $$$$$right_ key;
 ------INSERT INTO my_tree SET left_key = $$$$$right_key, right_key = $$$$$right_key + 1, level = $$$$$level + 1 