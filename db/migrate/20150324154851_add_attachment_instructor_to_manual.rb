class AddAttachmentInstructorToManual < ActiveRecord::Migration
   def self.up
    add_column :manuals, :instructor_file_name, :string
    add_column :manuals, :instructor_content_type, :string
    add_column :manuals, :instructor_file_size, :integer
    add_column :manuals, :instructor_updated_at, :datetime
  end
  
  def self.down
    add_column :manuals, :instructor_file_name
    add_column :manuals, :instructor_content_type
    add_column :manuals, :instructor_file_size
    add_column :manuals, :instructor_updated_at
  end
end
