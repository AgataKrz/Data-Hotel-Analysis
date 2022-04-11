
with hotels as (
SELECT * FROM dbo.['2018$']
union
SELECT * FROM dbo.['2019$']
union
SELECT * FROM dbo.['2020$'] )

SELECT * FROM hotels
LEFT join dbo.market_segment$
on hotels.market_segment= market_segment$.market_segment
LEFT join dbo.meal_cost$
on hotels.meal= meal_cost$.meal

