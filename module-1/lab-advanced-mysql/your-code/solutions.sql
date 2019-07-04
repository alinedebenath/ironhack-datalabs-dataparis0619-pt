--CHALLENGE 1
--- step 1
SELECT t.title_id as 'Title ID', a.au_id as 'Author ID', t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as Royalty

FROM publications.authors a

left JOIN publications.titleauthor ta on ta.au_id=a.au_id

left JOIN publications.titles t on t.title_id=ta.title_id

left join publications.sales s on s.title_id=t.title_id


--- step 2
SELECT Titles_ID as 'Title ID', Authors_ID as 'Author ID', sum(Royalty) as Sum_royalties

FROM 
	
	(SELECT a.au_id as Authors_ID, t.title_id as Titles_ID, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as Royalty
    
	FROM publications.authors a

	left JOIN publications.titleauthor ta on ta.au_id=a.au_id

	left JOIN publications.titles t on t.title_id=ta.title_id

	left join publications.sales s on s.title_id=t.title_id) 
	roy

group by Authors_ID, Titles_ID

order by Royalty desc;

--- step 3
SELECT Authors_ID as 'Author ID', Royalty + advances as Gains

FROM
	
	(SELECT a.au_id as Authors_ID, t.advance as advances, t.title_id as Titles_ID, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as Royalty
    
	FROM publications.authors a

	left JOIN publications.titleauthor ta on ta.au_id=a.au_id

	left JOIN publications.titles t on t.title_id=ta.title_id

	left join publications.sales s on s.title_id=t.title_id) roy

group by Authors_ID

order by Gains desc;

--CHALLENGE 2
step 1 
Create temporary table Royalties1

SELECT a.au_id, ifnull((t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100),0) as Royalty

FROM publications.authors a

left JOIN publications.titleauthor ta on ta.au_id=a.au_id

left JOIN publications.titles t on t.title_id=ta.title_id

left join publications.sales s on s.title_id=t.title_id

group by au_id

order by Royalty desc;

step 2
SELECT a.au_id as 'Author ID', ifnull(r.Royalty+advance,0) as Gains

FROM publications.authors a

left join publications.Royalties1 r on r.au_id=a.au_id

left JOIN publications.titleauthor ta on ta.au_id=r.au_id

left JOIN publications.titles t on t.title_id=ta.title_id

left join publications.sales s on s.title_id=t.title_id

group by a.au_id

order by Gains desc;

--CHALLENGE 3
CREATE TABLE publications.most_profiting_authors

SELECT Authors_ID as 'Author ID', Royalty + advances as Gains

FROM
	(SELECT a.au_id as Authors_ID, t.advance as advances, t.title_id as Titles_ID, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as Royalty

	FROM publications.authors a
	
	left JOIN publications.titleauthor ta on ta.au_id=a.au_id

	left JOIN publications.titles t on t.title_id=ta.title_id

	left join publications.sales s on s.title_id=t.title_id) roy

group by Authors_ID

order by Gains desc;