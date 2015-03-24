class AddAttachmentOperariaToManual < ActiveRecord::Migration
   def self.up
    add_column :manuals, :operaria_file_name, :string
    add_column :manuals, :operaria_content_type, :string
    add_column :manuals, :operaria_file_size, :integer
    add_column :manuals, :operaria_updated_at, :datetime
  end
  
  def self.down
    add_column :manuals, :operaria_file_name
    add_column :manuals, :operaria_content_type
    add_column :manuals, :operaria_file_size
    add_column :manuals, :operaria_updated_at
  end
end
