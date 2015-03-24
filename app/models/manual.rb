class Manual < ActiveRecord::Base
     # Manual Administrador
     attr_accessor :administrador_file_manual
     has_attached_file :administrador, :default_url =>"/manuals"
     do_not_validate_attachment_file_type :administrador
     # Manual Instructor
     attr_accessor :instructor_file_manual
     has_attached_file :instructor, :default_url =>"/manuals"
     do_not_validate_attachment_file_type :instructor
     # Manual Operaria
     attr_accessor :operaria_file_manual
     has_attached_file :operaria, :default_url =>"/manuals"
     do_not_validate_attachment_file_type :operaria
end
