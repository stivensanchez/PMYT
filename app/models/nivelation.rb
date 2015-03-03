class Nivelation < ActiveRecord::Base
  belongs_to :oper
  belongs_to :operation_id
  has_many :developments
  
  #Paginacion y Buscador
  def self.search(search, page)
      where(['upper(comentario) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("oper_id")
  end
 
end
