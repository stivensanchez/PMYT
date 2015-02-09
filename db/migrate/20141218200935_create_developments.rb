class CreateDevelopments < ActiveRecord::Migration
  def change
    create_table :developments do |t|
      t.references :operation, index: true
      t.double :sam
      t.string :maquina
      t.string :calibre_aguja
      t.string :ppp
      t.string :margen_costura
      t.string :guia_accesorios
      t.text :observaciones
      t.references :oper, index: true
      t.references :info, index: true

      t.timestamps
    end
  end
end
