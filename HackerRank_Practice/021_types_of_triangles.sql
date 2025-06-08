SELECT
    CASE
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B OR B = C OR C = A THEN 'Isosceles'
        WHEN A !=B AND B != C AND A != C THEN 'Scalene'        
    END AS type_of_triangle
FROM TRIANGLES;