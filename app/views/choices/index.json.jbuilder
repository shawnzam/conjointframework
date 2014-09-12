json.array!(@choices) do |choice|
  json.extract! choice, :id, :choice_row_id, :display_order
  json.url choice_url(choice, format: :json)
end
