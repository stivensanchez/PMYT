class CreateMeasures < ActiveRecord::Migration
  def change
    create_table :measures do |t|
      t.string :medidas
      t.string :tolerancia
      t.references :info, index: true

      t.timestamps
    end
  end
end
