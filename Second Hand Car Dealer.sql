-- Second Hand Car Dealer Project ----

Select * from cardealer.car;

-- Total cars
select count(Name) from car;
select count(*) from car;

-- How many cars available in 2023?
select count(*) from car where year = 2023;

-- How many cars available in 2020, 2021, 2022?
select count(*) from car where year in (2020, 2021, 2022);
select count(*) from car where year in (2020, 2021, 2022) group by year;

-- Print the total of all cars by years.
select distinct year, count(*) from car group by year;

-- How many Diesel cars are available in 2020?
select count(*) from car where fuel = "Diesel" and year = 2020;

-- How many Petrol cars are available in 2020?
select count(*) from car where fuel = "Petrol" and year = 2020;

-- Print all the fuel cars - Petrol, Diesel and CNG by all years
select fuel, year, count(*) from car where fuel in ("Petrol", "Diesel", "CNG") group by fuel, year;
select fuel, year, count(*) from car where fuel in ("Petrol", "Diesel", "CNG") group by fuel, year order by fuel ASC, year ASC;

-- Which year has more than 100 cars?
Select year, count(*) as car_count from car group by year having car_count > 100;

-- All cars count details between 2015 and 2023
select * from car where year between 2015 and 2023;
select count(*) from car where year between 2015 and 2023;

-- End --
