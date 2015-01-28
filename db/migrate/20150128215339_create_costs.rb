class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.string :producto
      t.string :lote
      t.string :cant
      t.string :und
      t.string :detalle
      t.string :vr_unit
      t.string :vr_total
      t.string :cant2
      t.string :und2
      t.string :detalle2
      t.string :vr_unit2
      t.string :vr_total2
      t.string :t_costo_mat
      t.string :t_costo_mano
      t.string :cost_to_prod
      t.string :cost_uni_prod
      t.references :ficha, index: true

      t.timestamps
    end
  end
end
