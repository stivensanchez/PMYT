class CreateMaquinas < ActiveRecord::Migration
  def change
    create_table :maquinas do |t|
      t.string :nombre
      t.text :descripcion
      t.references :modulo, index: true

      t.timestamps
    end
  end
end
