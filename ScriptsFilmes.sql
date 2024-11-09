--1
SELECT
NOME,
ANO
FROM FILMES


--2

SELECT
NOME,
ANO
FROM FILMES
ORDER BY ANO ASC;

--3
SELECT
NOME,
ANO,
DURACAO
FROM FILMES
WHERE NOME = 'DE VOLTA PARA O FUTURO'

--4 BUSCAR FILMES LANÇADOS EM 1997

SELECT 
NOME,
ANO
FROM FILMES
WHERE ANO = '1997';


--5 BUSCAR FILMES LANÇADOS APÓS O ANO 2000

SELECT
NOME,
ANO
FROM FILMES 
WHERE ANO >2000;


--6 Buscar os filmes com a duracao maior que 100 
--e menor que 150, ordenando pela duracao em ordem crescente

SELECT
NOME,
DURACAO
FROM FILMES
WHERE DURACAO > 100 AND DURACAO < 150
ORDER BY DURACAO ASC;

--7 Buscar a quantidade de filmes lançadas no ano, agrupando por ano, 
--ordenando pela duracao em ordem decrescente

SELECT ANO,COUNT(*) AS QUANTIDADE_FILMES
FROM FILMES
GROUP BY ANO
ORDER BY QUANTIDADE_FILMES DESC;

--8 Buscar os Atores do gênero masculino,
--retornando o PrimeiroNome, UltimoNome

SELECT
PrimeiroNome,
UltimoNome
FROM Atores
WHERE Genero = 'M';

--9 Buscar os Atores do gênero feminino, retornando o PrimeiroNome,
--UltimoNome ordenando pelo PrimeiroNome


SELECT 
PrimeiroNome,
UltimoNome
FROM Atores
WHERE GENERO = 'F'
ORDER BY PrimeiroNome


--10 BUSCAR O NOME E O GENERO DO FILME;

SELECT 
    f.NOME as Nome_Filme,
    g.GENERO as Nome_Genero
FROM FILMES f
JOIN FilmesGenero fg ON f.ID = fg.IdFilme
JOIN GENEROS g ON g.ID = fg.IdGenero


--11 BUSCAR O NOME DO FILME E O GÊNERO DO TIPO MISTÉRIO

SELECT 
    f.NOME as Nome_Filme,
    g.GENERO as Nome_Genero
FROM FILMES f
JOIN FilmesGenero fg ON f.ID = fg.IdFilme
JOIN GENEROS g ON g.ID = fg.IdGenero
WHERE g.GENERO = 'Mistério';



--12 BUSCAR O NOME, ATORES COM PRIMEIRO E ULTIMO NOME E PAPEL
SELECT 
    f.NOME as Nome_Filme,
    a.PrimeiroNome,
    a.UltimoNome,
    ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.ID = ef.IdFilme
JOIN Atores a ON a.ID = ef.IdAtor;