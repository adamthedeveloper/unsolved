json.array!(@documents) do |document|
  json.extract! document, :title, :description, :journalist_id, :incident_id
  json.url document_url(document, format: :json)
end
