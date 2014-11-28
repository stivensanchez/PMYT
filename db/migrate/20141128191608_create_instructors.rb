class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.references :tipo_doc, index: true
      t.string :numero_doc
      t.string :nombres
      t.string :apellidos
      t.string :correo
      t.string :telefono
      t.references :modulo, index: true

      t.timestamps
    end
  end
end
