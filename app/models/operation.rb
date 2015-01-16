class Operation < ActiveRecord::Base
  
 has_attached_file :image, styles: { medium: '60000000x60000000>', thumb: '10000000x1000000000>' }
  
 has_attached_file :video
  
 do_not_validate_attachment_file_type :video
  
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "image/flv"]
  
  has_many :developments
  belongs_to :maquina
  belongs_to :modulo
end
