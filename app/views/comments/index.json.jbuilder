json.array!(@comments) do |comment|
  json.extract! comment, :body, :commentable_id, :commentable_type, :journalist_id
  json.url comment_url(comment, format: :json)
end
