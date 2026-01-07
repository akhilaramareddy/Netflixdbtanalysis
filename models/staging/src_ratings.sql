with raw_ratings as (
    select * from MOVIELENS.RAW.RAW_RATINGS
)

select 
    movieid as movie_id,
    userid as user_id,
    rating,
    timestamp 
from raw_ratings
