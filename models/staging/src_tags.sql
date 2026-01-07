with raw_tags as (
    select * from MOVIELENS.RAW.RAW_TAGS
)

select 
    movieid as movie_id,
    userid as user_id,
    tag
    timestamp
from raw_tags
