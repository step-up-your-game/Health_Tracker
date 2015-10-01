json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :hours, :cals_per_hour
  json.url exercise_url(exercise, format: :json)
end
