class ChangeFilmNameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :films, :name, :film_name
  end
end
