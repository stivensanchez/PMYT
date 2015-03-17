class Nivelation < ActiveRecord::Base
  belongs_to :oper
  belongs_to :operation_id
  belongs_to :development 
  belongs_to :ensamble
  belongs_to :termination
  before_update :development
  before_update :ensamble
  before_update :termination
  
  
  def cal
    Development.skip_callback(:save, :before, :set_updated_at)
    Development.update_attributes(attributes)
    Development.set_callback(:save, :before, :set_updated_at)
  end
  
  #Paginacion y Buscador
  def self.search(search, page)
      where(['upper(comentario) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("oper_id")
  end
 
end
