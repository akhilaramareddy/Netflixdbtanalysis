with raw_genome_scores as (
    select * from MOVIELENS.RAW.RAW_GENOME_SCORES
)

select 
    tagid as tag_id,
    movieid as movie_id,
    relevance
from raw_genome_scores