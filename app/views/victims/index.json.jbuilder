json.array!(@victims) do |victim|
  json.extract! victim, 
  json.url victim_url(victim, format: :json)
end
