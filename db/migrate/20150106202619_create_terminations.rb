class CreateTerminations < ActiveRecord::Migration
  def change
    create_table :terminations do |t|
      t.references :operation, index: true
      t.double :sam
      t.string :maquina
      t.string :calibre_aguja
      t.string :ppp
      t.string :margen_costura
      t.string :guia_accesorios
      t.text :observaciones
      t.string :imagen
      t.references :info, index: true

      t.timestamps
    end
  end
end
