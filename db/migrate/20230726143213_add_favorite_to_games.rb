class AddFavoriteToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :favorite, :boolean
  end
end
