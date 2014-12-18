class CreatePrendas < ActiveRecord::Migration
  def change
    create_table :prendas do |t|
      t.string :nombre
      t.string :cantidad
      t.text :observaciones
      t.references :info, index: true

      t.timestamps
    end
  end
end
