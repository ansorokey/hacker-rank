SELECT  DISTINCT node, n_type
FROM
(
SELECT a.n as child, b.n as node, b.p as parent,
    CASE
    WHEN b.p is NULL THEN 'Root'
    WHEN a.n is NULL THEN 'Leaf'
    ELSE 'Inner'
    END as n_type
FROM BST a
RIGHT JOIN BST b
ON b.n = a.p
ORDER BY b.n
) as tree
ORDER BY node;
