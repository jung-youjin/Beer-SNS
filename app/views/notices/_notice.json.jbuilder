json.extract! notice, :id, :email, :title, :content, :review_count, :created_at, :updated_at
json.url notice_url(notice, format: :json)
