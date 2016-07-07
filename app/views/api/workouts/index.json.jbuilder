json.array!(@workouts) do |workout|
  json.extract! workout, :id, :date, :workout, :length
  json.url workout_url(workout, format: :json)
end