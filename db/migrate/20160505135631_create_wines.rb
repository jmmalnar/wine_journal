class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :vintage
      t.string :grapes
      t.string :color
      t.string :country
      t.string :region
      t.float :abv
      t.string :vineyard
      t.decimal :price
      t.date :date_drank
      t.text :notes

      t.timestamps null: false
    end
  end
end
