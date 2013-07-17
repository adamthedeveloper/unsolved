json.array!(@journalists) do |journalist|
  json.extract! journalist, :user_id, :nickname, :first_name, :last_name
  json.url journalist_url(journalist, format: :json)
end
