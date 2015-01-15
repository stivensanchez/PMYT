class CreateEnsambles < ActiveRecord::Migration
  def change
    create_table :ensambles do |t|
      t.references :operation, index: true
      t.double :sam
      t.string :maquina
      t.string :calibre_aguja
      t.string :ppp
      t.string :margen_costura
      t.string :guia_accesorios
      t.text :observaciones

      t.timestamps
    end
  end
end
