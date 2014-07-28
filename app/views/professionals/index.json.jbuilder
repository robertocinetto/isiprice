json.array!(@professionals) do |professional|
  json.extract! professional, :id, :name, :last_name
  json.url professional_url(professional, format: :json)
end
