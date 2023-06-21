WITH stg_tiktok AS (
    SELECT  ad_id
            ,add_to_cart
            ,adgroup_id AS adset_id
            ,campaign_id
            ,channel
            ,clicks
            ,NULL AS comments
            ,NULL AS creative_id
            ,date
            ,NULL AS engagements
            ,impressions
            ,(rt_installs + skan_app_install) AS installs
            ,NULL AS likes
            ,clicks AS link_clicks
            ,NULL AS placement_id
            ,NULL AS post_click_conversions
            ,NULL AS post_view_conversions
            ,NULL AS posts
            ,purchase
            ,registrations
            ,NULL AS revenue
            ,NULL AS shares
            ,spend
            ,(conversions + skan_conversion) AS total_conversions
            ,video_views
    FROM {{ ref('src_ads_tiktok_ads_all_data') }}
)

SELECT *
FROM stg_tiktok