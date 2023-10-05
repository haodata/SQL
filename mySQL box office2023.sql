use movies;
select * from `2023`;

-- what is the total worldwide box office?
select sum(Worldwide)  from `2023`;

-- what is the total domestic box office? 
select sum(Domestic)  from `2023`;

-- what is the total foreign box office? 
select sum(`foreign`)  from `2023`;

-- What are the movies with zero domestic box office?
select `Release Group`  from `2023`
where `domestic`= 0;

-- What is the average worldwild box office for all the movies?
select avg(Worldwide) from `2023`;

-- What are the top ten movies at the worldwild box office?
select `release group` from `2023`
order by Worldwide desc limit 10;

-- Search for movies with the word Spider-Man
select * from `2023`
where `Release Group`  like 'Spider-Man%';

-- How many movies have a smaller foreign box office than their domestic box office?
select count(`Release Group`) from `2023`
where `Foreign`< Domestic;