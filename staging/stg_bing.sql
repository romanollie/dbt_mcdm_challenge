WITH stg_bing AS (
    SELECT  ad_id
            ,NULL AS add_to_cart
            ,adset_id
            ,campaign_id
            ,channel
            ,clicks
            ,NULL AS comments
            ,NULL AS creative_id
            ,date
            ,NULL AS engagements
            ,imps AS impressions
            ,NULL AS installs
            ,NULL AS likes
            ,NULL AS link_clicks
            ,NULL AS placement_id
            ,NULL AS post_click_conversions
            ,NULL AS post_view_conversions
            ,NULL AS posts
            ,NULL AS purchase
            ,NULL AS registrations
            ,revenue
            ,NULL AS shares
            ,spend
            ,conv AS total_conversions
            ,NULL AS video_views

    FROM {{ ref('src_ads_bing_all_data') }}
)

SELECT *
FROM stg_bing