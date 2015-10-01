json.array!(@weights) do |weight|
  json.extract! weight, :id, :weight
  json.url weight_url(weight, format: :json)
end
