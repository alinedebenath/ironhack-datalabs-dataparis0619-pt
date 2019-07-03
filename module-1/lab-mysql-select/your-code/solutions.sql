---challenge 1
SELECT a.au_lname, a.au_fname, ta.au_id, t.title, p.pub_name 
FROM publications.authors a
JOIN publications.titleauthor ta on a.au_id=ta.au_id
JOIN publications.titles t on ta.title_id=t.title_id
JOIN publications.publishers p on t.pub_id=p.pub_id;

--- challenge 2
SELECT ta.au_id 'ID AUTHOR', a.au_lname as 'LAST NAME', a.au_fname as 'FIRST NAME', p.pub_name, COUNT(t.title_id) as TOTAL_COUNT 
FROM publications.authors a
JOIN publications.titleauthor ta on a.au_id=ta.au_id
JOIN publications.titles t on ta.title_id=t.title_id
JOIN publications.publishers p on t.pub_id=p.pub_id
GROUP BY a.au_lname, a.au_fname, ta.au_id, p.pub_name
ORDER BY TOTAL_COUNT desc;

--- challenge 3
SELECT ta.au_id as 'ID AUTHOR', a.au_lname as 'LAST NAME', a.au_fname as 'FIRST NAME', sum(s.qty) as TOTAL
FROM publications.authors a
left JOIN publications.titleauthor ta on a.au_id=ta.au_id

left JOIN publications.titles t on ta.title_id=t.title_id

left join publications.sales s on t.title_id=s.title_id

GROUP BY a.au_lname, a.au_fname, ta.au_id

ORDER BY TOTAL desc limit 3;

--- challenge 4
SELECT IFNULL(ta.au_id,0) as 'ID AUTHOR', a.au_lname as 'LAST NAME', a.au_fname as 'FIRST NAME', IFNULL(sum(s.qty), 0) as TOTAL
FROM publications.authors a

left JOIN publications.titleauthor ta on a.au_id=ta.au_id

left JOIN publications.titles t on ta.title_id=t.title_id

left join publications.sales s on t.title_id=s.title_id

GROUP BY a.au_lname, a.au_fname, ta.au_id

ORDER BY TOTAL desc;
 

