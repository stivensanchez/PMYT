class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :nombre
      t.string :cantidad
      t.text :observaciones

      t.timestamps
    end
  end
end
