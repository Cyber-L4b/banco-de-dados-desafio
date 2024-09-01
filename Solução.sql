-- 1
SELECT Nome, Ano FROM Filmes

-- 2
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano

-- 3
SELECT Nome, Ano, duracao FROM Filmes
WHERE Nome = 'De volta para o futuro'

-- 4
SELECT Nome, Ano, duracao FROM Filmes
WHERE Ano = 1997

-- 5
SELECT Nome, Ano, duracao FROM Filmes
WHERE Ano > 2000

-- 6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7 
SELECT Ano, COUNT(*) Quantidade FROM Filmes
GROUP BY Ano 
ORDER BY Quantidade DESC

-- 8
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M'

-- 9
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT Nome, Genero FROM Filmes, Generos

-- 11
SELECT Nome, Genero FROM Filmes, Generos
WHERE Genero = 'Mistério'

-- 12
SELECT
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores a ON ef.IdAtor = a.Id
