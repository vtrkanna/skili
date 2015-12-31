json.array!(@teaching_periods) do |teaching_period|
  json.extract! teaching_period, :id
  json.url teaching_period_url(teaching_period, format: :json)
end
