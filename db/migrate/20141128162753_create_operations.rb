class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.string :nombre
      t.string :sam
      t.text :descripcion
      t.references :maquina, index: true
      t.references :modulo, index: true

      t.timestamps
    end
  end
end
