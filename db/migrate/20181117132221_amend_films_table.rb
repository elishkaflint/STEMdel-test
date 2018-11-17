class AmendFilmsTable < ActiveRecord::Migration[5.2]
  def change
    change_table :films do |t|
      t.remove :rating
      t.boolean :pass_stemdel_test
    end
  end
end
