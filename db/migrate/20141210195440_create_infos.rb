class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.text :descripcion
      t.string :tallas
      t.text :observaciones
      t.string :medidas_prenda
      t.string :piesas_prenda
      t.string :PPP
      t.string :margen_costura
      t.text :hilos_SP
      t.string :SAM
      t.references :ficha, index: true

      t.timestamps
    end
  end
end
