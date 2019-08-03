Web scraping 

I chose to scrape the wikipedia page of Python, the mythological greek creature.
I wanted to retrieve the names of the greek gods mentionned in it. They appeared to be in the tag 'a' with no class and an attribute 'title'.
I obtain a list 'gods'.
As the greek gods have a one word name, I use a regex to find every item with only one word.
I clean the unnecessary items ('Wikisource',etc.)
I export the result in a file containing the list 'greek_gods'.

API


I chose the public API "the-one-api.herokuapp.com". I signed in for a token.
The API permitted to export the data from every characters of every books of The Lord of the Rings.
I transformed it in a dataframe and exported it in a json file.