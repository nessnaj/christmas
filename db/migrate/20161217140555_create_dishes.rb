class CreateDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :dishes do |t|
      t.string :titel
      t.string :bereider
      t.text :opmerkingen
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
