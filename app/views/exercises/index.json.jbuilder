json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :hours, :number
  json.url exercise_url(exercise, format: :json)
end
