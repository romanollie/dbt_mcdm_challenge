WITH stg_twitter AS (
    SELECT  NULL AS ad_id
            ,NULL AS add_to_cart
            ,NULL AS adset_id
            ,campaign_id
            ,channel
            ,clicks
            ,comments
            ,NULL AS creative_id
            ,date
            ,engagements
            ,impressions
            ,NULL AS installs
            ,likes
            ,url_clicks AS link_clicks
            ,NULL AS placement_id
            ,NULL AS post_click_conversions
            ,NULL AS post_view_conversions
            ,NULL AS posts
            ,NULL AS purchase
            ,NULL AS registrations
            ,NULL AS revenue
            ,retweets AS shares
            ,spend
            ,NULL AS total_conversions
            ,video_total_views AS video_views

    FROM {{ ref('src_promoted_tweets_twitter_all_data') }}
)

SELECT *
FROM stg_twitter