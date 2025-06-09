SHOW timezone;
SELECT now()

create Table timez(
    ts TIMESTAMP without TIME zone,
    tsz TIMESTAMP with TIME zone 
);
INSERT into timez VALUES ('2024-01-8 10:30:00','2024-01-8 10:30:00')

SELECT * from timez;

--  Shudu date show ar jonno date function
 SELECT CURRENT_DATE;
 SELECT now()::date;
 SELECT now()::TIME;

--   to__char function
SELECT to_char(now(),'DDD');

-- interval
SELECT CURRENT_DATE -INTERVAL '1 year 2 month';

-- age function diye age related sob kisu ber kora jay
 SELECT age( CURRENT_DATE,'1999-01-01');

SELECT *, age(CURRENT_DATE,dob) as Years from students ;

-- extract korar jonno use hoy
SELECT extract( month from '2024-01-25'::date);

-- type casting 

