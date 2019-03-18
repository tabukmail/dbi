WITH RECURSIVE
c_with_level AS (
    SELECT *, 0 as lvl
    FROM   balance33
    WHERE  parent_id IS NULL
    UNION ALL
    SELECT child.*, parent.lvl + 1
    FROM   balance33 child
    JOIN   c_with_level parent ON parent.id = child.parent_id
),
maxlvl AS (
  SELECT max(lvl) maxlvl FROM c_with_level
),
c_tree AS (
    SELECT c_with_level.*, jsonb '[]' children
    FROM   c_with_level, maxlvl
    WHERE  lvl = maxlvl
    UNION 
    (
        SELECT (branch_parent).*, jsonb_agg(branch_child)
        FROM (
            SELECT branch_parent, branch_child
            FROM c_with_level branch_parent
            JOIN c_tree branch_child ON branch_child.parent_id = branch_parent.id
        ) branch
        GROUP BY branch.branch_parent
        UNION
        SELECT c.*, jsonb '[]' children
        FROM   c_with_level c
        WHERE  NOT EXISTS (SELECT 1 FROM c_with_level hypothetical_child WHERE hypothetical_child.parent_id = c.id)
    )
)
SELECT jsonb_pretty(row_to_json(c_tree)::jsonb)
FROM c_tree
WHERE lvl = 0;