class CreateTerminations < ActiveRecord::Migration
  def change
    create_table :terminations do |t|
      t.references :operation, index: true
      t.string :xamp
      t.string :maquina
      t.string :calibre_aguja
      t.string :ppp
      t.string :margen_costura
      t.string :guia_accesorios_string
      t.text :observaciones

      t.timestamps
    end
  end
end
