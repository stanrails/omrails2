json.array!(@discipleship_classes) do |discipleship_class|
  json.extract! discipleship_class, :id, :class_date, :title
  json.url discipleship_class_url(discipleship_class, format: :json)
end
