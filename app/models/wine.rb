class Wine < ActiveRecord::Base
  include HTTParty

  belongs_to :user


  def self.search(search)
    where("name LIKE ? OR grapes LIKE ? OR color LIKE ? OR vintage LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

  # wine.com API

  base_uri 'http://services.wine.com/api/beta2/service.svc/json/catalog'
  default_params apikey: "342d4987fd88e955e53d790310498b75"
  format :json

  def self.for(search_term)
    get("", query: { search: search_term})["Products"]["List"]
  end

end
