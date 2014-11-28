class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :nombre
      t.string :num_ficha
      t.references :modulo, index: true

      t.timestamps
    end
  end
end
