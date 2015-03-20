class AddAttachmentAdministradorToManual < ActiveRecord::Migration
   def self.up
    add_column :manuals, :administrador_file_name, :string
    add_column :manuals, :administrador_content_type, :string
    add_column :manuals, :administrador_file_size, :integer
    add_column :manuals, :administrador_updated_at, :datetime
  end
  
  def self.down
    add_column :manuals, :administrador_file_name
    add_column :manuals, :administrador_content_type
    add_column :manuals, :administrador_file_size
    add_column :manuals, :administrador_updated_at
  end
end
