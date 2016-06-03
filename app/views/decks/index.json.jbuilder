json.array!(@decks) do |deck|
  json.extract! deck, :id, :name, :image
  json.url deck_url(deck, format: :json)
end
