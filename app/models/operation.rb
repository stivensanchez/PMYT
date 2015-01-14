class Operation < ActiveRecord::Base
 has_attached_file :image, styles: { medium: '600x600>', thumb: '0x0>' }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  belongs_to :maquina
  belongs_to :modulo
end
