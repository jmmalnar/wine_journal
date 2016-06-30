class Wine < ActiveRecord::Base

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
    where("grapes LIKE ?", "%#{search}%")
  end

end
