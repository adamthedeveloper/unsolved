json.array!(@incidents) do |incident|
  json.extract! incident, :title, :description, :date, :journalist_id
  json.url incident_url(incident, format: :json)
end
