/* SQL 

> left join -
shows full dataset on left side and only matching ones on the right side.


*/

SELECT
  *
FROM atbl a
LEFT JOIN btbl b
  ON a.id = b.id


-- left outter join - shows all the rows from left and only the matching ones from the right

select 
*
from atbl a
left join btbl b
on a.id = b.id

-- right outter join - shows all the rows from the right of the table and only the matching ones from the left side
select
*
from atbl a
right join btbl b
on a.id = b.id


-- inner join - shows only the matching ones
select
*
from atbl a, 
btbl b
where a.id = b.id


-- left join with null
select
*
from atbl a
left join btbl b
on a.id = b.id
where b.id is null

select 
* 
from atbl a 
right join btbl b
on a.id = b.id
where a.id is null


-- full join
select
*
from atbl a
full join btbl b
on a.id = b.id


-- self join

select * from atbl a, atbl b
where a.id != b.id

select getdate()


select convert(char(10), getdate(), 102)

select abs(-1)

select ascii('a')

select avg(id) from atbl

select avg(id) from atbl where id > 2 group by id


select case
when id = 1 then 'one'
when id = 2 then 'two'
else 'three'
end
from atbl

select cast(12.23 as int) -- type casting

select ceiling(12.33) -- higher value

select floor(12.33) -- lower value

select char(1110) -- opposite of ascii - gets char value of numeric
select nchar(1110) -- opposite of ascii - gets UNICODE value of numeric

select charindex('i', 'ritesh') -- returns index values

select coalesce(NULL, NULL, 'a', 'bb', 'b') -- coadlesce - returns first non-null value from the list

select concat('A', 'RRTE')
select ('A' + 'B')

select convert(char(10), getdate(), 101)

select count(1)

SELECT CURRENT_TIMESTAMP, getdate(); -- same as getdate() 

select CURRENT_USER -- get current user

select len('ritesh') -- does not include trailing spaces
select DATALENGTH('ritesh  ')  -- gets you legth of the data - does include trailing spaces

select dateadd(day, 1, getdate()) -- adds dates in format select dateadd(<year|month|date>, <value>, date_arg) - date_arg can be in any format
select dateadd(day, -1, '2018-1-1')

select datediff(year, '2012-1-1', '2034-01-01')
select datediff(month, '2012-1-1', '2034-01-01')
select datediff(day, '2012-1-1', '2034-01-01') -- finds difference between the dates in given denomination


select datename(year, '2018-01-01') -- datenames returns the specified part of the given date and returns string
select datepart(year, '2019-01-01') -- same as datename except it returns int


select day('2019-01-01') -- returns day of the month
select month('2019-01-01')  -- returns the month of the year
select year('2018-12-2') -- returns year

select GETUTCDATE() -- gets utc date

select isdate('2019-01-01') -- returns 1 if the string is a valid date

select isnull(null,'R') -- returns second value if the first value is null or results in null

select isnumeric(1) -- returns true if a argument is numeric

select left('ritesh', 2) --- substring from the left
select right('ritesh', 2) --- substring from the right
select lower('RITESh'), upper('ritesh')

select ltrim(' ritesh ')
select rtrim(' ritesh ')


select nullif('a', 'a') -- returns null since values are equal
select nullif('F', 'x') -- returns first value since expressions are not equal

select patindex('ritesh', 'ri') -- returns the pattern of the index

select rand(34) -- random float
select replace('Ritesh', 'R', 'X') -- replace

select round(12.2432432423, 2, -1) -- rounds up places to specific decimal places

select space(4) -- will return 4 spaces

select str('1212') -- converts to string

select stuff('ritesh', 1, 2, 'xxx')-- find and replace set of characters from given position of given length

select substring('ritesh', 1, 2)

select try_cast(12.234 as int) -- tries to cast float to int if fails then returns null

select try_convert(int, 12.23) -- tries to convert values if fails then returns null

select user_name()

-- windowing and aggregation functions --
-- LAG, LEAD, 
