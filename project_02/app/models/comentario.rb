class Comentario < ApplicationRecord
  belongs_to :Filme

 validates :comentario, presence: true
end
