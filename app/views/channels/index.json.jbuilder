json.array!(@channels) do |channel|
  json.extract! channel, :id, :owner_id, :name
  json.url channel_url(channel, format: :json)
end
