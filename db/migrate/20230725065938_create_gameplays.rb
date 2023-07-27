class CreateGameplays < ActiveRecord::Migration[6.1]
  def change
    create_table :gameplays do |t|
      t.string :name
      t.text :link
      t.integer :game_id
    end
  end
end
