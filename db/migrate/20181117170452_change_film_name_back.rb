class ChangeFilmNameBack < ActiveRecord::Migration[5.2]
  def change
    rename_column :films, :film_name, :name
  end
end
