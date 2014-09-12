json.array!(@c_attributes) do |c_attribute|
  json.extract! c_attribute, :id, :display_order, :choice_set_id, :name, :description
  json.url c_attribute_url(c_attribute, format: :json)
end
