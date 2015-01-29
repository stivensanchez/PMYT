class CreateNivelations < ActiveRecord::Migration
  def change
    create_table :nivelations do |t|
      t.references :oper, index: true
      t.references :operation, index: true
      t.string :desempeño
      t.text :comentario

      t.timestamps
    end
  end
end
