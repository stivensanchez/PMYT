class CreateNivelations < ActiveRecord::Migration
  def change
    create_table :nivelations do |t|
      t.references :oper, index: true
      t.string :desempeño
      t.string :comentario

      t.timestamps
    end
  end
end
