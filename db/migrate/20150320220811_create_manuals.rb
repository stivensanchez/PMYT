class CreateManuals < ActiveRecord::Migration
  def change
    create_table :manuals do |t|
      t.string :administrador
      t.string :instructor
      t.string :operaria

      t.timestamps
    end
  end
end
