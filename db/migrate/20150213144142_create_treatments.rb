class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.string :proceso
      t.text :descripcion
      t.string :ubicacion
      t.string :proveedor
      t.string :precio
      t.references :info, index: true

      t.timestamps
    end
  end
end
