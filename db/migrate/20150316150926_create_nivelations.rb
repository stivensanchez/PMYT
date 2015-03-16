class CreateNivelations < ActiveRecord::Migration
  def change
    create_table :nivelations do |t|
      t.string :sam
      t.string :tiempo_real
      t.string :desempeño
      t.string :comentario
      t.references :oper, index: true
      t.references :development, index: true
      t.references :ensamble, index: true
      t.references :termination, index: true

      t.timestamps
    end
  end
end
