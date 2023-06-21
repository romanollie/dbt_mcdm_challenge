WITH paid_ads__basic_performance AS (
    SELECT *
    FROM {{ ref('stg_bing') }}

    UNION ALL

    SELECT *
    FROM {{ ref('stg_facebook') }}

    UNION ALL
    
    SELECT *
    FROM {{ ref('stg_tiktok') }}

    UNION ALL

    SELECT *
    FROM {{ ref('stg_twitter') }}
)

SELECT * FROM paid_ads__basic_performance