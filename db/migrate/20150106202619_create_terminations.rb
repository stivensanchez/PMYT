class CreateTerminations < ActiveRecord::Migration
  def change
    create_table :terminations do |t|
      t.references :operation, index: true
      t.string :sam
      t.string :maquina
      t.string :calibre_aguja
      t.string :ppp
      t.string :margen_costura
      t.string :guia_accesorios
      t.string :tiempo_real
      t.string :desempeño
      t.text :comentario
      t.text :observaciones
      t.string :imagen
      t.references :info, index: true
      t.references :oper, index: true

      t.timestamps
    end
  end
end
