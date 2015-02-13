class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.string :producto
      t.string :lote
      t.string :cant
      t.string :cant001
      t.string :cant002
      t.string :cant003
      t.string :cant004
      t.string :cant005
      t.string :cant006
      t.string :cant007
      t.string :und
      t.string :und001
      t.string :und002
      t.string :und003
      t.string :und004
      t.string :und005
      t.string :und006
      t.string :und007
      t.string :detalle
      t.string :detalle001
      t.string :detalle002
      t.string :detalle003
      t.string :detalle004
      t.string :detalle005
      t.string :detalle006
      t.string :detalle007
      t.string :vr_unit
      t.string :vr_unit001
      t.string :vr_unit002
      t.string :vr_unit003
      t.string :vr_unit004
      t.string :vr_unit005
      t.string :vr_unit006
      t.string :vr_unit007
      t.string :vr_total
      t.string :vr_total001
      t.string :vr_total002
      t.string :vr_total003
      t.string :vr_total004
      t.string :vr_total005
      t.string :vr_total006
      t.string :vr_total007
      t.string :cant2
      t.string :cant2001
      t.string :cant2002
      t.string :cant2003
      t.string :cant2004
      t.string :cant2005
      t.string :cant2006
      t.string :cant2007
      t.string :und2
      t.string :und2001
      t.string :und2002
      t.string :und2003
      t.string :und2004
      t.string :und2005
      t.string :und2006
      t.string :und2007
      t.string :detalle2
      t.string :detalle2001
      t.string :detalle2002
      t.string :detalle2003
      t.string :detalle2004
      t.string :detalle2005
      t.string :detalle2006
      t.string :detalle2007
      t.string :vr_unit2
      t.string :vr_unit2001
      t.string :vr_unit2002
      t.string :vr_unit2003
      t.string :vr_unit2004
      t.string :vr_unit2005
      t.string :vr_unit2006
      t.string :vr_unit2007
      t.string :vr_total2
      t.string :vr_total2001
      t.string :vr_total2002
      t.string :vr_total2003
      t.string :vr_total2004
      t.string :vr_total2005
      t.string :vr_total2006
      t.string :vr_total2007
      t.string :t_costo_mat
      t.string :t_costo_mano
      t.string :cost_to_prod
      t.string :cost_uni_prod
      t.references :ficha, index: true

      t.timestamps
    end
  end
end
