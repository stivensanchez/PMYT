class CreateMeasures < ActiveRecord::Migration
  def change
    create_table :measures do |t|
      t.string :medidas
      t.string :tolerancia
      t.string :cm 
      t.string :talla
      t.references :info, index: true

      t.timestamps
    end
  end
end
