class Comentario < ApplicationRecord
  belongs_to :Filme

  default_scope {where(approved:false)}

 validates :filme, :comentario, presence: true
end
