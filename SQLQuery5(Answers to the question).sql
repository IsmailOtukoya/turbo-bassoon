/* Query to find model number, speed, and hard drive size of PCs with 12x or 24x CD drive that costs less thn 600 pounds*/
SELECT model, hd
FROM PC1
WHERE (cd = '12x' OR cd = '24x') AND price < 600;

/* Query to find PC with the lowest price but highest RAM*/
SELECT hd, COUNT(*) AS count
FROM PC1
GROUP BY hd
HAVING COUNT (*) > 1;

/* Query to find Hard drive capacity that are identical for 2 or more computer*/
SELECT TOP 1 *
FROM PC1
WHERE price = (SELECT MIN(price) FROM PC1)
ORDER BY ram DESC



