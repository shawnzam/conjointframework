json.array!(@options) do |option|
  json.extract! option, :id, :name, :c_attribute_id, :display_order, :description, :choice_id
  json.url option_url(option, format: :json)
end
