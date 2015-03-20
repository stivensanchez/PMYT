class Manual < ActiveRecord::Base
     attr_accessor :administrador_file_manual
     has_attached_file :administrador, :default_url =>"/manuals"
     do_not_validate_attachment_file_type :administrador
end
