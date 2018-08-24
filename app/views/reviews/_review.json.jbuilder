json.extract! review, :id, :email, :title, :content, :review_count, :created_at, :updated_at
json.url review_url(review, format: :json)
