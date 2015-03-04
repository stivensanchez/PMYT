class Treatment < ActiveRecord::Base
  belongs_to :info
  #Paginacion y Buscador
  def self.search(search, page)
      where(['upper(proceso) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("proceso")
end
end
