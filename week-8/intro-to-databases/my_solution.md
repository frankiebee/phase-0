# Introduction to Databases

#### I worked on this challenge [by myself]
#### This challenge took me [1] hours.

## SQL Queries

Paste the correct SQL queries for each of the following:

1. Select all data for all states:
```sqlite3
SELECT * FROM states;
```

2. Select all data for the regions:
```sqlite3
SELECT * FROM regions;
```

3. Select the `state_name` and `population` for all states:
```sqlite3
SELECT state_name, population
FROM states;
```

4. Select the `state_name` and `population` for all states ordered by population. The most populous state should be at the top:
```sqlite3
SELECT state_name, population
FROM states
ORDER BY population DESC;
```

5. Select the 'state_name's for the states in region 7:
```sqlite3
SELECT state_name
FROM states
WHERE region_id=7;
```

6. Select the 'state_names' and 'population_density' with a population density over 50 ordered from least to most dense:
```sqlite3
SELECT state_name, population_density
FROM states
WHERE population_density > 50
ORDER BY population_density ASC;
```

7. Select all state_names for states with a population between 1 million and 1.5 million people:
```sqlite3
SELECT state_name
FROM states
WHERE population
BETWEEN 1000000 AND 1500000;
```

8. Select all state_names and region_id ordered by region in ascending order:
```sqlite3
SELECT state_name, region_id
FROM states
ORDER BY region_id ASC;
```

9. Select the 'region_name' for the regions with "Central" in the name:
```sqlite3
SELECT region_name
FROM regions
WHERE region_name
LIKE "%Central%";
```

10. Select all of the region names and the state names in ascending order by regional id:
```sqlite3
	SELECT state_name, region_name
	FROM regions
	INNER JOIN states
	ON regions.id=region_id;
```

## `persons` and `outfits` Schema
![Image of tables](https://github.com/frankiebee/phase-0/blob/master/week-8/intro-to-databases/screen_shot.png)



## Reflection
*What are databases for?
Storing and organizing data.

*What is a one-to-many relationship?
One-to-many is when a string is repeated over and over. If it appears to often then
their is more possibility of errors when it is typed.

*What is a primary key? What is a foreign key? How can you determine which is which?
a a foreign key comes about when you link the primary key to another key. you can tell which is which because the primary key is unique and is not longer then 16 columns. It is also used to index.

*How can you select information out of a SQL database? What are some general guidelines for
*that?
```sqlite3
SELECT column(s)
FROM table;
```
You select the column or columns separating the columns with a ',' comma ad specify the table in which the column(s) came from