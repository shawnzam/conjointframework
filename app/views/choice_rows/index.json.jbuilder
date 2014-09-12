json.array!(@choice_rows) do |choice_row|
  json.extract! choice_row, :id, :choice_set_id, :display_order
  json.url choice_row_url(choice_row, format: :json)
end
