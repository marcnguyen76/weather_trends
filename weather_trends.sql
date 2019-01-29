#Marc Nguyen

# Extract local city by viewing content of city_list
# From the list, San Jose, California is the closest city
SELECT *
FROM city_list
WHERE country = 'United States'

# Extract San Jose weather trend and download data
SELECT * 
FROM city_data
WHERE city = 'San Jose'
ORDER BY year

# Extract global weather trend and download dataSELECT * 
FROM global_data
ORDER BY year

# Advance method
 SELECT city_data.year,
            city_data.avg_temp as city_temp, 
            global_data.avg_temp as global_temp 
FROM city_data, global_data 
WHERE city_data.year = global_data.year  
            AND NOT city_data.avg_temp IS NULL  
            AND city_data.city = 'Lagos'
            
