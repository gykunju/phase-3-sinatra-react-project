class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :description
      t.text :web_link
      t.text :image
      t.timestamps
    end
  end
end
