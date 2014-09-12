json.array!(@choice_sets) do |choice_set|
  json.extract! choice_set, :id, :name
  json.url choice_set_url(choice_set, format: :json)
end
