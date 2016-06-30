class Wine < ActiveRecord::Base

  def self.search(search)
    where("name LIKE ? OR grapes LIKE ? OR color LIKE ? OR vintage LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
