json.array!(@holidays) do |holiday|
  json.extract! holiday, :id, :title, :date, :reminder
  json.url holiday_url(holiday, format: :json)
end
