json.array!(@reviews) do |review|
  json.extract! review, :id, :raitng, :comment
  json.url review_url(review, format: :json)
end