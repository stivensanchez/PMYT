class Nivelation < ActiveRecord::Base

 
  belongs_to :oper
  belongs_to :operation_id
  has_many :developments 
  belongs_to :ensamble
  belongs_to :termination
  after_save :touch_subject
 def touch_subject 

end
  #Paginacion y Buscador
  def self.search(search, page)
      where(['upper(comentario) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("oper_id")
  end

end
