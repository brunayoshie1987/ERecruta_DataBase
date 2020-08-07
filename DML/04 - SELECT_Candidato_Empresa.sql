--Inner Join (dados da intersecção)

SELECT
*
FROM Candidato T01
JOIN Empresa T02 ON T02.ID = T01.EmpresaId

--LEFT JOIN

SELECT 
*
FROM Candidato T01 LEFT JOIN Empresa T02 ON T02.Id = T01.EmpresaId

--RIGHT JOIN

SELECT 
T02. *
FROM Candidato T01 
RIGHT JOIN Empresa T02 ON T02.Id = T01.EmpresaId WHERE T01.Id = ISNULL