class CreateOpers < ActiveRecord::Migration
  def change
    create_table :opers do |t|
      t.references :tipo_doc, index: true
      t.string :numero_documento
      t.string :nombre
      t.string :apellido
      t.string :correo
      t.string :telefono
      t.references :group, index: true

      t.timestamps
    end
  end
end
