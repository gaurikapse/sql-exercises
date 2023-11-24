# Cookbook Recipes

[Problem Source](https://platform.stratascratch.com/coding/2089-cookbook-recipes?code_type=1)
[Solution](solutions/008_cookbook_recipes.sql)

You are given the table with titles of recipes from a cookbook and their page numbers. You are asked to represent how the recipes will be distributed in the book.

Produce a table consisting of three columns: left_page_number, left_title and right_title.

The k-th row (counting from 0), should contain the number and the title of the page with the number $2×k$ in the first and second columns respectively, and the title of the page with the number $2×k+1$ in the third column.

Each page contains at most 1 recipe. If the page does not contain a recipe, the appropriate cell should remain empty (NULL value). Page 0 (the internal side of the front cover) is guaranteed to be empty.

**`cookbook_titles` Example Input:**
| page_number | title
| --- | ---
| 1 | Scrambled eggs
| 2 | Fondue
| 3 | Sandwich
| 4 | Tomato soup

**Expected Output:**
| left_page_number | left_title | right_title
| --- | --- | ---
| 0 | | Scrambled eggs
| 2 | Fondue | Sandwich
| 4 | Tomato soup |
| 6 | Liver |
| 8 | |
