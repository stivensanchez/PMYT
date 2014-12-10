class CreateFichas < ActiveRecord::Migration
  def change
    create_table :fichas do |t|
      t.string :referencia
      t.string :nombre

      t.timestamps
    end
  end
end
