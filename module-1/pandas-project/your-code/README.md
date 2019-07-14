PANDAS PROJECT
 
Step 1 : Importing the data file

Step 2 : Diplaying the shape, data types and name of the columns

Step 3 : Checking how many empty cell there is in every column

Step 4 : I check the non empty cells is Unnamed: 22 and Unnamed: 23 by using the fillna function and displaying every 0 value with a list comprehension. As the values are irrevelant, I choose to delete the columns

Step 5 : As there are 3 columns whose name are almost similar (Case Number, Case Number.1, Case Number.2), I check if there are duplicates. I use .equals (which is a boolean) with Case Number and Case Number.1 and it return False. That means the columns are not duplicates. The same happens with the column Case Number.2. I choose to count the values that are equal and as the result is high, I choose to keep only the Case Number column.

Step 6 : I do the same manipulation with the columns href formula and href. I choose to keep the column href formula.

Step 7 : I delete the columns I don't find interesting. I also think the column Time and pdf are irrelevant.

Step 8 : I decide to clean the column Date. First, I print the set of the column.
To obtain a clean column, I create a function to extract every non-numeric value. As there is a lot of relevant information, I choose to rename the column 'Date comment'. 
I decide that the dates will be displayed by columns Year1 (not to overwrite the existing column Year), Month, Day, from the values in Case Number (format: aaa.mm.jj)
I get the year by searching the 4 first number in Case Number. The month from the 5th to 7th number, the day from the 8th to the 10th number. 
As the Case Numbers with no date are beginning by "ND" I decide that if it appears in the column Year1, I replace it with 00 in the columns Year, Month, Day.

Step 9 : I check the values in Fatal (Y/N). Some cells are empty or wrong so I clean them (for example, F = yes ) and fill the empty ones with U (Unknown). 
I choose to rename the column Fatal (Y/N/U).

Step 10 : I think it would be intersting to add a column with the number of victims based on the info in the column Name. For example, some values are just 1 male or 20 occupants.
I create a column Number of victims and duplicate in it the values of Name. First, I fill the empty cells with 00. Then, I create variables with the values that indicates the number of persons involved in the attack and replace the cells by the number. Next, I replace every non-numeric value that remains (=1 person) by 1. Finally, I replace the value 00 by Unknown.

Step 11 : After checking the column Name, I notice that some value should be in sex : "male", "female", "boy", "girl". Furthermore, those values sometimes contredicts the info in Sex.
First, I find that the column Sex as a space at the end. I correct it.
Next, I create a function that search in the column Name if the value is male, female, boy or girl. If it is the case, il will return F or M. I apply this function to a new column Name corrected and I fill the empty cells of Sex with the values of Name corrected.
Then, I create a second function, named error_sex. If the column Sex indicates M but the column Name corrected says F, I return F. Same for M.
Finally, I check the values in Sex and clean everything that is not F, M or Unknown.

Step 12 : I fill every empty cells of the column Name with Unknown. I replace the cells which contains male, female, boy, anonymous, etc. by Unknown. I also delete every multiple spaces.

Step 13 : I check the column Type. As some values are similar, I choose to regroupe them.

Step 14 : I check the column Country. I fill the empty cells with Unknown. Most of them are in upper case so I decide to transforme all of them in upper case

Step 15 : I check the column Species. I rename the column because there is a space after Species. I fill the empty cells with Unknown.

Step 16 : I delete the columns I created for test : Date_alphab, Year1 and name_corrected.
Finally, I order the column to bring closer those who are connected (year, month, day for example)

Step 17 : I export the new dataframe in a file name GSAF5_sol.csv