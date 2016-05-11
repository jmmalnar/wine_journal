class AddRatingToWines < ActiveRecord::Migration
  def change
    add_column :wines, :rating, :integer
  end
end
