json.array!(@photos) do |photo|
  json.extract! photo, :title, :description, :journalist_id, :photoable_id, :photoable_type
  json.url photo_url(photo, format: :json)
end
