class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.integer :num
      t.string :name
      t.string :img
      t.integer :height
      t.integer :weight
      t.string :candy
      t.integer :candy_count
      t.string :egg
      t.integer :avg_spawns
      t.string :spawn_time

      t.timestamps
    end
  end
end
