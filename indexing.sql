-- 1. Setting Up
-- CREATE ROLE indexed_cars_user WITH SUPERUSER;
-- CREATE DATABASE indexed_cars;
-- \c indexed_cars;
-- \i scripts/car_models.sql;
-- \i /home/laura/DevLeague/Automotive-Index/scripts/car_model_data.sql;
-- \i /home/laura/DevLeague/Automotive-Index/scripts/car_model_data.sql;
-- \i /home/laura/DevLeague/Automotive-Index/scripts/car_model_data.sql;
-- \i /home/laura/DevLeague/Automotive-Index/scripts/car_model_data.sql;
-- \i /home/laura/DevLeague/Automotive-Index/scripts/car_model_data.sql;
-- \i /home/laura/DevLeague/Automotive-Index/scripts/car_model_data.sql;
-- \i /home/laura/DevLeague/Automotive-Index/scripts/car_model_data.sql;
-- \i /home/laura/DevLeague/Automotive-Index/scripts/car_model_data.sql;
-- \i /home/laura/DevLeague/Automotive-Index/scripts/car_model_data.sql;
-- \i /home/laura/DevLeague/Automotive-Index/scripts/car_model_data.sql;

-- SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';
--   Time: 46.422 ms

-- SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
--   Time: 45.935 ms

-- SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';
--   Time: 45.935 ms

-- SELECT * FROM car_models WHERE year BETWEEN 2010 AND 2015;
--   Time: 95.368 ms

-- SELECT * FROM car_models WHERE year = 2010;
--   Time: 36.257 ms

-- CREATE INDEX make_title_LAM_index ON car_models (SELECT make_title);

-- SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';
--   Time: 25.665 ms

-- SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
--   Time: 25.293 ms

-- SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';
--   Time: 25.140 ms

-- SELECT * FROM car_models WHERE year BETWEEN 2010 AND 2015;
--   Time: 67.353 ms

-- SELECT * FROM car_models WHERE year = 2010;
--   Time: 36.219 ms

--****4 and 5 are running faster! :) But they probably wouldnt normally because we're getting all the fields from the db rather than just a few.

-- DROP TABLE car_models;
