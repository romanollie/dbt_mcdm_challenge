WITH stg_facebook AS (
    SELECT  ad_id
            ,add_to_cart
            ,adset_id
            ,campaign_id
            ,channel
            ,clicks
            ,comments
            ,creative_id
            ,date
            ,(likes + shares + comments + clicks + views) AS engagements
            ,impressions
            ,mobile_app_install AS installs
            ,likes
            ,inline_link_clicks AS link_clicks
            ,NULL AS placement_id
            ,NULL AS post_click_conversions
            ,NULL AS post_view_conversions
            ,NULL AS posts
            ,purchase
            ,complete_registration AS registrations
            ,purchase_value AS revenue
            ,shares
            ,spend
            ,CASE 
                WHEN UPPER(objective) = 'CONVERSIONS' THEN 1
                ELSE NULL
            END AS total_conversions
            ,views AS video_views

    FROM {{ ref('src_ads_creative_facebook_all_data') }}
)

SELECT *
FROM stg_facebook