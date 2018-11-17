class CreateFilmsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :name
      t.integer :year
      t.boolean :pass_stemdel_test
      t.string :image
      t.timestamps
    end
  end
end
