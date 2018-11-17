class CreateCharactersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :film_name
      t.string :actress_name
      t.string :character_name
      t.string :job
      t.timestamps
    end
  end
end
