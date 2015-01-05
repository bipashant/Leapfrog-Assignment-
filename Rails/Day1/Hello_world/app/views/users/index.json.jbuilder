json.array!(@users) do |user|
  json.extract! user, :id, :name, :string, :age, :integer
  json.url user_url(user, format: :json)
end
