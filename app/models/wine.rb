class Wine < ActiveRecord::Base

  def self.search(search)
    where("name LIKE ? OR grapes LIKE ?", "%#{search}%", "%#{search}%")
  end

end
