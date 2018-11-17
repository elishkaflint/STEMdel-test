class DropFilms < ActiveRecord::Migration[5.2]
  def change
    drop_table :films
  end
end
