# Capstone Progress Report: 2025-05-20

## Concepts Learned:
`No new concepts learned. This is a work progress log.`  

## Tasks Completed:
* Finished Problem 2: Movies  
  
  

## Problem 2: Movies
**The Task: Provided to is a file called movies.db, a SQLite database that stores data from IMDb about movies, the people who directed and starred in them, and their ratings. Write SQL queries to answer questions about this database of movies.**
  
---
  
**Summary:**  
This problem is rather similar to problem 1; I create a single SQL query for each question on a given database to filter for results. The prompts for the problem can be found below, and I saved each prompt in a corresponding `.sql` file with a number.

**Challenges:**
This problem is essentially a continuation of Problem 1: Songs, except with harder problems to solve. I found that some problems were difficult to complete with a simple `SELECT * FROM x WHERE y = z` command, and I needed to learn new keywords to be able to solve this issue. 

---

1. In 1.sql, write a SQL query to list the titles of all movies released in 2008.
    * Your query should output a table with a single column for the title of each movie.

2. In 2.sql, write a SQL query to determine the birth year of Emma Stone.
    * Your query should output a table with a single column and a single row (not counting the header) containing Emma Stoneâ€™s birth year.
    * You may assume that there is only one person in the database with the name Emma Stone.

3. In 3.sql, write a SQL query to list the titles of all movies with a release date on or after 2018, in alphabetical order.
    * Your query should output a table with a single column for the title of each movie.
    * Movies released in 2018 should be included, as should movies with release dates in the future.

4. In 4.sql, write a SQL query to determine the number of movies with an IMDb rating of 10.0.
    * Your query should output a table with a single column and a single row (not counting the header) containing the number of movies with a 10.0 rating.

5. In 5.sql, write a SQL query to list the titles and release years of all Harry Potter movies, in chronological order.
    * Your query should output a table with two columns, one for the title of each movie and one for the release year of each movie.
    * You may assume that the title of all Harry Potter movies will begin with the words â€œHarry Potterâ€, and that if a movie title begins with the words â€œHarry Potterâ€, it is a Harry Potter movie.

6. In 6.sql, write a SQL query to determine the average rating of all movies released in 2012.
    * Your query should output a table with a single column and a single row (not counting the header) containing the average rating.

7. In 7.sql, write a SQL query to list all movies released in 2010 and their ratings, in descending order by rating. For movies with the same rating, order them alphabetically by title.
    * Your query should output a table with two columns, one for the title of each movie and one for the rating of each movie.
    * Movies that do not have ratings should not be included in the result.

8. In 8.sql, write a SQL query to list the names of all people who starred in Toy Story.
    * Your query should output a table with a single column for the name of each person.
    * You may assume that there is only one movie in the database with the title Toy Story.

9. In 9.sql, write a SQL query to list the names of all people who starred in a movie released in 2004, ordered by birth year.
    * Your query should output a table with a single column for the name of each person.
    * People with the same birth year may be listed in any order.
    * No need to worry about people who have no birth year listed, so long as those who do have a birth year are listed in order.
    * If a person appeared in more than one movie in 2004, they should only appear in your results once.

10. In 10.sql, write a SQL query to list the names of all people who have directed a movie that received a rating of at least 9.0.
    * Your query should output a table with a single column for the name of each person.
    * If a person directed more than one movie that received a rating of at least 9.0, they should only appear in your results once.

11. In 11.sql, write a SQL query to list the titles of the five highest rated movies (in order) that Chadwick Boseman starred in, starting with the highest rated.
    * Your query should output a table with a single column for the title of each movie.
    * You may assume that there is only one person in the database with the name Chadwick Boseman.

12. In 12.sql, write a SQL query to list the titles of all movies in which both Bradley Cooper and Jennifer Lawrence starred.
    * Your query should output a table with a single column for the title of each movie.
    * You may assume that there is only one person in the database with the name Bradley Cooper.
    * You may assume that there is only one person in the database with the name Jennifer Lawrence.

13. In 13.sql, write a SQL query to list the names of all people who starred in a movie in which Kevin Bacon also starred.
    * Your query should output a table with a single column for the name of each person.
    * There may be multiple people named Kevin Bacon in the database. Be sure to only select the Kevin Bacon born in 1958.
    * Kevin Bacon himself should not be included in the resulting list.

---

**The code I created for these problems can be found in this directory's subfolder.**

## Capstone Status:
- [x] Problem 1  
- [x] Problem 2  
- [ ] Problem 3  
There is an unforseen delay in my progress, as due to unforseen developments my instructor has been forced to cancel his class on `2025-05-21`. I will adjust and spread out my workload to counteract this. I am still set to be able to finish the final project on time.