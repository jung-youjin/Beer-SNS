json.extract! qna, :id, :email, :title, :content, :review_count, :created_at, :updated_at
json.url qna_url(qna, format: :json)
