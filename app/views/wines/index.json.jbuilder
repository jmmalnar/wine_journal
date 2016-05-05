json.array!(@wines) do |wine|
  json.extract! wine, :id, :name, :vintage, :grapes, :color, :country, :region, :abv, :vineyard, :price, :date_drank, :notes
  json.url wine_url(wine, format: :json)
end
