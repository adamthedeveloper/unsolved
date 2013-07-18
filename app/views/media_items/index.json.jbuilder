json.array!(@media_items) do |media_item|
  json.extract! media_item, :title, :description, :journalist_id, :incident_id
  json.url media_item_url(media_item, format: :json)
end
