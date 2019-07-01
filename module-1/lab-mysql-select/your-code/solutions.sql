---challenge 1 and 2
SELECT a.au_lname, a.au_fname, ta.au_id, t.title, p.pub_name 
FROM publications.authors a
JOIN publications.titleauthor ta on a.au_id=ta.au_id
JOIN publications.titles t on ta.title_id=t.title_id
JOIN publications.publishers p on t.pub_id=p.pub_id;

--- challenge 3
SELECT ta.au_id 'ID AUTHOR', a.au_lname as 'LAST NAME', a.au_fname as 'FIRST NAME', p.pub_name, COUNT(t.title_id) as TOTAL_COUNT 
FROM publications.authors a
JOIN publications.titleauthor ta on a.au_id=ta.au_id
JOIN publications.titles t on ta.title_id=t.title_id
JOIN publications.publishers p on t.pub_id=p.pub_id
GROUP BY a.au_lname, a.au_fname, ta.au_id, p.pub_name
ORDER BY TOTAL_COUNT desc limit 3;

--- challenge 4