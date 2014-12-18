class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :referencia
      t.string :talla
      t.string :talla_promedio
      t.string :color
      t.string :tela
      t.text :descripcion
      t.text :especificaciones
      t.references :modulo, index: true
      t.references :ficha, index: true

      t.timestamps
    end
  end
end
