SELECT MAX(earnings), COUNT(*)
FROM
    (SELECT months * salary AS earnings
    FROM employee) e
WHERE earnings =
    (SELECT MAX(months * salary)
    FROM employee);
