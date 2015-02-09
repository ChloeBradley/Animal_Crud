class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :breed
      t.string :color
      t.integer :weight

      t.timestamps null: false
    end
  end
end
