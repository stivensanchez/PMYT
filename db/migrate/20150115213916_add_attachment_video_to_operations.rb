class AddAttachmentVideoToOperations < ActiveRecord::Migration
  def self.up
    add_column :operations, :video_file_name, :string
    add_column :operations, :video_content_type, :string
    add_column :operations, :video_file_size, :integer
    add_column :operations, :video_updated_at, :datetime
  end
  
  def self.down
    add_column :operations, :video_file_name
    add_column :operations, :video_content_type
    add_column :operations, :video_file_size
    add_column :operations, :video_updated_at
  end
end
