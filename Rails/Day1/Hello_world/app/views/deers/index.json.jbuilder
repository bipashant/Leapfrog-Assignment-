json.array!(@deers) do |deer|
  json.extract! deer, :id, :name, :age
  json.url deer_url(deer, format: :json)
end
