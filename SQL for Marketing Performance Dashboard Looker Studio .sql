-- Step 1: Create a temporary table for Facebook Ads data
WITH data_from_facebook AS (
    SELECT
        fabd.ad_date,           
        fc.campaign_name,       
        fa.adset_name,           
        fabd.spend,              
        fabd.impressions,        
        fabd.reach,              
        fabd.clicks,             
        fabd.leads,             
        fabd.value              
    FROM 
        facebook_ads_basic_daily AS fabd          
    JOIN 
        facebook_campaign AS fc                    
    ON 
        fc.campaign_id = fabd.campaign_id          
    JOIN 
        facebook_adset AS fa                       
    ON 
        fa.adset_id = fabd.adset_id                
),

-- Step 2: Create a temporary table for Google Ads data
Google_data AS (
    SELECT 
        ad_date,              
        campaign_name,        
        adset_name,           
        spend,                
        impressions,         
        reach,                
        clicks,              
        leads,                
        value                 
    FROM 
        google_ads_basic_daily AS google            
),

-- Step 3: Combine data from Facebook and Google into a union table
union_table AS (
    SELECT 
        *,                   
        'Facebook' AS media_source  
    FROM 
        data_from_facebook
    UNION ALL 
    SELECT 
        *,                   
        'Google' AS media_source    
    FROM 
        Google_data
)

-- Step 4: Final output of the unioned data from both platforms
SELECT 
    *                        
FROM 
    union_table;
