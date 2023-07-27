class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :name
      t.string :description
      t.integer :likes
      t.text :image
      t.text :site_link
      t.string :company_name
      t.integer :company_id
      t.string :genre_id
      t.timestamps
    end
  end
end
