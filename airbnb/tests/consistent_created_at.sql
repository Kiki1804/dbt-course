
Select f.* from {{ ref('fct_reviews') }} f
left join {{ ref('dim_listings_cleansed') }} d 
on f.listing_id = d.listing_id
WHERE f.review_date < d.created_at
LIMIT 100